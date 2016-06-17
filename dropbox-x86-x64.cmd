wget --no-check-certificate "https://www.dropbox.com/download?full=1&plat=win" -P %1
echo for /f "tokens=*" %%%%a in ('dir /b "%%~dp0Dropbox*.exe"') do start /wait "" "%%~dp0%%%%a" /S>> "%1\FirstRun.bat"
