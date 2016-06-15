@echo off
for /f "tokens=*" %%a in ('wget --no-check-certificate -qO- "https://www.mozilla.org/en-US/firefox/all/" ^| sed "s/\d034/\n/g" ^| grep "^https.*download.mozilla.*win64.*en-US"') do wget --no-check-certificate "%%a" -P %1 
echo for /f "tokens=*" %%%%a in ('dir /b "%%~dp0Firefox*Setup*.exe"') do start /wait "" "%%~dp0%%%%a" /SILENT >> "%1\FirstRun.bat"
