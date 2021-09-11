/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE IF NOT EXISTS `labatlan` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `labatlan`;

CREATE TABLE IF NOT EXISTS `felhasz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nev` varchar(50) DEFAULT NULL,
  `jelszo` varchar(32) DEFAULT NULL,
  `aktiv` int(11) DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ID_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

CREATE TABLE IF NOT EXISTS `merlegelok` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Nev` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Nev` (`Nev`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

CREATE TABLE `partner_combo` (
	`id` INT(11) NOT NULL,
	`kod` VARCHAR(15) NULL COLLATE 'utf8mb4_general_ci',
	`nev` VARCHAR(80) NULL COLLATE 'utf8mb4_general_ci',
	`combo` VARCHAR(121) NULL COLLATE 'utf8mb4_general_ci',
	`cim` VARCHAR(119) NULL COLLATE 'utf8mb4_general_ci'
) ENGINE=MyISAM;

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

CREATE TABLE IF NOT EXISTS `rendszam` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Rendszam` varchar(20) DEFAULT NULL,
  `Partner_ID` int(11) DEFAULT NULL,
  `tara` int(11) DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `tarolok` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nev` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

CREATE TABLE IF NOT EXISTS `tipus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nev` varchar(30) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `merlegjegy_before_insert` BEFORE INSERT ON `merlegjegy` FOR EACH ROW BEGIN 
SET NEW.ev_ssz:=(SELECT IF((SELECT  MAX(EV_SSZ) from merlegjegy  WHERE YEAR(tavdatum)=YEAR(CURRENT_TIMESTAMP)) is NULL,1,(SELECT  MAX(EV_SSZ) from merlegjegy WHERE YEAR(tavdatum)=YEAR(CURRENT_TIMESTAMP))+1)) ;
SET NEW.sorszam:=CONCAT(CAST(YEAR(NEW.tavdatum) AS CHAR),'/', LPAD(CAST(NEW.ev_ssz AS CHAR),6,'0'));
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `rak_szall_before_insert` BEFORE INSERT ON `rak_szall` FOR EACH ROW BEGIN
SET NEW.ev_ssz:=(SELECT IF((SELECT  MAX(EV_SSZ) from rak_szall  WHERE YEAR(datum)=YEAR(CURRENT_TIMESTAMP)) is NULL,1,(SELECT  MAX(EV_SSZ) from rak_szall WHERE YEAR(datum)=YEAR(CURRENT_TIMESTAMP))+1)) ;
SET NEW.sorszam:=CONCAT(CAST(YEAR(NEW.datum) AS CHAR),'/', LPAD(CAST(NEW.ev_ssz AS CHAR),6,'0'));
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

DROP TABLE IF EXISTS `keszlet_nezet`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `keszlet_nezet` AS SELECT k.t_id AS Term_id, term.kod AS Term_kod,term.nev AS Term_nev,
k.Tarolo_id, tar.nev AS Tarolo_nev,k.partner_id,p.kod AS Partner_kod,p.nev AS Partner_nev,
k.f_id AS felhasznalo_id,f.nev AS Felhasznalo_nev,k.menny,k.modositva,k.tort
FROM keszlet K
INNER JOIN termek term ON term.ID=k.t_id
INNER JOIN tarolok tar ON tar.id=k.tarolo_id
INNER JOIN partner p ON p.ID=k.partner_id
LEFT JOIN felhasz f ON f.id=k.f_id ;

DROP TABLE IF EXISTS `partner_combo`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `partner_combo` AS SELECT id,kod,nev,
CONCAT(RPAD(kod,20),' ',RPAD(nev,100)) As combo,
CONCAT(irsz,' ',telepules,' ', if(kerulet<>'',CONCAT(kerulet,' '),''),if(kozterulet<>'',CONCAT(kozterulet),' '),
if(kozt_jelleg<>'',CONCAT(' ',kozt_jelleg),''),if(hazszam<>'',CONCAT(' ',hazszam),''),if(epulet<>'',CONCAT(' ',epulet),''),
if(lepcsohaz<>'',CONCAT(' ',lepcsohaz),''),if(emelet<>'',CONCAT(' ',emelet ),''),
if(ajto<>'',CONCAT(' ',ajto),'')) AS cim
from partner ;

DROP TABLE IF EXISTS `rak_szall_lista_nezet`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `rak_szall_lista_nezet` AS SELECT r.*,rt.id AS rt_id,rt.termek_id,rt.termek_kod,rt.termek_nev,rt.mennyiseg,rt.tort 
FROM rak_szall r
INNER JOIN rak_szall_tet rt ON rt.RK_id=R.id ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
