for /f "tokens=*" %%a in ('wget -qO- "http://www.tightvnc.com/download.php" ^| sed "s/\d034/\n/g" ^| grep "http.*download.*tightvnc-.*-setup-32bit\.msi$"') do wget "%%a" -P %1
echo for /f "tokens=*" %%%%a in ('dir /b "%%~dp0tightvnc*-32bit.msi"') do %%systemroot%%\system32\msiexec /i "%%~dp0%%%%a" /qb ADDLOCAL="Viewer">> "%1\FirstRun.bat"
