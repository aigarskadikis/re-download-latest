for /f "tokens=*" %%a in ('wget --no-check-certificate -qO- "https://winscp.net/eng/download.php" ^| sed "s/\d034/\n/g" ^| grep "winscp.*setup.*exe$" ^| sed "s/\.\./https:\/\/winscp\.net/"') do wget --no-check-certificate "%%a" -P %1
echo for /f "tokens=*" %%%%a in ('dir /b "%%~dp0winscp*setup.exe"') do start /wait "" "%%~dp0%%%%a" /SILENT>> "%1\FirstRun.bat"
