for /f "tokens=*" %%a in ('wget --no-check-certificate -qO- "https://sourceforge.net/projects/sevenzip/rss?path=/7-Zip" ^| grep "link.*7z.*\.msi" ^| grep -v "\-x64" ^| head -1 ^| sed "s/^.*http/http/g;s/msi.*$/msi/g"') do wget --no-check-certificate %%a -P %1
echo for /f "tokens=*" %%%%a in ('dir /b "%%~dp07z*.msi"') do %%systemroot%%\system32\msiexec /i "%%~dp0%%%%a" /qb>> "%1\FirstRun.bat"
