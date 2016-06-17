wget http://download.teamviewer.com/download/TeamViewer_Setup.exe -P %1
echo for /f "tokens=*" %%%%a in ('dir /b "%%~dp0TeamViewer*.exe"') do start /wait "" "%%~dp0%%%%a" /S>> "%1\FirstRun.bat"
