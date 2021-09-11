unit Db_modU;

interface
 const
 modok: array [1..3] of string=
   (
   'ALTER TABLE `merlegjegy` ADD COLUMN IF NOT EXISTS `merlegelo` VARCHAR(50);',
   {  'DELIMITER $$ '
    +' IF NOT EXISTS( SELECT NULL'
            +' FROM INFORMATION_SCHEMA.COLUMNS'
           +' WHERE table_name = merlegjegy'
           +'  AND table_schema = stadler'
           +'  AND column_name = merlegelo)  THEN'
           +'  ALTER TABLE `merlegjegy` ADD `merlegelo` varchar(50) NOT NULL default'+#39+''+#39+''
           +'END IF$$'
           +'DELIMITER ; ',}


    ' CREATE TABLE IF NOT EXISTS `merlegelok` ('
	 +'`ID` INT(11) NOT NULL AUTO_INCREMENT,'
	 +'`Nev` VARCHAR(50) NOT NULL DEFAULT '+#39+''+#39+' ,'
	 +'PRIMARY KEY (`ID`),'
	 +'UNIQUE INDEX `Nev` (`Nev`))'
   +'ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;',

    'ALTER TABLE `partner` ADD COLUMN IF NOT EXISTS `kuj` VARCHAR(30) NOT NULL DEFAULT '+#39+''+#39+';'
   +'ALTER TABLE `partner` ADD COLUMN IF NOT EXISTS `ktj` VARCHAR(30) NOT NULL DEFAULT '+#39+''+#39+';'
   +'ALTER TABLE `merlegjegy` ADD COLUMN IF NOT EXISTS `kuj` VARCHAR(30) NOT NULL DEFAULT '+#39+''+#39+';'
   +'ALTER TABLE `merlegjegy` ADD COLUMN IF NOT EXISTS `ktj` VARCHAR(30) NOT NULL DEFAULT '+#39+''+#39+';'
  );





implementation

end.
