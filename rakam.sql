-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Szerver verzió:               10.5.9-MariaDB - mariadb.org binary distribution
-- Szerver OS:                   Win64
-- HeidiSQL Verzió:              11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Adatbázis struktúra mentése a rakamaz.
CREATE DATABASE IF NOT EXISTS `rakamaz` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `rakamaz`;

-- Struktúra mentése tábla rakamaz. felhasz
CREATE TABLE IF NOT EXISTS `felhasz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nev` varchar(50) DEFAULT NULL,
  `jelszo` varchar(32) DEFAULT NULL,
  `aktiv` int(11) DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ID_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Tábla adatainak mentése rakamaz.felhasz: ~2 rows (hozzávetőleg)
/*!40000 ALTER TABLE `felhasz` DISABLE KEYS */;
INSERT INTO `felhasz` (`id`, `nev`, `jelszo`, `aktiv`) VALUES
	(1, 'Programozó', '7c1f90bd9bdc70cc059640a7a6209389', 1),
	(2, 'Rendszergazda', 'e3afed0047b08059d0fada10f400c1e5', 1);
/*!40000 ALTER TABLE `felhasz` ENABLE KEYS */;

-- Struktúra mentése tábla rakamaz. forgalom
CREATE TABLE IF NOT EXISTS `forgalom` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Datum` date DEFAULT curdate(),
  `Ido` time DEFAULT curtime(),
  `Rendszam` varchar(20) DEFAULT NULL,
  `Rendszam2` varchar(20) DEFAULT NULL,
  `Irany` varchar(2) DEFAULT NULL,
  `Kod` varchar(10) DEFAULT NULL,
  `Nev` varchar(50) DEFAULT NULL,
  `Szallitolev` varchar(20) DEFAULT NULL,
  `Tomeg` int(11) DEFAULT NULL,
  `Kepnev1` varchar(180) DEFAULT NULL,
  `Kepnev2` varchar(180) DEFAULT NULL,
  `Parositott` tinyint(4) DEFAULT 0,
  `Nem_Kell` tinyint(4) DEFAULT 0,
  `P_ID` int(11) DEFAULT 0,
  `P_KOD` varchar(15) DEFAULT NULL,
  `P_NEV` varchar(80) DEFAULT NULL,
  `P_cim1` varchar(50) DEFAULT NULL,
  `p_cim2` varchar(50) DEFAULT NULL,
  `mjegy` varchar(20) DEFAULT '',
  `kezi` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Tábla adatainak mentése rakamaz.forgalom: ~17 rows (hozzávetőleg)
/*!40000 ALTER TABLE `forgalom` DISABLE KEYS */;
INSERT INTO `forgalom` (`ID`, `Datum`, `Ido`, `Rendszam`, `Rendszam2`, `Irany`, `Kod`, `Nev`, `Szallitolev`, `Tomeg`, `Kepnev1`, `Kepnev2`, `Parositott`, `Nem_Kell`, `P_ID`, `P_KOD`, `P_NEV`, `P_cim1`, `p_cim2`, `mjegy`, `kezi`) VALUES
	(1, '2021-08-26', '15:03:53', 'KTZ650', '', '-', '0', NULL, '0', 80, '', '', 0, 0, 0, NULL, NULL, NULL, NULL, '', NULL),
	(2, '2021-08-26', '15:04:35', 'KTZ650', '', '-', '0', NULL, '0', 0, '', '', 0, 0, 0, NULL, NULL, NULL, NULL, '', NULL),
	(3, '2021-08-26', '15:20:59', 'AAA111', 'AAA111', '-', '0', NULL, '0', 12000, '', '', 0, 0, 0, NULL, NULL, NULL, NULL, '', NULL),
	(4, '2021-08-26', '15:21:22', 'AAA111', 'AAA111', '-', '0', NULL, '0', 1000, '', '', 0, 0, 0, NULL, NULL, NULL, NULL, '', NULL),
	(5, '2021-08-30', '08:49:21', 'AAA111', '', '-', '0', NULL, '0', 12000, '', '', 1, 0, 0, NULL, NULL, NULL, NULL, '2021/000020', NULL),
	(6, '2021-08-30', '08:50:22', 'AAA111', '', '-', '0', NULL, '0', 2000, '', '', 1, 0, 0, NULL, NULL, NULL, NULL, '2021/000020', NULL),
	(7, '2021-08-30', '10:52:33', 'AAA111', '', '-', '0', NULL, '0', 20000, '', '', 1, 0, 0, NULL, NULL, NULL, NULL, '2021/000021', 1),
	(8, '2021-08-30', '10:53:08', 'AAA111', '', '-', '0', NULL, '0', 10000, '', '', 1, 0, 0, NULL, NULL, NULL, NULL, '2021/000021', 1),
	(9, '2021-08-30', '14:27:40', 'AAA111', 'AAA111', '-', '0', NULL, '0', 20000, '', '', 1, 0, 0, NULL, NULL, NULL, NULL, '2021/000022', 1),
	(10, '2021-08-30', '14:27:58', 'AAA111', '', '-', '0', NULL, '0', 10000, '', '', 1, 0, 0, NULL, NULL, NULL, NULL, '2021/000022', 1),
	(11, '2021-08-31', '13:33:24', '12345', '', '-', '0', NULL, '0', 0, '', '', 0, 0, 0, NULL, NULL, NULL, NULL, '', 0),
	(12, '2021-08-31', '13:34:13', '12345', '', '-', '0', NULL, '0', 0, '', '', 0, 0, 0, NULL, NULL, NULL, NULL, '', 0),
	(13, '2021-08-31', '14:22:40', 'FTJ666', '', '-', '0', NULL, '0', 80, '', '', 1, 0, 0, NULL, NULL, NULL, NULL, '2021/000023', 0),
	(14, '2021-08-31', '14:24:51', 'FTJ666', '', '-', '0', NULL, '0', 40, '', '', 1, 0, 0, NULL, NULL, NULL, NULL, '2021/000023', 0),
	(15, '2021-08-31', '14:44:56', 'KKT111', 'KKT111', '-', '0', NULL, '0', 16540, '', '', 0, 0, 0, NULL, NULL, NULL, NULL, '', 1),
	(16, '2021-08-31', '14:46:15', 'KKT111', 'KKT111', '-', '0', NULL, '0', 4560, '', '', 0, 0, 0, NULL, NULL, NULL, NULL, '', 1),
	(17, '2021-09-01', '07:33:30', 'AAA111', '', '-', '0', NULL, '0', 12000, '', '', 0, 0, 0, NULL, NULL, NULL, NULL, '', 1),
	(18, '2021-09-01', '07:33:47', 'AAA111', '', '-', '0', NULL, '0', 8000, '', '', 0, 0, 0, NULL, NULL, NULL, NULL, '', 1);
/*!40000 ALTER TABLE `forgalom` ENABLE KEYS */;

-- Struktúra mentése tábla rakamaz. jogok
CREATE TABLE IF NOT EXISTS `jogok` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_id` int(11) NOT NULL,
  `j1` int(11) DEFAULT 0,
  `j2` int(11) DEFAULT 0,
  `j3` int(11) DEFAULT 0,
  `j4` int(11) DEFAULT 0,
  `j5` int(11) DEFAULT 0,
  `j6` int(11) DEFAULT 0,
  `j7` int(11) DEFAULT 0,
  `j8` int(11) DEFAULT 0,
  `j9` int(11) DEFAULT 0,
  `j10` int(11) DEFAULT 0,
  `j11` int(11) DEFAULT 0,
  `j12` int(11) DEFAULT 0,
  `j13` int(11) DEFAULT 0,
  `j14` int(11) DEFAULT 0,
  `j15` int(11) DEFAULT 0,
  `j16` int(11) DEFAULT 0,
  `j17` int(11) DEFAULT 0,
  `j18` int(11) DEFAULT 0,
  `j19` int(11) DEFAULT 0,
  `j20` int(11) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `f_id_UNIQUE` (`f_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Tábla adatainak mentése rakamaz.jogok: ~2 rows (hozzávetőleg)
/*!40000 ALTER TABLE `jogok` DISABLE KEYS */;
INSERT INTO `jogok` (`id`, `f_id`, `j1`, `j2`, `j3`, `j4`, `j5`, `j6`, `j7`, `j8`, `j9`, `j10`, `j11`, `j12`, `j13`, `j14`, `j15`, `j16`, `j17`, `j18`, `j19`, `j20`) VALUES
	(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
	(2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `jogok` ENABLE KEYS */;

-- Struktúra mentése tábla rakamaz. keszlet
CREATE TABLE IF NOT EXISTS `keszlet` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `t_id` int(11) unsigned NOT NULL DEFAULT 0 COMMENT 'termék id',
  `tarolo_id` int(11) DEFAULT 0 COMMENT 'tároló id',
  `partner_id` int(11) DEFAULT 0 COMMENT 'partner id',
  `f_id` int(11) DEFAULT NULL COMMENT 'felhasználó id',
  `menny` decimal(12,2) DEFAULT NULL,
  `modositva` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'automatikusan beirja az időpontot updaten is ',
  `tort` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Tábla adatainak mentése rakamaz.keszlet: ~2 rows (hozzávetőleg)
/*!40000 ALTER TABLE `keszlet` DISABLE KEYS */;
INSERT INTO `keszlet` (`id`, `t_id`, `tarolo_id`, `partner_id`, `f_id`, `menny`, `modositva`, `tort`) VALUES
	(1, 3, 3, 4, 2, 19800.00, '2021-08-30 14:29:10', 0),
	(2, 3, 3, 5, 2, 9603.00, '2021-08-30 10:54:37', 0),
	(3, 2, 1, 25, 2, 40.00, '2021-08-31 14:32:12', 0);
/*!40000 ALTER TABLE `keszlet` ENABLE KEYS */;

-- Struktúra mentése eljárás rakamaz. keszletezes
DELIMITER //
CREATE PROCEDURE `keszletezes`(
	IN `p_id_p` INT,
	IN `t_id_p` INT,
	IN `tar_id_p` INT,
	IN `tort_p` TINYINT,
	IN `f_id_p` INT,
	IN `menny_p` DECIMAL(12,2)
)
BEGIN
DECLARE c INT(11);
DECLARE aid INT(11);
SELECT id,COUNT(ID) FROM keszlet WHERE partner_id=p_id_p AND t_id=t_id_p AND tarolo_id=tar_id_p AND tort=tort_p INTO aid,c;
IF (c=0) THEN INSERT INTO keszlet (partner_id,t_id,tarolo_id,f_id,menny,tort)VALUES(p_id_p,t_id_p,tar_id_p,f_id_p,menny_p,tort_p);
ELSE UPDATE keszlet SET Menny=Menny+menny_p WHERE id=aid;
END IF;
END//
DELIMITER ;

-- Struktúra mentése nézet rakamaz. keszlet_nezet
-- Ideiglenes tábla létrehozása a VIEW függőségi hibák lekezelésére
CREATE TABLE `keszlet_nezet` (
	`Term_id` INT(11) UNSIGNED NOT NULL COMMENT 'termék id',
	`Term_kod` VARCHAR(30) NOT NULL COLLATE 'utf8mb4_general_ci',
	`Term_nev` VARCHAR(100) NOT NULL COLLATE 'utf8mb4_general_ci',
	`Tarolo_id` INT(11) NULL COMMENT 'tároló id',
	`Tarolo_nev` VARCHAR(50) NOT NULL COLLATE 'utf8_general_ci',
	`partner_id` INT(11) NULL COMMENT 'partner id',
	`Partner_kod` VARCHAR(15) NULL COLLATE 'utf8mb4_general_ci',
	`Partner_nev` VARCHAR(80) NULL COLLATE 'utf8mb4_general_ci',
	`felhasznalo_id` INT(11) NULL COMMENT 'felhasználó id',
	`Felhasznalo_nev` VARCHAR(50) NULL COLLATE 'utf8mb4_general_ci',
	`menny` DECIMAL(12,2) NULL,
	`modositva` DATETIME NULL COMMENT 'automatikusan beirja az időpontot updaten is ',
	`tort` TINYINT(1) NULL
) ENGINE=MyISAM;

-- Struktúra mentése tábla rakamaz. merlegelok
CREATE TABLE IF NOT EXISTS `merlegelok` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Nev` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Nev` (`Nev`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Tábla adatainak mentése rakamaz.merlegelok: ~4 rows (hozzávetőleg)
/*!40000 ALTER TABLE `merlegelok` DISABLE KEYS */;
INSERT INTO `merlegelok` (`ID`, `Nev`) VALUES
	(2, 'Jung György'),
	(1, 'Pappné Csigai Erzsébet'),
	(5, 'Prokop Péter'),
	(4, 'Tóth Lászlóné'),
	(3, 'Veigliné Maros Gabriella');
/*!40000 ALTER TABLE `merlegelok` ENABLE KEYS */;

-- Struktúra mentése tábla rakamaz. merlegjegy
CREATE TABLE IF NOT EXISTS `merlegjegy` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Sorszam` varchar(20) DEFAULT NULL,
  `Ev_ssz` int(11) DEFAULT NULL,
  `Eazon` varchar(30) DEFAULT NULL,
  `Storno` varchar(15) DEFAULT NULL,
  `Rendszam` varchar(20) DEFAULT NULL,
  `Rendszam2` varchar(20) DEFAULT NULL,
  `P_ID` int(11) DEFAULT NULL,
  `P_Kod` varchar(15) DEFAULT NULL,
  `P_Nev` varchar(80) DEFAULT NULL,
  `P_Cim` varchar(100) DEFAULT NULL,
  `Termek_ID` int(11) DEFAULT NULL,
  `Termek_Kod` varchar(30) DEFAULT NULL,
  `Termek_Nev` varchar(100) DEFAULT NULL,
  `Termek_afa` decimal(12,2) DEFAULT 0.00,
  `termek_ar` decimal(12,2) DEFAULT 0.00,
  `Szallitolev` varchar(20) DEFAULT NULL,
  `Megjegyzes` varchar(200) DEFAULT NULL,
  `Tomegbe` int(11) DEFAULT NULL,
  `Tomegki` int(11) DEFAULT NULL,
  `Erkdatum` date DEFAULT NULL,
  `Erkido` time DEFAULT NULL,
  `Tavdatum` date DEFAULT NULL,
  `Tavido` time DEFAULT NULL,
  `Felhasznalo` varchar(50) DEFAULT NULL,
  `irany` varchar(30) DEFAULT NULL,
  `Brutto` int(11) DEFAULT NULL,
  `Tara` int(11) DEFAULT NULL,
  `Netto` int(11) DEFAULT NULL,
  `SzNetto` int(11) DEFAULT NULL,
  `merlegelo` varchar(50) DEFAULT NULL,
  `kuj` varchar(30) NOT NULL DEFAULT '',
  `ktj` varchar(30) NOT NULL DEFAULT '',
  `ekaer` varchar(30) NOT NULL DEFAULT '',
  `psz` int(11) DEFAULT 0,
  `alapnedv` decimal(12,2) DEFAULT 0.00,
  `nedv` decimal(12,2) DEFAULT 0.00,
  `tisztasag` decimal(12,2) DEFAULT 0.00,
  `tortszaz` decimal(12,2) DEFAULT 0.00,
  `feherje` decimal(12,2) DEFAULT 0.00,
  `olaj` decimal(12,2) DEFAULT 0.00,
  `esesszam` decimal(12,2) DEFAULT 0.00,
  `hekto` decimal(12,2) DEFAULT 0.00,
  `egysegtomeg` decimal(12,2) DEFAULT 0.00,
  `kerekites` tinyint(1) DEFAULT 0,
  `kukorica` tinyint(1) DEFAULT 0,
  `buzaminoseg` varchar(50) DEFAULT '',
  `mennyiseg` decimal(12,2) DEFAULT 0.00,
  `tarolasi_dij` decimal(12,2) DEFAULT 0.00,
  `szaritasi_dij` decimal(12,2) DEFAULT 0.00,
  `tisztitasi_dij` decimal(12,2) DEFAULT 0.00,
  `tarolo_id` int(11) DEFAULT 0,
  `tarolo` varchar(50) DEFAULT '''''',
  `elso_kezi` tinyint(1) DEFAULT NULL,
  `masodik_kezi` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Tábla adatainak mentése rakamaz.merlegjegy: ~21 rows (hozzávetőleg)
/*!40000 ALTER TABLE `merlegjegy` DISABLE KEYS */;
INSERT INTO `merlegjegy` (`ID`, `Sorszam`, `Ev_ssz`, `Eazon`, `Storno`, `Rendszam`, `Rendszam2`, `P_ID`, `P_Kod`, `P_Nev`, `P_Cim`, `Termek_ID`, `Termek_Kod`, `Termek_Nev`, `Termek_afa`, `termek_ar`, `Szallitolev`, `Megjegyzes`, `Tomegbe`, `Tomegki`, `Erkdatum`, `Erkido`, `Tavdatum`, `Tavido`, `Felhasznalo`, `irany`, `Brutto`, `Tara`, `Netto`, `SzNetto`, `merlegelo`, `kuj`, `ktj`, `ekaer`, `psz`, `alapnedv`, `nedv`, `tisztasag`, `tortszaz`, `feherje`, `olaj`, `esesszam`, `hekto`, `egysegtomeg`, `kerekites`, `kukorica`, `buzaminoseg`, `mennyiseg`, `tarolasi_dij`, `szaritasi_dij`, `tisztitasi_dij`, `tarolo_id`, `tarolo`, `elso_kezi`, `masodik_kezi`) VALUES
	(1, '2021/000001', 1, '20210826 15220911000', '', 'AAA111', 'AAA111', 2, '00002', 'Rakamazi Almatermelői, Értékesítő Szövetkezet', '4465 Rakamaz Arany János út 108', 1, '00001', 'Búza', 0.00, 0.00, '', '', 11000, 0, '2021-08-26', '15:20:59', '2021-08-26', '15:21:22', 'Rendszergazda', 'Beszállítás', 12000, 1000, 11000, 11000, 'Jung György', '', '', '', 0, 13.00, 13.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 0, 0, 'Takarmány', 11000.00, 0.00, 0.00, 0.00, 1, 'Léüzem', NULL, NULL),
	(2, '2021/000002', 2, '20210826 15221311000', '', 'AAA111', 'AAA111', 2, '00002', 'Rakamazi Almatermelői, Értékesítő Szövetkezet', '4465 Rakamaz Arany János út 108', 1, '00001', 'Búza', 0.00, 0.00, '', '', 11000, 0, '2021-08-26', '15:20:59', '2021-08-26', '15:21:22', 'Rendszergazda', 'Beszállítás', 12000, 1000, 11000, 11000, 'Jung György', '', '', '', 0, 13.00, 13.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 0, 0, 'Takarmány', 11000.00, 0.00, 0.00, 0.00, 1, 'Léüzem', NULL, NULL),
	(3, '2021/000003', 3, '20210826 15345211000', 'STORNO', 'AAA111', 'AAA111', 5, '00005', 'Pirint Béla', '4465 Rakamaz Ady út', 2, '00002', 'Alma', 0.00, 0.00, '', '', 11000, 0, '2021-08-26', '15:20:59', '2021-08-26', '15:21:22', 'Rendszergazda', 'Beszállítás', 12000, 1000, 11000, 11000, 'Jung György', '', '', '', 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 0, 0, 'Takarmány', 11000.00, 0.00, 0.00, 0.00, 1, 'Léüzem', NULL, NULL),
	(4, '2021/000004', 4, '20210826 15441811000', '', 'AAA111', 'AAA111', 1, '00001', 'Rakamazi Növénytermesztő Kft', '4465 Rakamaz Arany János út 108', 1, '00001', 'Búza', 0.00, 0.00, '', '', 11000, 0, '2021-08-26', '15:20:59', '2021-08-26', '15:21:22', 'Rendszergazda', 'Beszállítás', 12000, 1000, 11000, 10780, 'Jung György', '', '', '', 0, 13.00, 15.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 0, 0, 'Takarmány', 11000.00, 0.00, 0.00, 0.00, 3, 'Szárító I', NULL, NULL),
	(5, '2021/000005', 5, '20210826 15471211000', '', 'AAA111', 'AAA111', 1, '00001', 'Rakamazi Növénytermesztő Kft', '4465 Rakamaz Arany János út 108', 1, '00001', 'Búza', 0.00, 0.00, '', '', 11000, 0, '2021-08-26', '15:20:59', '2021-08-26', '15:21:22', 'Rendszergazda', 'Beszállítás', 12000, 1000, 11000, 11077, 'Jung György', '', '', '', 0, 13.00, 12.30, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 1, 0, 'Takarmány', 11000.00, 0.00, 0.00, 0.00, 3, 'Szárító I', NULL, NULL),
	(6, '2021/000006', 6, '20210826 15474911000', '', 'AAA111', 'AAA111', 1, '00001', 'Rakamazi Növénytermesztő Kft', '4465 Rakamaz Arany János út 108', 1, '00001', 'Búza', 0.00, 0.00, '1', '', 11000, 0, '2021-08-26', '15:20:59', '2021-08-26', '15:21:22', 'Rendszergazda', 'Beszállítás', 12000, 1000, 11000, 11077, 'Jung György', '', '', '', 0, 13.00, 12.30, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 1, 0, 'Takarmány', 11000.00, 0.00, 0.00, 0.00, 3, 'Szárító I', NULL, NULL),
	(7, '2021/000007', 7, '20210826 15490011000', '', 'AAA111', 'AAA111', 1, '00001', 'Rakamazi Növénytermesztő Kft', '4465 Rakamaz Arany János út 108', 1, '00001', 'Búza', 0.00, 0.00, '1', '', 11000, 0, '2021-08-26', '15:20:59', '2021-08-26', '15:21:22', 'Rendszergazda', 'Beszállítás', 12000, 1000, 11000, 11000, 'Jung György', '', '', '1', 0, 13.00, 13.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 0, 0, 'Takarmány', 11000.00, 0.00, 0.00, 0.00, 3, 'Szárító I', NULL, NULL),
	(8, '2021/000008', 8, '20210826 15491311000', '', 'AAA111', 'AAA111', 1, '00001', 'Rakamazi Növénytermesztő Kft', '4465 Rakamaz Arany János út 108', 1, '00001', 'Búza', 0.00, 0.00, '1', 's', 11000, 0, '2021-08-26', '15:20:59', '2021-08-26', '15:21:22', 'Rendszergazda', 'Beszállítás', 12000, 1000, 11000, 11000, 'Jung György', '', '', '', 0, 13.00, 13.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 1, 0, 'Takarmány', 11000.00, 0.00, 0.00, 0.00, 3, 'Szárító I', NULL, NULL),
	(9, '2021/000009', 9, '20210830 8544510000', '', 'AAA111', 'AAA111', 4, '00004', 'Filetóth János', '4465 Rakamaz Szent István út', 3, '00003', 'Napraforgó', 0.00, 0.00, '', '', 10000, 0, '2021-08-30', '08:49:21', '2021-08-30', '08:50:22', 'Rendszergazda', 'Beszállítás', 12000, 2000, 10000, 10000, 'Jung György', '', '', '', 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 0, 0, 'Takarmány', 10000.00, 0.00, 0.00, 0.00, 3, 'Szárító I', NULL, NULL),
	(10, '2021/000010', 10, '20210830 8545310000', '', 'AAA111', 'AAA111', 4, '00004', 'Filetóth János', '4465 Rakamaz Szent István út', 3, '00003', 'Napraforgó', 0.00, 0.00, '', '', 10000, 0, '2021-08-30', '08:49:21', '2021-08-30', '08:50:22', 'Rendszergazda', 'Beszállítás', 12000, 2000, 10000, 10000, 'Jung György', '', '', '', 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 0, 0, 'Takarmány', 10000.00, 0.00, 0.00, 0.00, 3, 'Szárító I', NULL, NULL),
	(11, '2021/000011', 11, '20210830 8572010000', '', 'AAA111', 'AAA111', 4, '00004', 'Filetóth János', '4465 Rakamaz Szent István út', 3, '00003', 'Napraforgó', 0.00, 0.00, '', '', 10000, 0, '2021-08-30', '08:49:21', '2021-08-30', '08:50:22', 'Rendszergazda', 'Beszállítás', 12000, 2000, 10000, 198, 'Jung György', '', '', '', 0, 7.00, 8.00, 98.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 0, 0, 'Takarmány', 10000.00, 0.00, 0.00, 0.00, 3, 'Szárító I', NULL, NULL),
	(12, '2021/000012', 12, '20210830 8574210000', '', 'AAA111', 'AAA111', 4, '00004', 'Filetóth János', '4465 Rakamaz Szent István út', 3, '00003', 'Napraforgó', 0.00, 0.00, '', '', 10000, 0, '2021-08-30', '08:49:21', '2021-08-30', '08:50:22', 'Rendszergazda', 'Beszállítás', 12000, 2000, 10000, 0, 'Jung György', '', '', '', 0, 7.00, 8.00, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 0, 0, 'Takarmány', 10000.00, 0.00, 0.00, 0.00, 3, 'Szárító I', NULL, NULL),
	(13, '2021/000013', 13, '20210830 8575010000', '', 'AAA111', 'AAA111', 4, '00004', 'Filetóth János', '4465 Rakamaz Szent István út', 3, '00003', 'Napraforgó', 0.00, 0.00, '', '', 10000, 0, '2021-08-30', '08:49:21', '2021-08-30', '08:50:22', 'Rendszergazda', 'Beszállítás', 12000, 2000, 10000, 9702, 'Jung György', '', '', '', 0, 7.00, 8.00, 2.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 0, 0, 'Takarmány', 10000.00, 0.00, 0.00, 0.00, 3, 'Szárító I', NULL, NULL),
	(14, '2021/000014', 14, '20210830 9040010000', '', 'AAA111', 'AAA111', 4, '00004', 'Filetóth János', '4465 Rakamaz Szent István út', 3, '00003', 'Napraforgó', 0.00, 0.00, '', '', 10000, 0, '2021-08-30', '08:49:21', '2021-08-30', '08:50:22', 'Rendszergazda', 'Beszállítás', 12000, 2000, 10000, 9702, 'Jung György', '', '', '', 0, 7.00, 8.00, 2.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 0, 0, 'Takarmány', 10000.00, 0.00, 0.00, 0.00, 3, 'Szárító I', NULL, NULL),
	(15, '2021/000015', 15, '20210830 9054510000', '', 'AAA111', 'AAA111', 4, '00004', 'Filetóth János', '4465 Rakamaz Szent István út', 3, '00003', 'Napraforgó', 0.00, 0.00, '', '', 10000, 0, '2021-08-30', '08:49:21', '2021-08-30', '08:50:22', 'Rendszergazda', 'Beszállítás', 12000, 2000, 10000, 9702, 'Jung György', '', '', '', 0, 7.00, 8.00, 2.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 0, 0, 'Takarmány', 10000.00, 0.00, 0.00, 0.00, 3, 'Szárító I', NULL, NULL),
	(16, '2021/000016', 16, '20210830 9460210000', '', 'AAA111', 'AAA111', 4, '00004', 'Filetóth János', '4465 Rakamaz Szent István út', 3, '00003', 'Napraforgó', 0.00, 0.00, '', '', 9702, 0, '2021-08-30', '08:49:21', '2021-08-30', '08:50:22', 'Rendszergazda', 'Beszállítás', 12000, 2000, 10000, 9702, 'Jung György', '', '', '', 0, 7.00, 8.00, 2.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 0, 0, 'Takarmány', 10000.00, 0.00, 0.00, 0.00, 3, 'Szárító I', 0, 0),
	(17, '2021/000017', 17, '20210830 9530010000', '', 'AAA111', 'AAA111', 4, '00004', 'Filetóth János', '4465 Rakamaz Szent István út', 3, '00003', 'Napraforgó', 0.00, 0.00, '', '', 9702, 0, '2021-08-30', '08:49:21', '2021-08-30', '08:50:22', 'Rendszergazda', 'Beszállítás', 12000, 2000, 10000, 9702, 'Jung György', '', '', '', 0, 7.00, 8.00, 2.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 0, 0, 'Takarmány', 10000.00, 0.00, 0.00, 0.00, 3, 'Szárító I', 0, 0),
	(18, '2021/000018', 18, '20210830 10124110000', '', 'AAA111', 'AAA111', 4, '00004', 'Filetóth János', '4465 Rakamaz Szent István út', 3, '00003', 'Napraforgó', 0.00, 0.00, '', '', 9504, 0, '2021-08-30', '08:49:21', '2021-08-30', '08:50:22', 'Rendszergazda', 'Beszállítás', 12000, 2000, 10000, 9504, 'Jung György', '', '', '', 0, 7.00, 8.00, 4.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 0, 0, 'Takarmány', 10000.00, 0.00, 0.00, 0.00, 3, 'Szárító I', 0, 0),
	(19, '2021/000019', 19, '20210830 10184910000', '', 'AAA111', 'AAA111', 4, '00004', 'Filetóth János', '4465 Rakamaz Szent István út', 3, '00003', 'Napraforgó', 0.00, 0.00, '', '', 9801, 0, '2021-08-30', '08:49:21', '2021-08-30', '08:50:22', 'Rendszergazda', 'Beszállítás', 12000, 2000, 10000, 9801, 'Jung György', '', '', '', 0, 7.00, 8.00, 1.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 0, 0, 'Takarmány', 10000.00, 0.00, 0.00, 0.00, 3, 'Szárító I', 0, 0),
	(20, '2021/000020', 20, '20210830 10302310000', '', 'AAA111', 'AAA111', 4, '00004', 'Filetóth János', '4465 Rakamaz Szent István út', 3, '00003', 'Napraforgó', 0.00, 0.00, '', '', 9603, 0, '2021-08-30', '08:49:21', '2021-08-30', '08:50:22', 'Rendszergazda', 'Beszállítás', 12000, 2000, 10000, 9603, 'Jung György', '', '', '', 1, 7.00, 8.00, 3.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 0, 0, 'Takarmány', 10000.00, 0.00, 0.00, 0.00, 3, 'Szárító I', 0, 0),
	(21, '2021/000021', 21, '20210830 10543710000', '', 'AAA111', 'AAA111', 5, '00005', 'Pirint Béla', '4465 Rakamaz Ady út', 3, '00003', 'Napraforgó', 0.00, 0.00, '', '', 9603, 0, '2021-08-30', '10:52:33', '2021-08-30', '10:53:08', 'Rendszergazda', 'Beszállítás', 20000, 10000, 10000, 9603, 'Jung György', '', '', '', 4, 7.00, 8.00, 3.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 0, 0, 'Takarmány', 9603.00, 0.00, 0.00, 0.00, 3, 'Szárító I', 1, 1),
	(22, '2021/000022', 22, '20210830 14291010000', '', 'AAA111', 'AAA111', 4, '00004', 'Filetóth János', '4465 Rakamaz Szent István út', 3, '00003', 'Napraforgó', 0.00, 0.00, '', '', 9800, 0, '2021-08-30', '14:27:40', '2021-08-30', '14:27:58', 'Rendszergazda', 'Beszállítás', 20000, 10000, 10000, 9800, 'Jung György', '', '', '', 2, 7.00, 7.00, 2.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 0, 0, 'Takarmány', 9800.00, 0.00, 0.00, 0.00, 3, 'Szárító I', 1, 1),
	(23, '2021/000023', 23, '20210831 14321240', '', 'FTJ666', 'FTJ666', 25, '00025', 'AN-NO 94 Bt. SAI', '4465 Rakamaz Béke út 19', 2, '00002', 'Alma', 0.00, 0.00, '', '', 40, 0, '2021-08-31', '14:22:40', '2021-08-31', '14:24:51', 'Rendszergazda', 'Beszállítás', 80, 40, 40, 40, 'Jung György', '', '', '', 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 0, 0, 'Takarmány', 40.00, 0.00, 0.00, 0.00, 1, 'Léüzem', 0, 0);
/*!40000 ALTER TABLE `merlegjegy` ENABLE KEYS */;

-- Struktúra mentése tábla rakamaz. parositott
CREATE TABLE IF NOT EXISTS `parositott` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Erkdatum` date DEFAULT NULL,
  `Erkido` time DEFAULT NULL,
  `Tavdatum` date DEFAULT NULL,
  `Tavido` time DEFAULT NULL,
  `Rendszam` varchar(20) DEFAULT NULL,
  `Kod` varchar(10) DEFAULT NULL,
  `Szallitolev` varchar(20) DEFAULT NULL,
  `Betomeg` int(11) DEFAULT NULL,
  `Kitomeg` int(11) DEFAULT NULL,
  `Netto` int(11) DEFAULT NULL,
  `Mjegysorszam` varchar(10) DEFAULT NULL,
  `Forgalom_be_ID` int(11) DEFAULT NULL,
  `Forgalom_ki_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Tábla adatainak mentése rakamaz.parositott: ~0 rows (hozzávetőleg)
/*!40000 ALTER TABLE `parositott` DISABLE KEYS */;
/*!40000 ALTER TABLE `parositott` ENABLE KEYS */;

-- Struktúra mentése tábla rakamaz. partner
CREATE TABLE IF NOT EXISTS `partner` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Kod` varchar(15) DEFAULT NULL,
  `Nev` varchar(80) DEFAULT NULL,
  `Irsz` varchar(10) DEFAULT NULL,
  `Telepules` varchar(30) DEFAULT NULL,
  `Kerulet` varchar(5) DEFAULT NULL,
  `Kozterulet` varchar(30) DEFAULT NULL,
  `Kozt_Jelleg` varchar(10) DEFAULT NULL,
  `Hazszam` varchar(5) DEFAULT NULL,
  `Epulet` varchar(5) DEFAULT NULL,
  `Lepcsohaz` varchar(5) DEFAULT NULL,
  `Emelet` varchar(5) DEFAULT NULL,
  `Ajto` varchar(5) DEFAULT NULL,
  `Adoszam` varchar(20) DEFAULT NULL,
  `kuj` varchar(30) NOT NULL DEFAULT '',
  `ktj` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Tábla adatainak mentése rakamaz.partner: ~38 rows (hozzávetőleg)
/*!40000 ALTER TABLE `partner` DISABLE KEYS */;
INSERT INTO `partner` (`ID`, `Kod`, `Nev`, `Irsz`, `Telepules`, `Kerulet`, `Kozterulet`, `Kozt_Jelleg`, `Hazszam`, `Epulet`, `Lepcsohaz`, `Emelet`, `Ajto`, `Adoszam`, `kuj`, `ktj`) VALUES
	(1, '00001', 'Rakamazi Növénytermesztő Kft', '4465', 'Rakamaz', NULL, 'Arany János', 'út', '108', NULL, NULL, NULL, NULL, '11249821-2-15', '', ''),
	(2, '00002', 'Rakamazi Almatermelői, Értékesítő Szövetkezet', '4465', 'Rakamaz', NULL, 'Arany János', 'út', '108', NULL, NULL, NULL, NULL, '12964091-2-15', '', ''),
	(3, '00003', 'Pózer Tamás', '4465', 'Rakamaz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
	(4, '00004', 'Filetóth János', '4465', 'Rakamaz', NULL, 'Szent István', 'út', NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
	(5, '00005', 'Pirint Béla', '4465', 'Rakamaz', NULL, 'Ady', 'út', NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
	(6, '00006', 'Rudolf Károly', '4465', 'Rakamaz', NULL, 'Hunyadi', 'út', NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
	(7, '00007', 'Veisz István SAI', '4465', 'Rakamaz', NULL, 'Arany János', 'út', '88/15', NULL, NULL, NULL, NULL, NULL, '', ''),
	(8, '00008', 'Penta Familia Kft/Ibránytej Kft. SAI', '4484', 'Ibrány', NULL, 'Liliom', 'út', '25', NULL, NULL, NULL, NULL, NULL, '', ''),
	(9, '00009', 'Somogyi Csaba SAI', '4400', 'Nyíregyháza-Oros', NULL, 'Tornácos', 'út', '74', NULL, NULL, NULL, NULL, NULL, '', ''),
	(10, '00010', 'Telekné Eperjessy Zsuzsanna SAI', '4474', 'Tiszabercel', NULL, 'Petőfi', 'út', '10', NULL, NULL, NULL, NULL, NULL, '', ''),
	(11, '00011', 'Kedves László SAI', '4465', 'Rakamaz', NULL, 'Nefelejcs', 'út', '71', NULL, NULL, NULL, NULL, NULL, '', ''),
	(12, '00012', 'Szloboda Zoltánné SAI', '4465', 'Rakamaz', NULL, 'Árpád', 'út', '27', NULL, NULL, NULL, NULL, NULL, '', ''),
	(13, '00013', 'Szloboda János SAI', '4465', 'Rakamaz', NULL, 'Béke', 'út', '20', NULL, NULL, NULL, NULL, NULL, '', ''),
	(14, '00014', 'Bacsó Mihályné SAI', '4482', 'Kótaj', NULL, 'Tisza', 'út', '15', NULL, NULL, NULL, NULL, NULL, '', ''),
	(15, '00015', 'Héri Tibor SAI', '4465', 'Rakamaz', NULL, 'Ady Endre', 'út', '20/b', NULL, NULL, NULL, NULL, NULL, '', ''),
	(16, '00016', 'Pataky Ferencné SAI', '4465', 'Rakamaz', NULL, 'Zrínyi', 'út', '11', NULL, NULL, NULL, NULL, NULL, '', ''),
	(17, '00017', 'Pásztor Szilvia SAI', '4465', 'Rakamaz', NULL, 'Bocskai', 'út', '47', NULL, NULL, NULL, NULL, NULL, '', ''),
	(18, '00018', 'Olitor Szöv./Aranyi Attila SAI', '4465', 'Rakamaz', NULL, 'Arany János', 'út', '33', NULL, NULL, NULL, NULL, NULL, '', ''),
	(19, '00019', 'Szloboda Péter SAI', '4465', 'Rakamaz', NULL, 'Dózsa György', 'út', '57', NULL, NULL, NULL, NULL, NULL, '', ''),
	(20, '00020', 'Takács Zsolt SAI', '4465', 'Rakamaz', NULL, 'Rákóczi', 'út', '16', NULL, NULL, NULL, NULL, NULL, '', ''),
	(21, '00021', 'Viola 2014 Kft. SAI', '4465', 'Rakamaz', NULL, 'Béke', 'út', '19', NULL, NULL, NULL, NULL, NULL, '', ''),
	(22, '00022', 'Penta Familia Kft. / Kállai Gábor SAI', '4465', 'Rakamaz', NULL, 'Rózsa', 'út', '2', NULL, NULL, NULL, NULL, NULL, '', ''),
	(23, '00023', 'Üveges Gábor SAI', '4450', 'Tiszalök', NULL, 'Rákóczi', 'út', '32', NULL, NULL, NULL, NULL, NULL, '', ''),
	(24, '00024', 'Takács Tamás SAI', '4465', 'Rakamaz', NULL, 'Szent István', 'út', '134', NULL, NULL, NULL, NULL, NULL, '', ''),
	(25, '00025', 'AN-NO 94 Bt. SAI', '4465', 'Rakamaz', NULL, 'Béke', 'út', '19', NULL, NULL, NULL, NULL, NULL, '', ''),
	(26, '00026', 'Zakar Tamás SAI', '4465', 'Rakamaz', NULL, 'Szent István', 'út', '87', NULL, NULL, NULL, NULL, NULL, '', ''),
	(27, '00027', 'Vajkó Csaba SAI', '4483', 'Buj', NULL, 'Hunyadi', 'út', '62', NULL, NULL, NULL, NULL, NULL, '', ''),
	(28, '00028', 'Toma László SAI', '4483', 'Buj', NULL, 'Kossuth', 'út', '24', NULL, NULL, NULL, NULL, NULL, '', ''),
	(29, '00029', 'Kállai Spisák Kinga SAI', '4465', 'Rakamaz', NULL, 'Hunyadi', 'út', '73', NULL, NULL, NULL, NULL, NULL, '', ''),
	(30, '00030', 'Tilki László SAI', '4465', 'Rakamaz', NULL, 'Bocskai', 'út', '7/b', NULL, NULL, NULL, NULL, NULL, '', ''),
	(31, '00031', 'Pásztor Ferencné SAI', '4465', 'Rakamaz', NULL, 'Ady Endre', 'út', '68', NULL, NULL, NULL, NULL, NULL, '', ''),
	(32, '00032', 'Rudolf Károly SAI', '4465', 'Rakamaz', NULL, 'Hunyadi', 'út', '29', NULL, NULL, NULL, NULL, NULL, '', ''),
	(33, '00033', 'Polyák Antal', '4465', 'Rakamaz', NULL, 'Szent István', 'út', '67', NULL, NULL, NULL, NULL, NULL, '', ''),
	(34, '00034', 'Szloboda Zoltán', '4465', 'Rakamaz', NULL, 'Ady Endre', 'út', '108', NULL, NULL, NULL, NULL, NULL, '', ''),
	(35, '00035', 'Richter Ferenc', '4463', 'Tiszanagyfalu', NULL, 'Ady Endre', 'út', '8/a', NULL, NULL, NULL, NULL, NULL, '', ''),
	(36, '00036', 'Perger Géza', '4465', 'Rakamaz', NULL, 'Buji', 'út', '35', NULL, NULL, NULL, NULL, NULL, '', ''),
	(37, '00037', 'Ádám András', '4465', 'Rakamaz', NULL, 'Nyírfa', 'út', '8', NULL, NULL, NULL, NULL, NULL, '', ''),
	(38, '00038', 'Almádi András', '3955', 'Kenézlő', NULL, 'Aradi', 'út', '12', NULL, NULL, NULL, NULL, NULL, '', ''),
	(39, '00039', 'Pózerné Pál Petra', '3915', 'Tarcal', NULL, 'Szondi', 'Ltp.', '3/2', NULL, NULL, NULL, NULL, NULL, '', ''),
	(40, '00040', 'Koleszár Gyula', '4472', 'Gávavencsellő', NULL, 'Petőfi', 'út', '163/a', NULL, NULL, NULL, NULL, NULL, '', ''),
	(41, '00041', 'Koleszár Ferenc', '4472', 'Gávavencsellő', NULL, 'Petőfi', 'út163', NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
	(42, '00042', 'Kornis István', '4465', 'Rakamaz', NULL, 'Rákóczi', 'út', '3', NULL, NULL, NULL, NULL, NULL, '', ''),
	(43, '00043', 'Kék Róbert', '4465', 'Rakamaz', NULL, 'Rózsa', 'út', '1', NULL, NULL, NULL, NULL, NULL, '', '');
/*!40000 ALTER TABLE `partner` ENABLE KEYS */;

-- Struktúra mentése nézet rakamaz. partner_combo
-- Ideiglenes tábla létrehozása a VIEW függőségi hibák lekezelésére
CREATE TABLE `partner_combo` (
	`id` INT(11) NOT NULL,
	`kod` VARCHAR(15) NULL COLLATE 'utf8mb4_general_ci',
	`nev` VARCHAR(80) NULL COLLATE 'utf8mb4_general_ci',
	`combo` VARCHAR(121) NULL COLLATE 'utf8mb4_general_ci',
	`cim` VARCHAR(119) NULL COLLATE 'utf8mb4_general_ci'
) ENGINE=MyISAM;

-- Struktúra mentése függvény rakamaz. partner_keszlete
DELIMITER //
CREATE FUNCTION `partner_keszlete`(`p_id_p` INT,
	`t_id_p` INT,
	`tar_id_p` INT,
	`tort_p` TINYINT
) RETURNS double
    DETERMINISTIC
BEGIN
DECLARE amenny DECIMAL(12,2);
SELECT IFNULL(SUM(MENNY),0)  FROM keszlet WHERE partner_id=p_id_p AND t_id=t_id_p AND tarolo_id=tar_id_p AND tort=tort_p INTO amenny;
RETURN amenny;
END//
DELIMITER ;

-- Struktúra mentése tábla rakamaz. rak_szall
CREATE TABLE IF NOT EXISTS `rak_szall` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Sorszam` varchar(20) DEFAULT NULL,
  `Ev_ssz` int(11) DEFAULT NULL,
  `Eazon` varchar(30) DEFAULT NULL,
  `Storno` varchar(15) DEFAULT NULL,
  `K_ID` int(11) DEFAULT NULL,
  `K_Kod` varchar(15) DEFAULT NULL,
  `K_Nev` varchar(80) DEFAULT NULL,
  `K_Cim` varchar(100) DEFAULT NULL,
  `k_tarolo_id` int(11) DEFAULT NULL,
  `k_tarolo_nev` varchar(50) DEFAULT NULL,
  `V_ID` int(11) DEFAULT NULL,
  `V_Kod` varchar(15) DEFAULT NULL,
  `V_Nev` varchar(80) DEFAULT NULL,
  `V_Cim` varchar(100) DEFAULT NULL,
  `v_tarolo_id` int(11) DEFAULT NULL,
  `v_tarolo_nev` varchar(50) DEFAULT NULL,
  `datum` date DEFAULT NULL,
  `Felhasznalo` varchar(50) DEFAULT NULL,
  `megjegyzes` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Tábla adatainak mentése rakamaz.rak_szall: ~0 rows (hozzávetőleg)
/*!40000 ALTER TABLE `rak_szall` DISABLE KEYS */;
/*!40000 ALTER TABLE `rak_szall` ENABLE KEYS */;

-- Struktúra mentése nézet rakamaz. rak_szall_lista_nezet
-- Ideiglenes tábla létrehozása a VIEW függőségi hibák lekezelésére
CREATE TABLE `rak_szall_lista_nezet` (
	`ID` INT(11) NOT NULL,
	`Sorszam` VARCHAR(20) NULL COLLATE 'utf8mb4_general_ci',
	`Ev_ssz` INT(11) NULL,
	`Eazon` VARCHAR(30) NULL COLLATE 'utf8mb4_general_ci',
	`Storno` VARCHAR(15) NULL COLLATE 'utf8mb4_general_ci',
	`K_ID` INT(11) NULL,
	`K_Kod` VARCHAR(15) NULL COLLATE 'utf8mb4_general_ci',
	`K_Nev` VARCHAR(80) NULL COLLATE 'utf8mb4_general_ci',
	`K_Cim` VARCHAR(100) NULL COLLATE 'utf8mb4_general_ci',
	`k_tarolo_id` INT(11) NULL,
	`k_tarolo_nev` VARCHAR(50) NULL COLLATE 'utf8mb4_general_ci',
	`V_ID` INT(11) NULL,
	`V_Kod` VARCHAR(15) NULL COLLATE 'utf8mb4_general_ci',
	`V_Nev` VARCHAR(80) NULL COLLATE 'utf8mb4_general_ci',
	`V_Cim` VARCHAR(100) NULL COLLATE 'utf8mb4_general_ci',
	`v_tarolo_id` INT(11) NULL,
	`v_tarolo_nev` VARCHAR(50) NULL COLLATE 'utf8mb4_general_ci',
	`datum` DATE NULL,
	`Felhasznalo` VARCHAR(50) NULL COLLATE 'utf8mb4_general_ci',
	`megjegyzes` VARCHAR(200) NULL COLLATE 'utf8mb4_general_ci',
	`rt_id` INT(11) NOT NULL,
	`termek_id` INT(11) NULL,
	`termek_kod` VARCHAR(30) NULL COLLATE 'utf8mb4_general_ci',
	`termek_nev` VARCHAR(100) NULL COLLATE 'utf8mb4_general_ci',
	`mennyiseg` DECIMAL(12,2) NULL,
	`tort` TINYINT(1) NULL
) ENGINE=MyISAM;

-- Struktúra mentése tábla rakamaz. rak_szall_tet
CREATE TABLE IF NOT EXISTS `rak_szall_tet` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RK_ID` int(11) DEFAULT NULL,
  `Termek_ID` int(11) DEFAULT NULL,
  `Termek_Kod` varchar(30) DEFAULT NULL,
  `Termek_Nev` varchar(100) DEFAULT NULL,
  `mennyiseg` decimal(12,2) DEFAULT 0.00,
  `tort` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Tábla adatainak mentése rakamaz.rak_szall_tet: ~0 rows (hozzávetőleg)
/*!40000 ALTER TABLE `rak_szall_tet` DISABLE KEYS */;
/*!40000 ALTER TABLE `rak_szall_tet` ENABLE KEYS */;

-- Struktúra mentése tábla rakamaz. rendszam
CREATE TABLE IF NOT EXISTS `rendszam` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Rendszam` varchar(20) DEFAULT NULL,
  `Partner_ID` int(11) DEFAULT NULL,
  `tara` int(11) DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Tábla adatainak mentése rakamaz.rendszam: ~5 rows (hozzávetőleg)
/*!40000 ALTER TABLE `rendszam` DISABLE KEYS */;
INSERT INTO `rendszam` (`ID`, `Rendszam`, `Partner_ID`, `tara`) VALUES
	(1, 'KKT111', NULL, 0),
	(2, 'RXN-227   NH ', NULL, 0),
	(3, 'PTE-132   NH', NULL, 0),
	(4, 'HLM-379    JD', NULL, 0),
	(5, 'LWZ-053    NH', NULL, 0),
	(6, 'JSZ-076    MTZ 952', NULL, 0);
/*!40000 ALTER TABLE `rendszam` ENABLE KEYS */;

-- Struktúra mentése tábla rakamaz. tarolok
CREATE TABLE IF NOT EXISTS `tarolok` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nev` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Tábla adatainak mentése rakamaz.tarolok: ~4 rows (hozzávetőleg)
/*!40000 ALTER TABLE `tarolok` DISABLE KEYS */;
INSERT INTO `tarolok` (`id`, `nev`) VALUES
	(1, 'Léüzem'),
	(2, 'Nagyműhely'),
	(3, 'Szárító I'),
	(4, 'Szárító II');
/*!40000 ALTER TABLE `tarolok` ENABLE KEYS */;

-- Struktúra mentése tábla rakamaz. termek
CREATE TABLE IF NOT EXISTS `termek` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Kod` varchar(30) NOT NULL DEFAULT '',
  `Nev` varchar(100) NOT NULL DEFAULT '',
  `itj` varchar(20) NOT NULL DEFAULT '',
  `me` varchar(20) NOT NULL DEFAULT '',
  `ar` decimal(12,2) NOT NULL DEFAULT 0.00,
  `afa` decimal(12,2) NOT NULL DEFAULT 0.00,
  `egysegtomeg` decimal(12,2) NOT NULL DEFAULT 1.00,
  `alapnedv` decimal(12,2) NOT NULL DEFAULT 0.00,
  `kerekites` tinyint(1) NOT NULL DEFAULT 0,
  `kukorica` tinyint(1) NOT NULL DEFAULT 0,
  `b_nedv` tinyint(1) NOT NULL DEFAULT 0,
  `b_feherje` tinyint(1) NOT NULL DEFAULT 0,
  `b_eses` tinyint(1) NOT NULL DEFAULT 0,
  `b_tisztasag` tinyint(1) NOT NULL DEFAULT 0,
  `b_tort` tinyint(1) NOT NULL DEFAULT 0,
  `b_olaj` tinyint(1) NOT NULL DEFAULT 0,
  `b_buzaminoseg` tinyint(1) NOT NULL DEFAULT 0,
  `b_hekto` tinyint(1) NOT NULL DEFAULT 0,
  `tipus_id` int(11) DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE KEY `Kod` (`Kod`) USING BTREE,
  KEY `ID` (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Tábla adatainak mentése rakamaz.termek: ~7 rows (hozzávetőleg)
/*!40000 ALTER TABLE `termek` DISABLE KEYS */;
INSERT INTO `termek` (`ID`, `Kod`, `Nev`, `itj`, `me`, `ar`, `afa`, `egysegtomeg`, `alapnedv`, `kerekites`, `kukorica`, `b_nedv`, `b_feherje`, `b_eses`, `b_tisztasag`, `b_tort`, `b_olaj`, `b_buzaminoseg`, `b_hekto`, `tipus_id`) VALUES
	(1, '00001', 'Búza', '', 'kg', 0.00, 0.00, 1.00, 13.00, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	(2, '00002', 'Alma', '', '', 0.00, 0.00, 1.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(3, '00003', 'Napraforgó', '', '', 0.00, 0.00, 1.00, 7.00, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0),
	(4, '00004', 'Kukorica', '', '', 0.00, 0.00, 1.00, 13.00, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0),
	(5, '00005', 'Repce', '', '', 0.00, 0.00, 1.00, 7.00, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0),
	(6, '00006', 'Rozs', '', '', 0.00, 0.00, 1.00, 13.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(7, '00007', 'Takarmány borsó', '', '', 0.00, 0.00, 1.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(8, '00008', 'Ipari alma', '', 'kg.', 23.70, 0.00, 1.00, 0.00, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `termek` ENABLE KEYS */;

-- Struktúra mentése tábla rakamaz. tipus
CREATE TABLE IF NOT EXISTS `tipus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nev` varchar(30) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Tábla adatainak mentése rakamaz.tipus: ~0 rows (hozzávetőleg)
/*!40000 ALTER TABLE `tipus` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipus` ENABLE KEYS */;

-- Struktúra mentése trigger rakamaz. merlegjegy_before_insert
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `merlegjegy_before_insert` BEFORE INSERT ON `merlegjegy` FOR EACH ROW BEGIN
SET NEW.ev_ssz:=(SELECT IF((SELECT  MAX(EV_SSZ) from merlegjegy  WHERE YEAR(tavdatum)=YEAR(CURRENT_TIMESTAMP)) is NULL,1,(SELECT  MAX(EV_SSZ) from merlegjegy WHERE YEAR(tavdatum)=YEAR(CURRENT_TIMESTAMP))+1)) ;
SET NEW.sorszam:=CONCAT(CAST(YEAR(NEW.tavdatum) AS CHAR),'/', LPAD(CAST(NEW.ev_ssz AS CHAR),6,'0'));
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Struktúra mentése trigger rakamaz. rak_szall_before_insert
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `rak_szall_before_insert` BEFORE INSERT ON `rak_szall` FOR EACH ROW BEGIN
SET NEW.ev_ssz:=(SELECT IF((SELECT  MAX(EV_SSZ) from rak_szall  WHERE YEAR(datum)=YEAR(CURRENT_TIMESTAMP)) is NULL,1,(SELECT  MAX(EV_SSZ) from rak_szall WHERE YEAR(datum)=YEAR(CURRENT_TIMESTAMP))+1)) ;
SET NEW.sorszam:=CONCAT(CAST(YEAR(NEW.datum) AS CHAR),'/', LPAD(CAST(NEW.ev_ssz AS CHAR),6,'0'));
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Struktúra mentése nézet rakamaz. keszlet_nezet
-- Ideiglenes tábla eltávolítása és a végső VIEW struktúra létrehozása
DROP TABLE IF EXISTS `keszlet_nezet`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `keszlet_nezet` AS SELECT k.t_id AS Term_id, term.kod AS Term_kod,term.nev AS Term_nev,
k.Tarolo_id, tar.nev AS Tarolo_nev,k.partner_id,p.kod AS Partner_kod,p.nev AS Partner_nev,
k.f_id AS felhasznalo_id,f.nev AS Felhasznalo_nev,k.menny,k.modositva,k.tort
FROM keszlet K
INNER JOIN termek term ON term.ID=k.t_id
INNER JOIN tarolok tar ON tar.id=k.tarolo_id
INNER JOIN partner p ON p.ID=k.partner_id
LEFT JOIN felhasz f ON f.id=k.f_id ;

-- Struktúra mentése nézet rakamaz. partner_combo
-- Ideiglenes tábla eltávolítása és a végső VIEW struktúra létrehozása
DROP TABLE IF EXISTS `partner_combo`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `partner_combo` AS SELECT id,kod,nev,
CONCAT(RPAD(kod,20),' ',RPAD(nev,100)) As combo,
CONCAT(irsz,' ',telepules,' ', if(kerulet<>'',CONCAT(kerulet,' '),''),if(kozterulet<>'',CONCAT(kozterulet),' '),
if(kozt_jelleg<>'',CONCAT(' ',kozt_jelleg),''),if(hazszam<>'',CONCAT(' ',hazszam),''),if(epulet<>'',CONCAT(' ',epulet),''),
if(lepcsohaz<>'',CONCAT(' ',lepcsohaz),''),if(emelet<>'',CONCAT(' ',emelet ),''),
if(ajto<>'',CONCAT(' ',ajto),'')) AS cim
from partner ;

-- Struktúra mentése nézet rakamaz. rak_szall_lista_nezet
-- Ideiglenes tábla eltávolítása és a végső VIEW struktúra létrehozása
DROP TABLE IF EXISTS `rak_szall_lista_nezet`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `rak_szall_lista_nezet` AS SELECT r.*,rt.id AS rt_id,rt.termek_id,rt.termek_kod,rt.termek_nev,rt.mennyiseg,rt.tort
FROM rak_szall r
INNER JOIN rak_szall_tet rt ON rt.RK_id=R.id ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
