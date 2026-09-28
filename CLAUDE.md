# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

WinPorta is a Delphi 10.4 Sydney (VCL, Win32) gate/truck-scale weighing application with a MySQL backend. It handles weighing in and out, prints weighing tickets, captures camera images, drives traffic lights and barriers through a PLC, and reports to EKAER. Identifiers, comments, UI text and commit messages are in Hungarian. Glossary:
- mérlegjegy / mjegy: weighing ticket
- mérés: measurement
- rendszám: licence plate
- bruttó / tára / nettó: gross / tare / net
- göngyöleg: packaging deduction
- levonás: deduction
- partner, termék: partner, product
- irány BE/KI: direction in/out
- díjszabás: tariff
- készlet: stock
- felhasználó: user
- jog: permission

Sibling folders under `..\` (Rakamaz, Cemix, Multiporta, …) are separate customer variants and are not part of this repo.

## Build

- Open `WinPorta.dproj` (or `WinPortaGroup.groupproj`, which also contains `ENG\WinPorta_ENG.bdsproj`) in RAD Studio 10.4 and build Win32.
- Command line:
  ```
  cmd /c "call ""C:\Program Files (x86)\Embarcadero\Studio\21.0\bin\rsvars.bat"" && msbuild WinPorta.dproj /t:Build /p:Config=Release /p:Platform=Win32"
  ```
  Output goes to `Win32\<Config>\`.
- Required installed packages: FireDAC MySQL, FastReport (frx27), JVCL/JCL, TsiLang (siComp), Indy, ICS, CPortLib and DelphiModbus.
- Some units are compiled from outside the repo: `..\..\Egyeb\EKAER\*.pas` (EKAER) and `..\..\Egyeb\MySQLDBExport\DmDbMentU.pas`. These paths must exist.
- There are no automated tests and no linter. Verify changes by compiling.

## Architecture

- `WinPorta.dpr` auto-creates every data module and form at startup. There is no lazy creation, so global form variables (`FoF`, `MjegyF`, …) are always valid.
- `AU.pas` (`TAF`, global `AF`/`aF`) is the central data module. Most business logic lives here, along with:
  - the FireDAC connection `Kapcs` and shared queries
  - FastReport components
  - ini loading
  - user rights (`joga`)
  - helper routines used by all forms
- `FoU.pas` (`TFoF`) is the main operator screen. It handles weighing flow, scale readings, cameras and lights.
- Configuration has two layers:
  - `porta_beallit.ini` sits next to the exe and holds per-machine settings: DB connection, `[ALAP] Merlegjegy_tipus`, hardware. It is gitignored. `INIk\` holds sample ini files.
  - The `cfg` DB table holds shared settings, accessed through `TAF.cfg_kezel(magyarazat, csoport, tulajdonsag, tipus, ertek, modosit)`, which creates the key with its default value if it is missing.
    - Unless the key's group is switched off in the `cfg_csoport` table: then the key is not created and the code default is returned. Known groups are listed in `cfg_csoportok` in `AU.pas`, and a new group must be added there. Groups are selected on first install and later from Szoftver alapbeállításai → Csoportok (`CfgCsoportU`).
    - Every key read is recorded, and `CfgNemHasznaltU` lists and deletes the `cfg` rows the running version never read.
- DB schema:
  - `SQL_text.pas` holds `modSQL[1..maxSQL]`. Script 1 creates the database (used by `my_sqlU`).
  - At every startup, `TAF.modok_vegrehajt` runs scripts 2..maxSQL. Every script must therefore be idempotent (`CREATE TABLE IF NOT EXISTS`, `ADD COLUMN IF NOT EXISTS`, …).
  - To change the schema, append a new entry and increment `maxSQL`.
  - `:kodolas` (collation) and `:adatbazis` are placeholders that get replaced at run time.
  - A comment in the file says that ticket changes must also be applied to the `nyitbe` and `modositott_merlegjegy` tables.
- Weighing tickets and reports:
  - FastReport `.fr3` files are embedded as RCDATA via `WinPortaResource.rc` and `RcItem` entries in `WinPorta.dproj`.
  - `TAF.merlegjegy_tipus_betoltese` loads the resource `Rep_<Merlegjegy_tipus>`. Lists use `Mjegylista_<n>`. There are also the special `umwelt*` and `CleanWay_BE/KI` resources.
  - To add a customer ticket layout: add the `.fr3` to the .rc and the dproj under the next `Rep_N` name, then select it via the ini.
  - Report objects with `Tag=1` or `Tag=2` are toggled at runtime (agricultural fields and weight deduction).
- Localization:
  - TsiLang (`languages.sil` / `languages.csv`, the `siLang_*` components on forms) handles UI text.
  - Message strings are `resourcestring`s in `UzenetekU.pas`. Add new user-facing messages there rather than inlining literals.
  - `ENG\` holds the English resource project, and `reinit.pas` handles runtime language switching.
- Hardware:
  - `portU`: scale and display serial ports
  - `PLC_COMU` with `IdModbusClient`/`Modbus*`: PLC over Modbus TCP
  - `nagykamU` and `KepekU`: IP cameras (images go to `Cam1`/`A`)
  - `Hardver_beallU`: device settings (limits `Maxmerleg`, `Maxkamera` and `Maxinfra` are in `AU.pas`)
- Integrations:
  - `SOAP\`: SOAP client
  - `FTP\ftpDlU`: auto-update/download
  - EKAER units: customs reporting
  - `LibreExcelU`: export

## Conventions and gotchas

- **Encoding:** most `.pas`/`.dfm` files are Windows-1250 without a BOM. `SQL_text.pas` is UTF-8 with a BOM. Preserve each file's encoding and its CRLF line endings when editing, or Hungarian characters (ő, ű, …) will be corrupted.
- **Naming:** units are named `XxxU.pas` and their forms `TXxxF`/`XxxF`.
- **Versioning:** each release bumps `VerInfo_Build`/`FileVersion` in `WinPorta.dproj` (currently 1.0.0.189). Commits are typically titled `Ver.:1.NNN <Hungarian description>`. `WinPorta.dproj` is gitignored and not tracked, so its changes (new units, RcItems, version) are not versioned. `WinPorta.dpr` and `WinPortaResource.rc` are tracked.
- **Ignored folders:** do not edit `__history\`, `__recovery\`, `Win32\`, or runtime data folders such as `Adatok\`, `LOG\`, `SQL_LOG\`, `Cam1\` and `Merlegjegy_PDF\`.
