for /f "tokens=*" %%a in ('wget --no-check-certificate -qO- "https://www.virtualbox.org/wiki/Downloads" ^| sed "s/\d034/\n/g" ^| grep "exe" ^| head -1') do wget --no-check-certificate %%a -P %1
echo for /f "tokens=*" %%%%a in ('dir /b "%%~dp0VirtualBox*.exe"') do start /wait "" "%%~dp0%%%%a" --silent>> "%1\FirstRun.bat"
