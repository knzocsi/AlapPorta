echo off
set CUR_YYYY=%date:~0,4%
set CUR_MM=%date:~5,2%
set CUR_DD=%date:~8,2%
set CUR_HH=%time:~0,2%
if %CUR_HH% lss 10 (set CUR_HH=0%time:~1,1%)
 
set CUR_NN=%time:~3,2%
set CUR_SS=%time:~6,2%
set CUR_MS=%time:~9,2%
 
set SUBFILENAME=%CUR_YYYY%%CUR_MM%%CUR_DD%-%CUR_HH%%CUR_NN%%CUR_SS%
rem mkdir %SUBFILENAME%
rem echo %CUR_YYYY%
rem echo %CUR_MM%
rem echo "Welcome Here!" > access_%SUBFILENAME%.log

"c:\Program Files\MariaDB 10.5\bin\mariabackup.exe" --backup  --databases=ekaer --target-dir=c:\mentes\adatbazis  --user=mariabackup --password=MaBa2023!  
rem --compress 
7z.exe a mentes_%SUBFILENAME%.zip c:\mentes\adatbazis\ 
del c:\mentes\adatbazis\*.* /Q /S
start c:\mentes\Ftp_fel.exe
