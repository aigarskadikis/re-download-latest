for /f "tokens=*" %%a in ('wget -qO- "http://ftp.free.org/mirrors/videolan/vlc/last/win64/" ^| sed "s/>\|</\n/g" ^| grep "^vlc.*exe$"') do wget "http://ftp.free.org/mirrors/videolan/vlc/last/win64/%%a" -P %1
echo for /f "tokens=*" %%%%a in ('dir /b "%%~dp0vlc*win64.exe"') do start /wait "" "%%~dp0%%%%a" /S>> "%1\FirstRun.bat"
