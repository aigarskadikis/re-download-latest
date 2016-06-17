for /f "tokens=*" %%a in ('wget -qO- "http://download.deluge-torrent.org/windows/?C=M;O=D" ^| sed "s/<\|>/\n/g" ^| grep "^deluge.*setup" ^| head -1 ^| sed "s/^/http:\/\/download\.deluge-torrent\.org\/windows\//"') do wget "%%a" -P %1
echo for /f "tokens=*" %%%%a in ('dir /b "%%~dp0deluge*setup.exe"') do start /wait "" "%%~dp0%%%%a" /S>> "%1\FirstRun.bat"
