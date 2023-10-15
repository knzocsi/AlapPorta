unit SQL_text;


interface
   uses AU;

    const
      // A mérlegjegyen történő módosításkor  módosítani kell a nyitbe és a modositott_melegjegy tablakat is
      maxSQL=22;
      modSQL :array[1..maxSQL] of string =

      (
      //1
      '/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;' + #13#10 +
      '/*!40101 SET NAMES utf8 */;' + #13#10 +
      '/*!50503 SET NAMES utf8mb4 */;' + #13#10 +
      '/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;' + #13#10 +
      '/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE=''NO_AUTO_VALUE_ON_ZERO'' */;' + #13#10 +
      '' + #13#10 +
      'CREATE DATABASE IF NOT EXISTS `:adatbazis` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;' + #13#10 +
      'USE `:adatbazis`;' + #13#10 +
      '' + #13#10 +
    ''+#13#10+
    'CREATE TABLE IF NOT EXISTS `cfg` (' + #13#10 +
    '`id` INT(11) NOT NULL AUTO_INCREMENT,' + #13#10 +
    '`csoport` VARCHAR(50) NOT NULL DEFAULT '''' ,' + #13#10 +
    '`tulajdonsag` VARCHAR(50) NOT NULL DEFAULT '''',' + #13#10 +
    '`tipus` VARCHAR(10) NOT NULL DEFAULT '''' ,' + #13#10 +
    '`ertek` VARCHAR(200) NOT NULL DEFAULT '''' ,' + #13#10 +
    '`magyarazat` VARCHAR(200) NOT NULL DEFAULT '''','+#13#10+
    'PRIMARY KEY (`ID`)'+#13#10+
    ') ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;' + #13#10 +
    ''+#13#10+

    'CREATE TABLE IF NOT EXISTS `felhasz` (' + #13#10 +
    '`id` int(11) NOT NULL AUTO_INCREMENT,' + #13#10 +
    '`nev` varchar(50) DEFAULT NULL,' + #13#10 +
    '`jelszo` varchar(32) DEFAULT NULL,' + #13#10 +
    '`aktiv` int(11) DEFAULT 1,' + #13#10 +
    'PRIMARY KEY (`id`),' + #13#10 +
    'UNIQUE KEY `ID_UNIQUE` (`id`)' + #13#10 +
    ') ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;' + #13#10 +
    '' + #13#10 +
    'CREATE TABLE IF NOT EXISTS `forgalom` (' + #13#10 +
    '`ID` int(11) NOT NULL AUTO_INCREMENT,' + #13#10 +
    '`Datum` date DEFAULT curdate(),' + #13#10 +
    '`Ido` time DEFAULT curtime(),' + #13#10 +
    '`Rendszam` varchar(20) DEFAULT NULL,' + #13#10 +
    '`Rendszam2` varchar(20) DEFAULT NULL,' + #13#10 +
    '`Irany` varchar(2) DEFAULT NULL,' + #13#10 +
    '`Kod` varchar(10) DEFAULT NULL,' + #13#10 +
    '`Nev` varchar(50) DEFAULT NULL,' + #13#10 +
    '`Szallitolev` varchar(20) DEFAULT NULL,' + #13#10 +
    '`Tomeg` int(11) DEFAULT NULL,' + #13#10 +
    '`Kepnev1` varchar(180) DEFAULT NULL,' + #13#10 +
    '`Kepnev2` varchar(180) DEFAULT NULL,' + #13#10 +
    '`Parositott` tinyint(4) DEFAULT 0,' + #13#10 +
    '`Nem_Kell` tinyint(4) DEFAULT 0,' + #13#10 +
    '`P_ID` int(11) DEFAULT 0,' + #13#10 +
    '`P_KOD` varchar(15) DEFAULT NULL,' + #13#10 +
    '`P_NEV` varchar(80) DEFAULT NULL,' + #13#10 +
    '`P_cim1` varchar(50) DEFAULT NULL,' + #13#10 +
    '`p_cim2` varchar(50) DEFAULT NULL,' + #13#10 +
    '`mjegy` varchar(20) DEFAULT '''',' + #13#10 +
    'PRIMARY KEY (`ID`),' + #13#10 +
    'UNIQUE KEY `ID_UNIQUE` (`ID`)' + #13#10 +
    ') ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;' + #13#10 +
    '' + #13#10 +
    'CREATE TABLE IF NOT EXISTS `jogok` (' + #13#10 +
    '`id` int(11) NOT NULL AUTO_INCREMENT,' + #13#10 +
    '`f_id` int(11) NOT NULL,' + #13#10 +
    '`j1` int(11) DEFAULT 0,' + #13#10 +
    '`j2` int(11) DEFAULT 0,' + #13#10 +
    '`j3` int(11) DEFAULT 0,' + #13#10 +
    '`j4` int(11) DEFAULT 0,' + #13#10 +
    '`j5` int(11) DEFAULT 0,' + #13#10 +
    '`j6` int(11) DEFAULT 0,' + #13#10 +
    '`j7` int(11) DEFAULT 0,' + #13#10 +
    '`j8` int(11) DEFAULT 0,' + #13#10 +
    '`j9` int(11) DEFAULT 0,' + #13#10 +
    '`j10` int(11) DEFAULT 0,' + #13#10 +
    '`j11` int(11) DEFAULT 0,' + #13#10 +
    '`j12` int(11) DEFAULT 0,' + #13#10 +
    '`j13` int(11) DEFAULT 0,' + #13#10 +
    '`j14` int(11) DEFAULT 0,' + #13#10 +
    '`j15` int(11) DEFAULT 0,' + #13#10 +
    '`j16` int(11) DEFAULT 0,' + #13#10 +
    '`j17` int(11) DEFAULT 0,' + #13#10 +
    '`j18` int(11) DEFAULT 0,' + #13#10 +
    '`j19` int(11) DEFAULT 0,' + #13#10 +
    '`j20` int(11) DEFAULT 0,' + #13#10 +
    'PRIMARY KEY (`id`),' + #13#10 +
    'UNIQUE KEY `id_UNIQUE` (`id`),' + #13#10 +
    'UNIQUE KEY `f_id_UNIQUE` (`f_id`)' + #13#10 +
    ') ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;' + #13#10 +
    '' + #13#10 +
    'CREATE TABLE IF NOT EXISTS `keszlet` (' + #13#10 +
    '`id` int(11) unsigned NOT NULL AUTO_INCREMENT,' + #13#10 +
    '`t_id` int(11) unsigned NOT NULL DEFAULT 0 COMMENT ''termék id'',' + #13#10 +
    '`tarolo_id` int(11) DEFAULT 0 COMMENT ''tároló id'',' + #13#10 +
    '`partner_id` int(11) DEFAULT 0 COMMENT ''partner id'',' + #13#10 +
    '`f_id` int(11) DEFAULT NULL COMMENT ''felhasználó id'',' + #13#10 +
    '`menny` decimal(12,2) DEFAULT NULL,' + #13#10 +
    '`modositva` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT ''automatikusan beirja az időpontot updaten is '',' + #13#10 +
    '`tort` tinyint(1) DEFAULT 0,' + #13#10 +
    'PRIMARY KEY (`id`)' + #13#10 +
    ') ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;' + #13#10 +
    '' + #13#10 +
    'CREATE TABLE IF NOT EXISTS `irsz` (' + #13#10 +
    '`id` int(11) NOT NULL AUTO_INCREMENT,' + #13#10 +
    '`irsz` varchar(10) NOT NULL DEFAULT '''',' + #13#10 +
    '`megye` varchar(50) NOT NULL DEFAULT '''',' + #13#10 +
    '`varos` varchar(50) NOT NULL DEFAULT '''',' + #13#10 +
    'PRIMARY KEY (`id`)' + #13#10 +
    ') ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;' + #13#10 +
    '' + #13#10 +
    'DELIMITER //' + #13#10 +
    'CREATE PROCEDURE `keszletezes`(' + #13#10 +
    '	IN `p_id_p` INT,' + #13#10 +
    '	IN `t_id_p` INT,' + #13#10 +
    '	IN `tar_id_p` INT,' + #13#10 +
    '	IN `tort_p` TINYINT,' + #13#10 +
    '	IN `f_id_p` INT,' + #13#10 +
    '	IN `menny_p` DECIMAL(12,2)' + #13#10 +
    ')' + #13#10 +
    'BEGIN' + #13#10 +
    'DECLARE c INT(11);' + #13#10 +
    'DECLARE aid INT(11);' + #13#10 +
    'SELECT id,COUNT(ID) FROM keszlet WHERE partner_id=p_id_p AND t_id=t_id_p AND tarolo_id=tar_id_p AND tort=tort_p INTO aid,c;' + #13#10 +
    'IF (c=0) THEN INSERT INTO keszlet (partner_id,t_id,tarolo_id,f_id,menny,tort)VALUES(p_id_p,t_id_p,tar_id_p,f_id_p,menny_p,tort_p);' + #13#10 +
    'ELSE UPDATE keszlet SET Menny=Menny+menny_p WHERE id=aid;' + #13#10 +
    'END IF;' + #13#10 +
    'END//' + #13#10 +
    'DELIMITER ;' + #13#10 +
    '' + #13#10 +
    'CREATE TABLE `keszlet_nezet` (' + #13#10 +
    '	`Term_id` INT(11) UNSIGNED NOT NULL COMMENT ''termék id'',' + #13#10 +
    '	`Term_kod` VARCHAR(30) NOT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`Term_nev` VARCHAR(100) NOT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`Tarolo_id` INT(11) NULL COMMENT ''tároló id'',' + #13#10 +
    '	`Tarolo_nev` VARCHAR(50) NOT NULL COLLATE ''utf8_general_ci'',' + #13#10 +
    '	`partner_id` INT(11) NULL COMMENT ''partner id'',' + #13#10 +
    '	`Partner_kod` VARCHAR(15) NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`Partner_nev` VARCHAR(80) NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`felhasznalo_id` INT(11) NULL COMMENT ''felhasználó id'',' + #13#10 +
    '	`Felhasznalo_nev` VARCHAR(50) NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`menny` DECIMAL(12,2) NULL,' + #13#10 +
    '	`modositva` DATETIME NULL COMMENT ''automatikusan beirja az időpontot updaten is '',' + #13#10 +
    '	`tort` TINYINT(1) NULL' + #13#10 +
    ') ENGINE=MyISAM;' + #13#10 +
    '' + #13#10 +
    'CREATE TABLE IF NOT EXISTS `merlegelok` (' + #13#10 +
    '`ID` int(11) NOT NULL AUTO_INCREMENT,' + #13#10 +
    '`Nev` varchar(50) NOT NULL DEFAULT '''',' + #13#10 +
    'PRIMARY KEY (`ID`),' + #13#10 +
    'UNIQUE KEY `Nev` (`Nev`)' + #13#10 +
    ') ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;' + #13#10 +
    '' + #13#10 +
    'CREATE TABLE IF NOT EXISTS `merlegjegy` (' + #13#10 +
    '`ID` int(11) NOT NULL AUTO_INCREMENT,' + #13#10 +
    '`Sorszam` varchar(20) DEFAULT NULL,' + #13#10 +
    '`Ev_ssz` int(11) DEFAULT NULL,' + #13#10 +
    '`Eazon` varchar(30) DEFAULT NULL,' + #13#10 +
    '`Storno` varchar(15) DEFAULT NULL,' + #13#10 +
    '`Rendszam` varchar(20) DEFAULT NULL,' + #13#10 +
    '`Rendszam2` varchar(20) DEFAULT NULL,' + #13#10 +
    '`P_ID` int(11) DEFAULT NULL,' + #13#10 +
    '`P_Kod` varchar(15) DEFAULT NULL,' + #13#10 +
    '`P_Nev` varchar(80) DEFAULT NULL,' + #13#10 +
    '`P_Cim` varchar(100) DEFAULT NULL,' + #13#10 +
    '`Termek_ID` int(11) DEFAULT NULL,' + #13#10 +
    '`Termek_Kod` varchar(30) DEFAULT NULL,' + #13#10 +
    '`Termek_Nev` varchar(100) DEFAULT NULL,' + #13#10 +
    '`Termek_afa` decimal(12,2) DEFAULT 0.00,' + #13#10 +
    '`termek_ar` decimal(12,2) DEFAULT 0.00,' + #13#10 +
    '`Szallitolev` varchar(20) DEFAULT NULL,' + #13#10 +
    '`Megjegyzes` varchar(200) DEFAULT NULL,' + #13#10 +
    '`Tomegbe` int(11) DEFAULT NULL,' + #13#10 +
    '`Tomegki` int(11) DEFAULT NULL,' + #13#10 +
    '`Erkdatum` date DEFAULT NULL,' + #13#10 +
    '`Erkido` time DEFAULT NULL,' + #13#10 +
    '`Tavdatum` date DEFAULT NULL,' + #13#10 +
    '`Tavido` time DEFAULT NULL,' + #13#10 +
    '`Felhasznalo` varchar(50) DEFAULT NULL,' + #13#10 +
    '`irany` varchar(30) DEFAULT NULL,' + #13#10 +
    '`Brutto` int(11) DEFAULT NULL,' + #13#10 +
    '`Tara` int(11) DEFAULT NULL,' + #13#10 +
    '`Netto` int(11) DEFAULT NULL,' + #13#10 +
    '`SzNetto` int(11) DEFAULT NULL,' + #13#10 +
    '`merlegelo` varchar(50) DEFAULT NULL,' + #13#10 +
    '`kuj` varchar(30) NOT NULL DEFAULT '''',' + #13#10 +
    '`ktj` varchar(30) NOT NULL DEFAULT '''',' + #13#10 +
    '`ekaer` varchar(30) NOT NULL DEFAULT '''',' + #13#10 +
    '`psz` int(11) DEFAULT 0,' + #13#10 +
    '`alapnedv` decimal(12,2) DEFAULT 0.00,' + #13#10 +
    '`nedv` decimal(12,2) DEFAULT 0.00,' + #13#10 +
    '`tisztasag` decimal(12,2) DEFAULT 0.00,' + #13#10 +
    '`tortszaz` decimal(12,2) DEFAULT 0.00,' + #13#10 +
    '`feherje` decimal(12,2) DEFAULT 0.00,' + #13#10 +
    '`olaj` decimal(12,2) DEFAULT 0.00,' + #13#10 +
    '`esesszam` decimal(12,2) DEFAULT 0.00,' + #13#10 +
    '`hekto` decimal(12,2) DEFAULT 0.00,' + #13#10 +
    '`egysegtomeg` decimal(12,2) DEFAULT 0.00,' + #13#10 +
    '`kerekites` tinyint(1) DEFAULT 0,' + #13#10 +
    '`kukorica` tinyint(1) DEFAULT 0,' + #13#10 +
    '`buzaminoseg` varchar(50) DEFAULT '''',' + #13#10 +
    '`mennyiseg` decimal(12,2) DEFAULT 0.00,' + #13#10 +
    '`tarolasi_dij` decimal(12,2) DEFAULT 0.00,' + #13#10 +
    '`szaritasi_dij` decimal(12,2) DEFAULT 0.00,' + #13#10 +
    '`tisztitasi_dij` decimal(12,2) DEFAULT 0.00,' + #13#10 +
    '`tarolo_id` int(11) DEFAULT 0,' + #13#10 +
    '`tarolo` varchar(50) DEFAULT '''''''''''',' + #13#10 +
    'PRIMARY KEY (`ID`)' + #13#10 +
    ') ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;' + #13#10 +
    '' + #13#10 +
     'CREATE TABLE IF NOT EXISTS `modositott_merlegjegyek` (' + #13#10 +
    '	`ID` INT(11) NOT NULL AUTO_INCREMENT,' + #13#10 +
    '	`Sorszam` VARCHAR(20) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`Ev_ssz` INT(11) NULL DEFAULT NULL,' + #13#10 +
    '	`Eazon` VARCHAR(30) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`Storno` VARCHAR(15) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`Rendszam` VARCHAR(20) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`Rendszam2` VARCHAR(20) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`P_ID` INT(11) NULL DEFAULT NULL,' + #13#10 +
    '	`P_Kod` VARCHAR(15) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`P_Nev` VARCHAR(80) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`P_Cim` VARCHAR(100) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`Termek_ID` INT(11) NULL DEFAULT NULL,' + #13#10 +
    '	`Termek_Kod` VARCHAR(30) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`Termek_Nev` VARCHAR(100) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`Termek_afa` DECIMAL(12,2) NULL DEFAULT ''0.00'',' + #13#10 +
    '	`termek_ar` DECIMAL(12,2) NULL DEFAULT ''0.00'',' + #13#10 +
    '	`Szallitolev` VARCHAR(20) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`Megjegyzes` VARCHAR(200) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`Tomegbe` INT(11) NULL DEFAULT NULL,' + #13#10 +
    '	`Tomegki` INT(11) NULL DEFAULT NULL,' + #13#10 +
    '	`Erkdatum` DATE NULL DEFAULT NULL,' + #13#10 +
    '	`Erkido` TIME NULL DEFAULT NULL,' + #13#10 +
    '	`Tavdatum` DATE NULL DEFAULT NULL,' + #13#10 +
    '	`Tavido` TIME NULL DEFAULT NULL,' + #13#10 +
    '	`Felhasznalo` VARCHAR(50) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`irany` VARCHAR(30) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`Brutto` INT(11) NULL DEFAULT NULL,' + #13#10 +
    '	`Tara` INT(11) NULL DEFAULT NULL,' + #13#10 +
    '	`Netto` INT(11) NULL DEFAULT NULL,' + #13#10 +
    '	`SzNetto` INT(11) NULL DEFAULT NULL,' + #13#10 +
    '	`merlegelo` VARCHAR(50) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`kuj` VARCHAR(30) NOT NULL DEFAULT '''' COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`ktj` VARCHAR(30) NOT NULL DEFAULT '''' COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`ekaer` VARCHAR(30) NOT NULL DEFAULT '''' COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`psz` INT(11) NULL DEFAULT ''0'',' + #13#10 +
    '	`alapnedv` DECIMAL(12,2) NULL DEFAULT ''0.00'',' + #13#10 +
    '	`nedv` DECIMAL(12,2) NULL DEFAULT ''0.00'',' + #13#10 +
    '	`tisztasag` DECIMAL(12,2) NULL DEFAULT ''0.00'',' + #13#10 +
    '	`tortszaz` DECIMAL(12,2) NULL DEFAULT ''0.00'',' + #13#10 +
    '	`feherje` DECIMAL(12,2) NULL DEFAULT ''0.00'',' + #13#10 +
    '	`olaj` DECIMAL(12,2) NULL DEFAULT ''0.00'',' + #13#10 +
    '	`esesszam` DECIMAL(12,2) NULL DEFAULT ''0.00'',' + #13#10 +
    '	`hekto` DECIMAL(12,2) NULL DEFAULT ''0.00'',' + #13#10 +
    '	`egysegtomeg` DECIMAL(12,2) NULL DEFAULT ''0.00'',' + #13#10 +
    '	`kerekites` TINYINT(1) NULL DEFAULT ''0'',' + #13#10 +
    '	`kukorica` TINYINT(1) NULL DEFAULT ''0'',' + #13#10 +
    '	`buzaminoseg` VARCHAR(50) NULL DEFAULT '''' COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`mennyiseg` DECIMAL(12,2) NULL DEFAULT ''0.00'',' + #13#10 +
    '	`tarolasi_dij` DECIMAL(12,2) NULL DEFAULT ''0.00'',' + #13#10 +
    '	`szaritasi_dij` DECIMAL(12,2) NULL DEFAULT ''0.00'',' + #13#10 +
    '	`tisztitasi_dij` DECIMAL(12,2) NULL DEFAULT ''0.00'',' + #13#10 +
    '	`tarolo_id` INT(11) NULL DEFAULT ''0'',' + #13#10 +
    '	`tarolo` VARCHAR(50) NULL DEFAULT ''\''\'''' COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`elso_kezi` TINYINT(1) NULL DEFAULT NULL,' + #13#10 +
    '	`masodik_kezi` TINYINT(1) NULL DEFAULT NULL,' + #13#10 +
    '	`tul_id` INT(11) NULL DEFAULT ''0'',' + #13#10 +
    '	`tul_nev` VARCHAR(80) NOT NULL DEFAULT '''' COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`tul_cim` VARCHAR(200) NOT NULL DEFAULT '''' COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`tul_adoszam` VARCHAR(20) NOT NULL DEFAULT '''' COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`tul_kuj` VARCHAR(20) NOT NULL DEFAULT '''' COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`tul_ktj` VARCHAR(20) NOT NULL DEFAULT '''' COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`tul_elotag` VARCHAR(2) NOT NULL DEFAULT '''' COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`P2_ID` INT(11) NULL DEFAULT ''0'',' + #13#10 +
    '	`P2_Kod` VARCHAR(15) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`P2_Nev` VARCHAR(80) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`P2_Cim` VARCHAR(100) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`P2_kuj` VARCHAR(20) NOT NULL DEFAULT '''' COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`P2_ktj` VARCHAR(20) NOT NULL DEFAULT '''' COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`levon_szoveg` VARCHAR(100) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`levon_tomeg` INT(11) NULL DEFAULT ''0'',' + #13#10 +
    '	`ewc` VARCHAR(20) NULL DEFAULT '''' COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`tul_cjsz` VARCHAR(20) NULL DEFAULT '''' COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`mod_idobelyeg` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,' + #13#10 +
    'PRIMARY KEY (`ID`)'+#13#10+
    ') ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;'+ #13#10 +
    ''+ #13#10 +
    'CREATE TABLE IF NOT EXISTS `parositott` (' + #13#10 +
    '`ID` int(11) NOT NULL AUTO_INCREMENT,' + #13#10 +
    '`Erkdatum` date DEFAULT NULL,' + #13#10 +
    '`Erkido` time DEFAULT NULL,' + #13#10 +
    '`Tavdatum` date DEFAULT NULL,' + #13#10 +
    '`Tavido` time DEFAULT NULL,' + #13#10 +
    '`Rendszam` varchar(20) DEFAULT NULL,' + #13#10 +
    '`Kod` varchar(10) DEFAULT NULL,' + #13#10 +
    '`Szallitolev` varchar(20) DEFAULT NULL,' + #13#10 +
    '`Betomeg` int(11) DEFAULT NULL,' + #13#10 +
    '`Kitomeg` int(11) DEFAULT NULL,' + #13#10 +
    '`Netto` int(11) DEFAULT NULL,' + #13#10 +
    '`Mjegysorszam` varchar(10) DEFAULT NULL,' + #13#10 +
    '`Forgalom_be_ID` int(11) DEFAULT NULL,' + #13#10 +
    '`Forgalom_ki_ID` int(11) DEFAULT NULL,' + #13#10 +
    'PRIMARY KEY (`ID`)' + #13#10 +
    ') ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;' + #13#10 +
    '' + #13#10 +
    'CREATE TABLE IF NOT EXISTS `partner` (' + #13#10 +
    '`ID` int(11) NOT NULL AUTO_INCREMENT,' + #13#10 +
    '`Kod` varchar(15) DEFAULT NULL,' + #13#10 +
    '`Nev` varchar(80) DEFAULT NULL,' + #13#10 +
    '`Irsz` varchar(10) DEFAULT NULL,' + #13#10 +
    '`Telepules` varchar(30) DEFAULT NULL,' + #13#10 +
    '`Kerulet` varchar(5) DEFAULT NULL,' + #13#10 +
    '`Kozterulet` varchar(30) DEFAULT NULL,' + #13#10 +
    '`Kozt_Jelleg` varchar(10) DEFAULT NULL,' + #13#10 +
    '`Hazszam` varchar(5) DEFAULT NULL,' + #13#10 +
    '`Epulet` varchar(5) DEFAULT NULL,' + #13#10 +
    '`Lepcsohaz` varchar(5) DEFAULT NULL,' + #13#10 +
    '`Emelet` varchar(5) DEFAULT NULL,' + #13#10 +
    '`Ajto` varchar(5) DEFAULT NULL,' + #13#10 +
    '`Adoszam` varchar(20) DEFAULT NULL,' + #13#10 +
    '`kuj` varchar(30) NOT NULL DEFAULT '''',' + #13#10 +
    '`ktj` varchar(30) NOT NULL DEFAULT '''',' + #13#10 +
    'PRIMARY KEY (`ID`)' + #13#10 +
    ') ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;' + #13#10 +
    '' + #13#10 +
    'CREATE TABLE `partner_combo` (' + #13#10 +
    '	`id` INT(11) NOT NULL,' + #13#10 +
    '	`kod` VARCHAR(15) NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`nev` VARCHAR(80) NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`combo` VARCHAR(121) NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`cim` VARCHAR(119) NULL COLLATE ''utf8mb4_general_ci''' + #13#10 +
    ') ENGINE=MyISAM;' + #13#10 +
    '' + #13#10 +
    'DELIMITER //' + #13#10 +
    'CREATE FUNCTION `partner_keszlete`(`p_id_p` INT,' + #13#10 +
    '	`t_id_p` INT,' + #13#10 +
    '	`tar_id_p` INT,' + #13#10 +
    '	`tort_p` TINYINT' + #13#10 +
    ') RETURNS double' + #13#10 +
      'DETERMINISTIC' + #13#10 +
      'BEGIN' + #13#10 +
      'DECLARE amenny DECIMAL(12,2);' + #13#10 +
      'SELECT IFNULL(SUM(MENNY),0)  FROM keszlet WHERE partner_id=p_id_p AND t_id=t_id_p AND tarolo_id=tar_id_p AND tort=tort_p INTO amenny;' + #13#10 +
      'RETURN amenny;' + #13#10 +
      'END//' + #13#10 +
      'DELIMITER ;' + #13#10 +
      '' + #13#10 +
      'CREATE TABLE IF NOT EXISTS `rak_szall` (' + #13#10 +
    '`ID` int(11) NOT NULL AUTO_INCREMENT,' + #13#10 +
    '`Sorszam` varchar(20) DEFAULT NULL,' + #13#10 +
    '`Ev_ssz` int(11) DEFAULT NULL,' + #13#10 +
    '`Eazon` varchar(30) DEFAULT NULL,' + #13#10 +
    '`Storno` varchar(15) DEFAULT NULL,' + #13#10 +
    '`K_ID` int(11) DEFAULT NULL,' + #13#10 +
    '`K_Kod` varchar(15) DEFAULT NULL,' + #13#10 +
    '`K_Nev` varchar(80) DEFAULT NULL,' + #13#10 +
    '`K_Cim` varchar(100) DEFAULT NULL,' + #13#10 +
    '`k_tarolo_id` int(11) DEFAULT NULL,' + #13#10 +
    '`k_tarolo_nev` varchar(50) DEFAULT NULL,' + #13#10 +
    '`V_ID` int(11) DEFAULT NULL,' + #13#10 +
    '`V_Kod` varchar(15) DEFAULT NULL,' + #13#10 +
    '`V_Nev` varchar(80) DEFAULT NULL,' + #13#10 +
    '`V_Cim` varchar(100) DEFAULT NULL,' + #13#10 +
    '`v_tarolo_id` int(11) DEFAULT NULL,' + #13#10 +
    '`v_tarolo_nev` varchar(50) DEFAULT NULL,' + #13#10 +
    '`datum` date DEFAULT NULL,' + #13#10 +
    '`Felhasznalo` varchar(50) DEFAULT NULL,' + #13#10 +
    '`megjegyzes` varchar(200) DEFAULT NULL,' + #13#10 +
    'PRIMARY KEY (`ID`) USING BTREE' + #13#10 +
    ') ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;' + #13#10 +
    '' + #13#10 +
    'CREATE TABLE `rak_szall_lista_nezet` (' + #13#10 +
    '	`ID` INT(11) NOT NULL,' + #13#10 +
    '	`Sorszam` VARCHAR(20) NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`Ev_ssz` INT(11) NULL,' + #13#10 +
    '	`Eazon` VARCHAR(30) NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`Storno` VARCHAR(15) NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`K_ID` INT(11) NULL,' + #13#10 +
    '	`K_Kod` VARCHAR(15) NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`K_Nev` VARCHAR(80) NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`K_Cim` VARCHAR(100) NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`k_tarolo_id` INT(11) NULL,' + #13#10 +
    '	`k_tarolo_nev` VARCHAR(50) NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`V_ID` INT(11) NULL,' + #13#10 +
    '	`V_Kod` VARCHAR(15) NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`V_Nev` VARCHAR(80) NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`V_Cim` VARCHAR(100) NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`v_tarolo_id` INT(11) NULL,' + #13#10 +
    '	`v_tarolo_nev` VARCHAR(50) NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`datum` DATE NULL,' + #13#10 +
    '	`Felhasznalo` VARCHAR(50) NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`megjegyzes` VARCHAR(200) NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`rt_id` INT(11) NOT NULL,' + #13#10 +
    '	`termek_id` INT(11) NULL,' + #13#10 +
    '	`termek_kod` VARCHAR(30) NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`termek_nev` VARCHAR(100) NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`mennyiseg` DECIMAL(12,2) NULL,' + #13#10 +
    '	`tort` TINYINT(1) NULL' + #13#10 +
    ') ENGINE=MyISAM;' + #13#10 +
    '' + #13#10 +
    'CREATE TABLE IF NOT EXISTS `rak_szall_tet` (' + #13#10 +
    '`ID` int(11) NOT NULL AUTO_INCREMENT,' + #13#10 +
    '`RK_ID` int(11) DEFAULT NULL,' + #13#10 +
    '`Termek_ID` int(11) DEFAULT NULL,' + #13#10 +
    '`Termek_Kod` varchar(30) DEFAULT NULL,' + #13#10 +
    '`Termek_Nev` varchar(100) DEFAULT NULL,' + #13#10 +
    '`mennyiseg` decimal(12,2) DEFAULT 0.00,' + #13#10 +
    '`tort` tinyint(1) DEFAULT 0,' + #13#10 +
    'PRIMARY KEY (`ID`) USING BTREE' + #13#10 +
    ') ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;' + #13#10 +
    '' + #13#10 +
    'CREATE TABLE IF NOT EXISTS `rendszam` (' + #13#10 +
    '`ID` int(11) NOT NULL AUTO_INCREMENT,' + #13#10 +
    '`Rendszam` varchar(20) DEFAULT NULL,' + #13#10 +
    '`Partner_ID` int(11) DEFAULT NULL,' + #13#10 +
    '`tara` int(11) DEFAULT 0,' + #13#10 +
    'PRIMARY KEY (`ID`)' + #13#10 +
    ') ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;' + #13#10 +
    '' + #13#10 +
    'CREATE TABLE IF NOT EXISTS `tarolok` (' + #13#10 +
    '`id` int(10) unsigned NOT NULL AUTO_INCREMENT,' + #13#10 +
    '`nev` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '''',' + #13#10 +
    'PRIMARY KEY (`id`) USING BTREE' + #13#10 +
    ') ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;' + #13#10 +
    '' + #13#10 +
    'CREATE TABLE IF NOT EXISTS `termek` (' + #13#10 +
    '`ID` int(11) NOT NULL AUTO_INCREMENT,' + #13#10 +
    '`Kod` varchar(30) NOT NULL DEFAULT '''',' + #13#10 +
    '`Nev` varchar(100) NOT NULL DEFAULT '''',' + #13#10 +
    '`itj` varchar(20) NOT NULL DEFAULT '''',' + #13#10 +
    '`me` varchar(20) NOT NULL DEFAULT '''',' + #13#10 +
    '`ar` decimal(12,2) NOT NULL DEFAULT 0.00,' + #13#10 +
    '`afa` decimal(12,2) NOT NULL DEFAULT 0.00,' + #13#10 +
    '`egysegtomeg` decimal(12,2) NOT NULL DEFAULT 1.00,' + #13#10 +
    '`alapnedv` decimal(12,2) NOT NULL DEFAULT 0.00,' + #13#10 +
    '`kerekites` tinyint(1) NOT NULL DEFAULT 0,' + #13#10 +
    '`kukorica` tinyint(1) NOT NULL DEFAULT 0,' + #13#10 +
    '`b_nedv` tinyint(1) NOT NULL DEFAULT 0,' + #13#10 +
    '`b_feherje` tinyint(1) NOT NULL DEFAULT 0,' + #13#10 +
    '`b_eses` tinyint(1) NOT NULL DEFAULT 0,' + #13#10 +
    '`b_tisztasag` tinyint(1) NOT NULL DEFAULT 0,' + #13#10 +
    '`b_tort` tinyint(1) NOT NULL DEFAULT 0,' + #13#10 +
    '`b_olaj` tinyint(1) NOT NULL DEFAULT 0,' + #13#10 +
    '`b_buzaminoseg` tinyint(1) NOT NULL DEFAULT 0,' + #13#10 +
    '`b_hekto` tinyint(1) NOT NULL DEFAULT 0,' + #13#10 +
    '`tipus_id` int(11) DEFAULT 0,' + #13#10 +
    'PRIMARY KEY (`ID`) USING BTREE,' + #13#10 +
    'UNIQUE KEY `Kod` (`Kod`) USING BTREE,' + #13#10 +
    'KEY `ID` (`ID`) USING BTREE' + #13#10 +
    ') ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;' + #13#10 +
    '' + #13#10 +
    'CREATE TABLE IF NOT EXISTS `tipus` (' + #13#10 +
    '`id` int(10) unsigned NOT NULL AUTO_INCREMENT,' + #13#10 +
    '`nev` varchar(30) DEFAULT '''',' + #13#10 +
    'PRIMARY KEY (`id`)' + #13#10 +
    ') ENGINE=InnoDB DEFAULT CHARSET=utf8;' + #13#10 +
    '' + #13#10 +
    'SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE=''STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION'';' + #13#10 +
    'DELIMITER //' + #13#10 +
    'CREATE TRIGGER `merlegjegy_before_insert` BEFORE INSERT ON `merlegjegy` FOR EACH ROW BEGIN' + #13#10 +
    'SET NEW.ev_ssz:=(SELECT IF((SELECT  MAX(EV_SSZ) from merlegjegy  WHERE YEAR(tavdatum)=YEAR(CURRENT_TIMESTAMP)) is NULL,1,(SELECT  MAX(EV_SSZ) from merlegjegy WHERE YEAR(tavdatum)=YEAR(CURRENT_TIMESTAMP))+1)) ;' + #13#10 +
    'SET NEW.sorszam:=CONCAT(CAST(YEAR(NEW.tavdatum) AS CHAR),''/'', LPAD(CAST(NEW.ev_ssz AS CHAR),6,''0''));' + #13#10 +
    'END//' + #13#10 +
    'DELIMITER ;' + #13#10 +
    'SET SQL_MODE=@OLDTMP_SQL_MODE;' + #13#10 +
    '' + #13#10 +
    'SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE=''STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION'';' + #13#10 +
    'DELIMITER //' + #13#10 +
    'CREATE TRIGGER `rak_szall_before_insert` BEFORE INSERT ON `rak_szall` FOR EACH ROW BEGIN' + #13#10 +
    'SET NEW.ev_ssz:=(SELECT IF((SELECT  MAX(EV_SSZ) from rak_szall  WHERE YEAR(datum)=YEAR(CURRENT_TIMESTAMP)) is NULL,1,(SELECT  MAX(EV_SSZ) from rak_szall WHERE YEAR(datum)=YEAR(CURRENT_TIMESTAMP))+1)) ;' + #13#10 +
    'SET NEW.sorszam:=CONCAT(CAST(YEAR(NEW.datum) AS CHAR),''/'', LPAD(CAST(NEW.ev_ssz AS CHAR),6,''0''));' + #13#10 +
    'END//' + #13#10 +
    'DELIMITER ;' + #13#10 +
    'SET SQL_MODE=@OLDTMP_SQL_MODE;' + #13#10 +
    '' + #13#10 +
    'DROP TABLE IF EXISTS `keszlet_nezet`;' + #13#10 +
    'CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `keszlet_nezet` AS SELECT k.t_id AS Term_id, term.kod AS Term_kod,term.nev AS Term_nev,' + #13#10 +
    'k.Tarolo_id, tar.nev AS Tarolo_nev,k.partner_id,p.kod AS Partner_kod,p.nev AS Partner_nev,' + #13#10 +
    'k.f_id AS felhasznalo_id,f.nev AS Felhasznalo_nev,k.menny,k.modositva,k.tort' + #13#10 +
    'FROM keszlet K' + #13#10 +
    'INNER JOIN termek term ON term.ID=k.t_id' + #13#10 +
    'INNER JOIN tarolok tar ON tar.id=k.tarolo_id' + #13#10 +
    'INNER JOIN partner p ON p.ID=k.partner_id' + #13#10 +
    'LEFT JOIN felhasz f ON f.id=k.f_id ;' + #13#10 +
    '' + #13#10 +
    'DROP TABLE IF EXISTS `partner_combo`;' + #13#10 +
    'CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `partner_combo` AS SELECT id,kod,nev,' + #13#10 +
    'CONCAT(RPAD(kod,20),'' '',RPAD(nev,100)) As combo,' + #13#10 +
    'CONCAT(irsz,'' '',telepules,'' '', if(kerulet<>'''',CONCAT(kerulet,'' ''),''''),if(kozterulet<>'''',CONCAT(kozterulet),'' ''),' + #13#10 +
    'if(kozt_jelleg<>'''',CONCAT('' '',kozt_jelleg),''''),if(hazszam<>'''',CONCAT('' '',hazszam),''''),if(epulet<>'''',CONCAT('' '',epulet),''''),' + #13#10 +
    'if(lepcsohaz<>'''',CONCAT('' '',lepcsohaz),''''),if(emelet<>'''',CONCAT('' '',emelet ),''''),' + #13#10 +
    'if(ajto<>'''',CONCAT('' '',ajto),'''')) AS cim' + #13#10 +
    'from partner ;' + #13#10 +
    '' + #13#10 +
    'DROP TABLE IF EXISTS `rak_szall_lista_nezet`;' + #13#10 +
    'CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `rak_szall_lista_nezet` AS SELECT r.*,rt.id AS rt_id,rt.termek_id,rt.termek_kod,rt.termek_nev,rt.mennyiseg,rt.tort' + #13#10 +
    'FROM rak_szall r' + #13#10 +
    'INNER JOIN rak_szall_tet rt ON rt.RK_id=R.id ;' + #13#10 +
    '' + #13#10 +
    '/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '''') */;' + #13#10 +
    '/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;' + #13#10 +
    '/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;' ,
    //2
    'ALTER TABLE forgalom ADD COLUMN IF NOT EXISTS kezi  boolean ' ,
    //3
    'ALTER TABLE merlegjegy ADD COLUMN IF NOT EXISTS elso_kezi boolean ' ,
    //4
    'ALTER TABLE merlegjegy ADD COLUMN IF NOT EXISTS masodik_kezi boolean '
    ,
    //5
    //tulajok tabla
    'CREATE TABLE IF NOT EXISTS `tulajok` (' + #13#10 +
     '	`ID` INT(11) NOT NULL AUTO_INCREMENT,' + #13#10 +
     '	`Nev` VARCHAR(80) NOT NULL DEFAULT '''' COLLATE ''utf8_general_ci'',' + #13#10 +
     '	`Cim` VARCHAR(200) NOT NULL DEFAULT '''' COLLATE ''utf8_general_ci'',' + #13#10 +
     '	`Adoszam` VARCHAR(20) NOT NULL DEFAULT '''' COLLATE ''utf8_general_ci'',' + #13#10 +
     '	`kuj` VARCHAR(20) NOT NULL DEFAULT '''' COLLATE ''utf8_general_ci'',' + #13#10 +
     '	`ktj` VARCHAR(20) NOT NULL DEFAULT '''' COLLATE ''utf8_general_ci'',' + #13#10 +
     '	`Elotag` VARCHAR(2) NOT NULL DEFAULT '''' COLLATE ''utf8_general_ci'',' + #13#10 +
     '	PRIMARY KEY (`ID`) USING BTREE' + #13#10 +
     ');'+ #13#10 +
    ''+ #13#10 +
    // Merlegjegy
    'ALTER TABLE merlegjegy ADD COLUMN IF NOT EXISTS `tul_id` INT(11) DEFAULT 0; ' + #13#10 +
    'ALTER TABLE merlegjegy ADD COLUMN IF NOT EXISTS `tul_nev` VARCHAR(80) NOT NULL DEFAULT '''' COLLATE ''utf8mb4_general_ci''; ' + #13#10 +
    'ALTER TABLE merlegjegy ADD COLUMN IF NOT EXISTS `tul_cim` VARCHAR(200) NOT NULL DEFAULT '''' COLLATE ''utf8mb4_general_ci''; ' + #13#10 +
    'ALTER TABLE merlegjegy ADD COLUMN IF NOT EXISTS `tul_adoszam` VARCHAR(20) NOT NULL DEFAULT '''' COLLATE ''utf8mb4_general_ci''; ' + #13#10 +
    'ALTER TABLE merlegjegy ADD COLUMN IF NOT EXISTS `tul_kuj` VARCHAR(20) NOT NULL DEFAULT '''' COLLATE ''utf8mb4_general_ci''; ' + #13#10 +
    'ALTER TABLE merlegjegy ADD COLUMN IF NOT EXISTS `tul_ktj` VARCHAR(20) NOT NULL DEFAULT '''' COLLATE ''utf8mb4_general_ci''; ' + #13#10 +
    'ALTER TABLE merlegjegy ADD COLUMN IF NOT EXISTS `tul_elotag` VARCHAR(2) NOT NULL DEFAULT '''' COLLATE ''utf8mb4_general_ci''; ' + #13#10 +
    //trigger létrehozása:merlegjegy_before_insert
     ' SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='+#39+'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION'+#39+';'+#13#10+
     ' DELIMITER //' +#13#10+
     ' CREATE OR REPLACE TRIGGER `merlegjegy_before_insert` BEFORE INSERT ON `merlegjegy` FOR EACH ROW BEGIN '+ #13#10 +
     'SET NEW.ev_ssz:=(SELECT IF((SELECT  MAX(EV_SSZ) from merlegjegy  WHERE YEAR(tavdatum)=YEAR(CURRENT_TIMESTAMP) and tul_id=NEW.tul_id) is NULL,1,(SELECT  MAX(EV_SSZ) from merlegjegy WHERE YEAR(tavdatum)=YEAR(CURRENT_TIMESTAMP) and tul_id=NEW.tul_id)+1' + ')) ;' + #13#10 +
     'SET NEW.sorszam:=CONCAT(NEW.tul_elotag, CAST(YEAR(NEW.tavdatum) AS CHAR),''/'', LPAD(CAST(NEW.ev_ssz AS CHAR),6,''0''));'+ #13#10 +
     ' END //'+ #13#10+
     ' DELIMITER ;'+#13#10+
     ' SET SQL_MODE=@OLDTMP_SQL_MODE;',
     //mérlegjegy partner 2
     'ALTER TABLE merlegjegy ADD COLUMN IF NOT EXISTS `P2_ID` INT(11) NULL DEFAULT 0;'+ #13#10 +
     'ALTER TABLE merlegjegy ADD COLUMN IF NOT EXISTS `P2_Kod` VARCHAR(15) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'';' + #13#10 +
     'ALTER TABLE merlegjegy ADD COLUMN IF NOT EXISTS	`P2_Nev` VARCHAR(80) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'';' + #13#10 +
     'ALTER TABLE merlegjegy ADD COLUMN IF NOT EXISTS	`P2_Cim` VARCHAR(100) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'';'+ #13#10 +
     'ALTER TABLE merlegjegy ADD COLUMN IF NOT EXISTS `P2_kuj` VARCHAR(20) NOT NULL DEFAULT '''' COLLATE ''utf8mb4_general_ci''; ' + #13#10 +
     'ALTER TABLE merlegjegy ADD COLUMN IF NOT EXISTS `P2_ktj` VARCHAR(20) NOT NULL DEFAULT '''' COLLATE ''utf8mb4_general_ci''; '+ #13#10 +
     //partner combo
     // 'DROP TABLE IF EXISTS `partner_combo`;' + #13#10 +
      'ALTER ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `partner_combo` AS SELECT id,kod,nev,adoszam,kuj,ktj,' + #13#10 +
      'CONCAT(kod,'' '',nev) As combo,' + #13#10 +
      'CONCAT(irsz,'' '',telepules,'' '', if(kerulet<>'''',CONCAT(kerulet,'' ''),''''),if(kozterulet<>'''',CONCAT(kozterulet),'' ''),' + #13#10 +
      'if(kozt_jelleg<>'''',CONCAT('' '',kozt_jelleg),''''),if(hazszam<>'''',CONCAT('' '',hazszam),''''),if(epulet<>'''',CONCAT('' '',epulet),''''),' + #13#10 +
      'if(lepcsohaz<>'''',CONCAT('' '',lepcsohaz),''''),if(emelet<>'''',CONCAT('' '',emelet ),''''),' + #13#10 +
      'if(ajto<>'''',CONCAT('' '',ajto),'''')) AS cim' + #13#10 +
      'from partner ;',
      //7
      //tulajok mod
      'ALTER TABLE tulajok ADD COLUMN IF NOT EXISTS `Irsz` VARCHAR(10) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'';' + #13#10 +
      'ALTER TABLE tulajok ADD COLUMN IF NOT EXISTS `Telepules` VARCHAR(30) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'';' + #13#10 +
      'ALTER TABLE tulajok ADD COLUMN IF NOT EXISTS `Kerulet` VARCHAR(5) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'';' + #13#10 +
      'ALTER TABLE tulajok ADD COLUMN IF NOT EXISTS `Kozterulet` VARCHAR(30) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'';' + #13#10 +
      'ALTER TABLE tulajok ADD COLUMN IF NOT EXISTS `Kozt_Jelleg` VARCHAR(10) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'';' + #13#10 +
      'ALTER TABLE tulajok ADD COLUMN IF NOT EXISTS `Hazszam` VARCHAR(5) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'';' + #13#10 +
      'ALTER TABLE tulajok ADD COLUMN IF NOT EXISTS `Epulet` VARCHAR(5) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'';' + #13#10 +
      'ALTER TABLE tulajok ADD COLUMN IF NOT EXISTS `Lepcsohaz` VARCHAR(5) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'';' + #13#10 +
      'ALTER TABLE tulajok ADD COLUMN IF NOT EXISTS `Emelet` VARCHAR(5) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'';' + #13#10 +
      'ALTER TABLE tulajok ADD COLUMN IF NOT EXISTS `Hrsz` VARCHAR(20) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'';'+ #13#10 +
      'ALTER TABLE tulajok ADD COLUMN IF NOT EXISTS `Email` VARCHAR(20) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'';'+ #13#10 +
      'ALTER TABLE tulajok ADD COLUMN IF NOT EXISTS `Telefon` VARCHAR(20) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'';'+ #13#10 +
      'ALTER TABLE tulajok ADD COLUMN IF NOT EXISTS `Ajto` VARCHAR(5) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'';' + #13#10 +
      //partner mod
      ''+ #13#10 +
      'ALTER TABLE partner ADD COLUMN IF NOT EXISTS	`Hrsz` VARCHAR(5) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'';'+ #13#10 +
      'ALTER TABLE partner ADD COLUMN IF NOT EXISTS `Email` VARCHAR(20) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'';'+ #13#10 +
      'ALTER TABLE partner ADD COLUMN IF NOT EXISTS `Telefon` VARCHAR(20) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'';'+ #13#10 +

      //partner combo
      ''+ #13#10 +
      'ALTER ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `partner_combo` AS SELECT id,kod,nev,adoszam,kuj,ktj,' + #13#10 +
      'irsz,telepules,kerulet,kozterulet,kozt_jelleg,hazszam,epulet,lepcsohaz,emelet,ajto,hrsz,'+ #13#10 +
      'email,telefon, CONCAT(kod,'' '',nev) As combo,' + #13#10 +
      'CONCAT(irsz,'' '',telepules,'' '', if(kerulet<>'''',CONCAT(kerulet,'' ''),''''),if(kozterulet<>'''',CONCAT(kozterulet),'' ''),' + #13#10 +
      'if(kozt_jelleg<>'''',CONCAT('' '',kozt_jelleg),''''),if(hazszam<>'''',CONCAT('' '',hazszam),''''),if(epulet<>'''',CONCAT('' '',epulet),''''),' + #13#10 +
      'if(lepcsohaz<>'''',CONCAT('' '',lepcsohaz),''''),if(emelet<>'''',CONCAT('' '',emelet ),''''),' + #13#10 +
      'if(ajto<>'''',CONCAT('' '',ajto),''''),if(hrsz<>'''',CONCAT('' '',hrsz),'''')) AS cim' + #13#10 +
      'from partner ;'+ #13#10 +
      ''+ #13#10 +
      //felrakodasi cimek tabla
      'CREATE TABLE IF NOT EXISTS `felrakodasi_cimek` (' + #13#10 +
      '	`ID` INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,' + #13#10 +
      '	`Tul_id` INT(11) NOT NULL,' + #13#10 +
      '	`Irsz` VARCHAR(10) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
      '	`Telepules` VARCHAR(30) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
      '	`Kozterulet` VARCHAR(30) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
      '	`Kozt_Jelleg` VARCHAR(10) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
      '	`Hazszam` VARCHAR(5) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
      '	`Epulet` VARCHAR(5) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
      '	`Lepcsohaz` VARCHAR(5) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
      '	`Emelet` VARCHAR(5) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
      '	`Ajto` VARCHAR(5) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
      '	`Hrsz` VARCHAR(20) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
      '	`Email` VARCHAR(20) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
      '	`Telefon` VARCHAR(20) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'');'+ #13#10 +
      ''+ #13#10 +
      //felrakodasi_cimek_nezet
      ' CREATE OR REPLACE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `felrakodasi_cimek_nezet`'+ #13#10 +
      ' AS SELECT id,tul_id,' + #13#10 +
      'irsz,telepules,kozterulet,kozt_jelleg,hazszam,epulet,lepcsohaz,emelet,ajto,hrsz,' + #13#10 +
      'email,telefon,' + #13#10 +
      'CONCAT(irsz,'' '',telepules,'' '', if(kozterulet<>'''',CONCAT(kozterulet),'' ''),' + #13#10 +
      'if(kozt_jelleg<>'''',CONCAT('' '',kozt_jelleg),''''),if(hazszam<>'''',CONCAT('' '',hazszam),''''),if(epulet<>'''',CONCAT('' '',epulet),''''),' + #13#10 +
      'if(lepcsohaz<>'''',CONCAT('' '',lepcsohaz),''''),if(emelet<>'''',CONCAT('' '',emelet ),''''),' + #13#10 +
      'if(ajto<>'''',CONCAT('' '',ajto),''''),if(hrsz<>'''',CONCAT('' '',hrsz),'''')) AS cim' + #13#10 +
      'from felrakodasi_cimek;',

      'CREATE TABLE IF NOT EXISTS `levonas_szovegek` (' + #13#10 +
     '	`ID` INT(11) NOT NULL AUTO_INCREMENT,' + #13#10 +
     '	`Szoveg` VARCHAR(100) NOT NULL DEFAULT '''' COLLATE ''utf8_general_ci'',' + #13#10 +
     '	PRIMARY KEY (`ID`) USING BTREE' + #13#10 +
     ');'+ #13#10 +
    ''+ #13#10 +
    'ALTER TABLE merlegjegy ADD COLUMN IF NOT EXISTS `levon_szoveg` VARCHAR(100) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'';' + #13#10 +
    'ALTER TABLE merlegjegy ADD COLUMN IF NOT EXISTS `levon_tomeg` INT(11) NULL DEFAULT 0;',
    //ewc
    'ALTER TABLE termek ADD COLUMN IF NOT EXISTS `ewc` VARCHAR(20) NULL DEFAULT '''' NULL COLLATE ''utf8mb4_general_ci'';' + #13#10 +
    'ALTER TABLE merlegjegy ADD COLUMN IF NOT EXISTS `ewc` VARCHAR(20) NULL DEFAULT '''' NULL COLLATE ''utf8mb4_general_ci'';'+ #13#10 +
    //partner combo
      ''+ #13#10 +
      'ALTER ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `partner_combo` AS SELECT id,kod,nev,adoszam,kuj,ktj,' + #13#10 +
      'irsz,telepules,kerulet,kozterulet,kozt_jelleg,hazszam,epulet,lepcsohaz,emelet,ajto,hrsz,'+ #13#10 +
      'email,telefon, CONCAT(nev,'' |'',kod) As combo,' + #13#10 +
      'CONCAT(irsz,'' '',telepules,'' '', if(kerulet<>'''',CONCAT(kerulet,'' ''),''''),if(kozterulet<>'''',CONCAT(kozterulet),'' ''),' + #13#10 +
      'if(kozt_jelleg<>'''',CONCAT('' '',kozt_jelleg),''''),if(hazszam<>'''',CONCAT('' '',hazszam),''''),if(epulet<>'''',CONCAT('' '',epulet),''''),' + #13#10 +
      'if(lepcsohaz<>'''',CONCAT('' '',lepcsohaz),''''),if(emelet<>'''',CONCAT('' '',emelet ),''''),' + #13#10 +
      'if(ajto<>'''',CONCAT('' '',ajto),''''),if(hrsz<>'''',CONCAT('' '',hrsz),'''')) AS cim' + #13#10 +
      'from partner ;'+ #13#10 +
    //tulajok cegjegyzek szam
    'ALTER TABLE tulajok ADD COLUMN IF NOT EXISTS `cjsz` VARCHAR(20) NULL DEFAULT '''' COLLATE ''utf8mb4_general_ci'';'+ #13#10 +
    'ALTER TABLE merlegjegy ADD COLUMN IF NOT EXISTS `tul_cjsz` VARCHAR(20) NULL DEFAULT '''' NULL COLLATE ''utf8mb4_general_ci'';'{+ #13#10 +}
    ,
    //10
    //lerakodasi cimek tabla
      'CREATE TABLE IF NOT EXISTS `lerakodasi_cimek` (' + #13#10 +
      '	`ID` INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,' + #13#10 +
      '	`Tul_id` INT(11) NOT NULL,' + #13#10 +
      '	`Irsz` VARCHAR(10) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
      '	`Telepules` VARCHAR(30) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
      '	`Kozterulet` VARCHAR(30) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
      '	`Kozt_Jelleg` VARCHAR(10) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
      '	`Hazszam` VARCHAR(5) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
      '	`Epulet` VARCHAR(5) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
      '	`Lepcsohaz` VARCHAR(5) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
      '	`Emelet` VARCHAR(5) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
      '	`Ajto` VARCHAR(5) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
      '	`Hrsz` VARCHAR(20) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
      '	`Email` VARCHAR(20) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
      '	`Telefon` VARCHAR(20) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'');'+ #13#10 +
      ''+ #13#10 +
      //lerakodasi_cimek_nezet
      ' CREATE OR REPLACE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `lerakodasi_cimek_nezet`'+ #13#10 +
      ' AS SELECT id,tul_id,' + #13#10 +
      'irsz,telepules,kozterulet,kozt_jelleg,hazszam,epulet,lepcsohaz,emelet,ajto,hrsz,' + #13#10 +
      'email,telefon,' + #13#10 +
      'CONCAT(irsz,'' '',telepules,'' '', if(kozterulet<>'''',CONCAT(kozterulet),'' ''),' + #13#10 +
      'if(kozt_jelleg<>'''',CONCAT('' '',kozt_jelleg),''''),if(hazszam<>'''',CONCAT('' '',hazszam),''''),if(epulet<>'''',CONCAT('' '',epulet),''''),' + #13#10 +
      'if(lepcsohaz<>'''',CONCAT('' '',lepcsohaz),''''),if(emelet<>'''',CONCAT('' '',emelet ),''''),' + #13#10 +
      'if(ajto<>'''',CONCAT('' '',ajto),''''),if(hrsz<>'''',CONCAT('' '',hrsz),'''')) AS cim' + #13#10 +
      'from lerakodasi_cimek;'
      ,
      //11
      //nyitbe tábla
      'CREATE TABLE IF NOT EXISTS `nyitbe` ('+#13#10+
      '`ID` int(11) NOT NULL AUTO_INCREMENT,'+#13#10+
      '`Sorszam` varchar(20) DEFAULT NULL,'+#13#10+
      '`Ev_ssz` int(11) DEFAULT NULL,'+#13#10+
      '`Eazon` varchar(30) DEFAULT NULL,'+#13#10+
      '`Storno` varchar(15) DEFAULT NULL,'+#13#10+
      '`Rendszam` varchar(20) DEFAULT NULL,'+#13#10+
      '`Rendszam2` varchar(20) DEFAULT NULL,'+#13#10+
      '`P_ID` int(11) DEFAULT NULL,'+#13#10+
      '`P_Kod` varchar(15) DEFAULT NULL,'+#13#10+
      '`P_Nev` varchar(80) DEFAULT NULL COLLATE ''utf8mb4_general_ci'','+#13#10+
      '`P_Cim` varchar(100) DEFAULT NULL COLLATE ''utf8mb4_general_ci'','+#13#10+
      '`Termek_ID` int(11) DEFAULT NULL,'+#13#10+
      '`Termek_Kod` varchar(30) DEFAULT NULL,'+#13#10+
      '`Termek_Nev` varchar(100) DEFAULT NULL COLLATE ''utf8mb4_general_ci'','+#13#10+
      '`Termek_afa` decimal(12,2) DEFAULT 0.00,'+#13#10+
      '`termek_ar` decimal(12,2) DEFAULT 0.00,'+#13#10+
      '`Szallitolev` varchar(20) DEFAULT NULL,'+#13#10+
      '`Megjegyzes` varchar(200) DEFAULT NULL COLLATE ''utf8mb4_general_ci'','+#13#10+
      '`Tomegbe` int(11) DEFAULT NULL,'+#13#10+
      '`Tomegki` int(11) DEFAULT NULL,'+#13#10+
      '`Erkdatum` date DEFAULT NULL,'+#13#10+
      '`Erkido` time DEFAULT NULL,'+#13#10+
      '`Tavdatum` date DEFAULT NULL,'+#13#10+
      '`Tavido` time DEFAULT NULL,'+#13#10+
      '`Felhasznalo` varchar(50) DEFAULT NULL COLLATE ''utf8mb4_general_ci'','+#13#10+
      '`irany` varchar(30) DEFAULT NULL,'+#13#10+
      '`Brutto` int(11) DEFAULT NULL,'+#13#10+
      '`Tara` int(11) DEFAULT NULL,'+#13#10+
      '`Netto` int(11) DEFAULT NULL,'+#13#10+
      '`SzNetto` int(11) DEFAULT NULL,'+#13#10+
      '`merlegelo` varchar(50) DEFAULT NULL,'+#13#10+
      '`kuj` varchar(30) NOT NULL DEFAULT '''','+#13#10+
      '`ktj` varchar(30) NOT NULL DEFAULT '''','+#13#10+
      '`ekaer` varchar(30) NOT NULL DEFAULT '''','+#13#10+
      '`psz` int(11) DEFAULT 0,'+#13#10+
      '`alapnedv` decimal(12,2) DEFAULT 0.00,'+#13#10+
      '`nedv` decimal(12,2) DEFAULT 0.00,'+#13#10+
      '`tisztasag` decimal(12,2) DEFAULT 0.00,'+#13#10+
      '`tortszaz` decimal(12,2) DEFAULT 0.00,'+#13#10+
      '`feherje` decimal(12,2) DEFAULT 0.00,'+#13#10+
      '`olaj` decimal(12,2) DEFAULT 0.00,'+#13#10+
      '`esesszam` decimal(12,2) DEFAULT 0.00,'+#13#10+
      '`hekto` decimal(12,2) DEFAULT 0.00,'+#13#10+
      '`egysegtomeg` decimal(12,2) DEFAULT 0.00,'+#13#10+
      '`kerekites` tinyint(1) DEFAULT 0,'+#13#10+
      '`kukorica` tinyint(1) DEFAULT 0,'+#13#10+
      '`buzaminoseg` varchar(50) DEFAULT '''','+#13#10+
      '`mennyiseg` decimal(12,2) DEFAULT 0.00,'+#13#10+
      '`tarolasi_dij` decimal(12,2) DEFAULT 0.00,'+#13#10+
      '`szaritasi_dij` decimal(12,2) DEFAULT 0.00,'+#13#10+
      '`tisztitasi_dij` decimal(12,2) DEFAULT 0.00,'+#13#10+
      '`tarolo_id` int(11) DEFAULT 0,'+#13#10+
      '`tarolo` varchar(50) DEFAULT '''''''''''','+#13#10+
      '`elso_kezi` tinyint(1) DEFAULT NULL,'+#13#10+
      '`masodik_kezi` tinyint(1) DEFAULT NULL,'+#13#10+
      '`tul_id` int(11) DEFAULT 0,'+#13#10+
      '`tul_nev` varchar(80) NOT NULL DEFAULT '''','+#13#10+
      '`tul_cim` varchar(200) NOT NULL DEFAULT '''','+#13#10+
      '`tul_adoszam` varchar(20) NOT NULL DEFAULT '''','+#13#10+
      '`tul_kuj` varchar(20) NOT NULL DEFAULT '''','+#13#10+
      '`tul_ktj` varchar(20) NOT NULL DEFAULT '''','+#13#10+
      '`tul_elotag` varchar(2) NOT NULL DEFAULT '''','+#13#10+
      '`P2_ID` int(11) DEFAULT 0,'+#13#10+
      '`P2_Kod` varchar(15) DEFAULT NULL,'+#13#10+
      '`P2_Nev` varchar(80) DEFAULT NULL,'+#13#10+
      '`P2_Cim` varchar(100) DEFAULT NULL,'+#13#10+
      '`P2_kuj` varchar(20) NOT NULL DEFAULT '''','+#13#10+
      '`P2_ktj` varchar(20) NOT NULL DEFAULT '''','+#13#10+
      '`levon_szoveg` varchar(100) DEFAULT NULL,'+#13#10+
      '`levon_tomeg` int(11) DEFAULT 0,'+#13#10+
      '`ewc` varchar(20) DEFAULT '''','+#13#10+
      '`tul_cjsz` varchar(20) DEFAULT '''','+#13#10+
      'PRIMARY KEY (`ID`)'+#13#10+
      ') ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;'

      ,//12
      'ALTER TABLE partner MODIFY email VARCHAR(50);'+#13#10+
      'ALTER TABLE partner MODIFY kozterulet VARCHAR(150);'+#13#10+
      'ALTER TABLE partner MODIFY nev VARCHAR(150);'//+#13#10+
     ,
      //13

    'CREATE TABLE IF NOT EXISTS `modositott_merlegjegyek` (' + #13#10 +
    '	`ID` INT(11) NOT NULL AUTO_INCREMENT,' + #13#10 +
    '	`Sorszam` VARCHAR(20) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`Ev_ssz` INT(11) NULL DEFAULT NULL,' + #13#10 +
    '	`Eazon` VARCHAR(30) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`Storno` VARCHAR(15) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`Rendszam` VARCHAR(20) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`Rendszam2` VARCHAR(20) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`P_ID` INT(11) NULL DEFAULT NULL,' + #13#10 +
    '	`P_Kod` VARCHAR(15) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`P_Nev` VARCHAR(80) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`P_Cim` VARCHAR(100) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`Termek_ID` INT(11) NULL DEFAULT NULL,' + #13#10 +
    '	`Termek_Kod` VARCHAR(30) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`Termek_Nev` VARCHAR(100) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`Termek_afa` DECIMAL(12,2) NULL DEFAULT ''0.00'',' + #13#10 +
    '	`termek_ar` DECIMAL(12,2) NULL DEFAULT ''0.00'',' + #13#10 +
    '	`Szallitolev` VARCHAR(20) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`Megjegyzes` VARCHAR(200) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`Tomegbe` INT(11) NULL DEFAULT NULL,' + #13#10 +
    '	`Tomegki` INT(11) NULL DEFAULT NULL,' + #13#10 +
    '	`Erkdatum` DATE NULL DEFAULT NULL,' + #13#10 +
    '	`Erkido` TIME NULL DEFAULT NULL,' + #13#10 +
    '	`Tavdatum` DATE NULL DEFAULT NULL,' + #13#10 +
    '	`Tavido` TIME NULL DEFAULT NULL,' + #13#10 +
    '	`Felhasznalo` VARCHAR(50) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`irany` VARCHAR(30) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`Brutto` INT(11) NULL DEFAULT NULL,' + #13#10 +
    '	`Tara` INT(11) NULL DEFAULT NULL,' + #13#10 +
    '	`Netto` INT(11) NULL DEFAULT NULL,' + #13#10 +
    '	`SzNetto` INT(11) NULL DEFAULT NULL,' + #13#10 +
    '	`merlegelo` VARCHAR(50) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`kuj` VARCHAR(30) NOT NULL DEFAULT '''' COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`ktj` VARCHAR(30) NOT NULL DEFAULT '''' COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`ekaer` VARCHAR(30) NOT NULL DEFAULT '''' COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`psz` INT(11) NULL DEFAULT ''0'',' + #13#10 +
    '	`alapnedv` DECIMAL(12,2) NULL DEFAULT ''0.00'',' + #13#10 +
    '	`nedv` DECIMAL(12,2) NULL DEFAULT ''0.00'',' + #13#10 +
    '	`tisztasag` DECIMAL(12,2) NULL DEFAULT ''0.00'',' + #13#10 +
    '	`tortszaz` DECIMAL(12,2) NULL DEFAULT ''0.00'',' + #13#10 +
    '	`feherje` DECIMAL(12,2) NULL DEFAULT ''0.00'',' + #13#10 +
    '	`olaj` DECIMAL(12,2) NULL DEFAULT ''0.00'',' + #13#10 +
    '	`esesszam` DECIMAL(12,2) NULL DEFAULT ''0.00'',' + #13#10 +
    '	`hekto` DECIMAL(12,2) NULL DEFAULT ''0.00'',' + #13#10 +
    '	`egysegtomeg` DECIMAL(12,2) NULL DEFAULT ''0.00'',' + #13#10 +
    '	`kerekites` TINYINT(1) NULL DEFAULT ''0'',' + #13#10 +
    '	`kukorica` TINYINT(1) NULL DEFAULT ''0'',' + #13#10 +
    '	`buzaminoseg` VARCHAR(50) NULL DEFAULT '''' COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`mennyiseg` DECIMAL(12,2) NULL DEFAULT ''0.00'',' + #13#10 +
    '	`tarolasi_dij` DECIMAL(12,2) NULL DEFAULT ''0.00'',' + #13#10 +
    '	`szaritasi_dij` DECIMAL(12,2) NULL DEFAULT ''0.00'',' + #13#10 +
    '	`tisztitasi_dij` DECIMAL(12,2) NULL DEFAULT ''0.00'',' + #13#10 +
    '	`tarolo_id` INT(11) NULL DEFAULT ''0'',' + #13#10 +
    '	`tarolo` VARCHAR(50) NULL DEFAULT ''\''\'''' COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`elso_kezi` TINYINT(1) NULL DEFAULT NULL,' + #13#10 +
    '	`masodik_kezi` TINYINT(1) NULL DEFAULT NULL,' + #13#10 +
    '	`tul_id` INT(11) NULL DEFAULT ''0'',' + #13#10 +
    '	`tul_nev` VARCHAR(80) NOT NULL DEFAULT '''' COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`tul_cim` VARCHAR(200) NOT NULL DEFAULT '''' COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`tul_adoszam` VARCHAR(20) NOT NULL DEFAULT '''' COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`tul_kuj` VARCHAR(20) NOT NULL DEFAULT '''' COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`tul_ktj` VARCHAR(20) NOT NULL DEFAULT '''' COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`tul_elotag` VARCHAR(2) NOT NULL DEFAULT '''' COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`P2_ID` INT(11) NULL DEFAULT ''0'',' + #13#10 +
    '	`P2_Kod` VARCHAR(15) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`P2_Nev` VARCHAR(80) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`P2_Cim` VARCHAR(100) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`P2_kuj` VARCHAR(20) NOT NULL DEFAULT '''' COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`P2_ktj` VARCHAR(20) NOT NULL DEFAULT '''' COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`levon_szoveg` VARCHAR(100) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`levon_tomeg` INT(11) NULL DEFAULT ''0'',' + #13#10 +
    '	`ewc` VARCHAR(20) NULL DEFAULT '''' COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`tul_cjsz` VARCHAR(20) NULL DEFAULT '''' COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`mod_idobelyeg` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,' + #13#10 +
    'PRIMARY KEY (`ID`)'+#13#10+
    ') ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;' + #13#10 +
    ''+ #13#10 +
    'CREATE TABLE IF NOT EXISTS `cfg` (' + #13#10 +
    '`ID` INT(11) NOT NULL AUTO_INCREMENT,' + #13#10 +
    '`csoport` VARCHAR(50) NOT NULL DEFAULT '''' ,' + #13#10 +
    '`tulajdonsag` VARCHAR(50) NOT NULL DEFAULT '''',' + #13#10 +
    '`tipus` VARCHAR(10) NOT NULL DEFAULT '''',' + #13#10 +
    '`ertek` VARCHAR(200) NOT NULL DEFAULT '''' ,' + #13#10 +
    '`magyarazat` VARCHAR(200) NOT NULL DEFAULT '''' ,'+#13#10+
    'PRIMARY KEY (`ID`)'+#13#10+
    ') ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;'
    ,
    'CREATE TABLE IF NOT EXISTS `irsz` (' + #13#10 +
    '`id` int(11) NOT NULL AUTO_INCREMENT,' + #13#10 +
    '`irsz` varchar(10) NOT NULL DEFAULT '''',' + #13#10 +
    '`megye` varchar(50) NOT NULL DEFAULT '''',' + #13#10 +
    '`varos` varchar(50) NOT NULL DEFAULT '''',' + #13#10 +
    'PRIMARY KEY (`id`)' + #13#10 +
    ') ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;' + #13#10 +
    '' //+ #13#10 +
    ,
    //14
    //szárított tört szemek tömege
    'ALTER TABLE merlegjegy ADD COLUMN IF NOT EXISTS szaraz_tort_szemek INT(11) DEFAULT 0;'
    ,
    //15
    //szárított tört szemek tömege a módosított mérlegjegyek táblába
    'ALTER TABLE modositott_merlegjegyek ADD COLUMN IF NOT EXISTS szaraz_tort_szemek INT(11) DEFAULT 0;'
    ,
     //16
     //szárított tört szemek tömege a nyitbe táblába
    'ALTER TABLE nyitbe ADD COLUMN IF NOT EXISTS szaraz_tort_szemek INT(11) DEFAULT 0;' + #13#10 +
     //17
     //Sorszam a nyitbe tablaba, a kamionok hívása miatt kell
    'ALTER TABLE nyitbe ADD COLUMN IF NOT EXISTS Hivo_sorszam INT(11) DEFAULT 0;'
    ,
     //18
      //Hardver beallitasok
    'CREATE TABLE IF NOT EXISTS `hardver_beallitasok` (' + #13#10 +
    '	`ID` INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,' + #13#10 +
    '	`Leiras` VARCHAR(30) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`Eszkoznev` VARCHAR(20) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`Merleg` VARCHAR(10) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`Szamitogep` VARCHAR(40) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`Tipus` VARCHAR(15) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`Egyedi_azon` VARCHAR(15) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`Port_v_IP_Cim` VARCHAR(20) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    '	`IP_port` INT(11) DEFAULT 0,' + #13#10 +
    '	`Bekapcs_Kimenet_szam` INT(11) DEFAULT 0,' + #13#10 +
    '	`Kikapcs_Kimenet_szam` INT(11) DEFAULT 0,' + #13#10 +
    ' `Aktiv` int(11) DEFAULT 0,' + #13#10 +
    ' `Hibas` int(11) DEFAULT 0,' + #13#10 +
    ' `Alaphelyzet` int(11) DEFAULT 0,' + #13#10 +
    '	`Gomb_szoveg` VARCHAR(20) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    ' `Gomb_szam` int(11) DEFAULT 0,' + #13#10 +
    '	`Felirat_szoveg` VARCHAR(20) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'',' + #13#10 +
    ' `Felirat_szam` int(11) DEFAULT 0,' + #13#10 +
    ' `Varakozas_ms` int(11) DEFAULT 0,' + #13#10 +
    '	`Rtsp` VARCHAR(180) NULL DEFAULT NULL COLLATE ''utf8mb4_general_ci'' ' +
    ') ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;' + #13#10
    ,  //19
     //Ha a PLC program használja, hogy hibás, erre a címre kell írni (Regi sorompo hiba)
    'ALTER TABLE hardver_beallitasok ADD COLUMN IF NOT EXISTS Hiba_kimenet_szam INT(11) DEFAULT 0;'
     ,//20
     'ALTER TABLE `nyitbe`	CHANGE COLUMN `Szallitolev` `Szallitolev` VARCHAR(200) NULL DEFAULT NULL  AFTER `termek_ar`;'+#13#10 +
     'ALTER TABLE `merlegjegy`	CHANGE COLUMN `Szallitolev` `Szallitolev` VARCHAR(200) NULL DEFAULT NULL  AFTER `termek_ar`;'  +#13#10
     ,//21
     'ALTER TABLE `nyitbe`	ADD COLUMN IF NOT EXISTS `Szabalyos_meres`  VARCHAR(20) NULL DEFAULT NULL ;'+#13#10 +
     'ALTER TABLE `merlegjegy`	ADD COLUMN IF NOT EXISTS `Szabalyos_meres`  VARCHAR(20) NULL DEFAULT NULL ;'  +#13#10
     ,
     'ALTER TABLE `nyitbe`	ADD COLUMN IF NOT EXISTS `Kepnev1`  VARCHAR(180) NULL DEFAULT NULL ;'+#13#10 +
     'ALTER TABLE `nyitbe`	ADD COLUMN IF NOT EXISTS `Kepnev2`  VARCHAR(180) NULL DEFAULT NULL ;'+#13#10 +
     'ALTER TABLE `nyitbe`	ADD COLUMN IF NOT EXISTS `Kepnev3`  VARCHAR(180) NULL DEFAULT NULL ;'+#13#10 +
     'ALTER TABLE `nyitbe`	ADD COLUMN IF NOT EXISTS `Kepnev4`  VARCHAR(180) NULL DEFAULT NULL ;'+#13#10 +
     'ALTER TABLE `merlegjegy`	ADD COLUMN IF NOT EXISTS `Kepnev1`  VARCHAR(180) NULL DEFAULT NULL ;'  +#13#10+
     'ALTER TABLE `merlegjegy`	ADD COLUMN IF NOT EXISTS `Kepnev2`  VARCHAR(180) NULL DEFAULT NULL ;'  +#13#10+
     'ALTER TABLE `merlegjegy`	ADD COLUMN IF NOT EXISTS `Kepnev3`  VARCHAR(180) NULL DEFAULT NULL ;'  +#13#10+
     'ALTER TABLE `merlegjegy`	ADD COLUMN IF NOT EXISTS `Kepnev4`  VARCHAR(180) NULL DEFAULT NULL ;'  +#13#10
    );



implementation


end.
