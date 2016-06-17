for /f "tokens=*" %%a in ('wget -qO- "http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html" ^| sed "s/\d034/\n/g" ^| grep "http.*latest.*putty-.*-installer.*exe$"') do wget --no-check-certificate "%%a" -P %1
echo for /f "tokens=*" %%%%a in ('dir /b "%%~dp0putty*installer.exe"') do start /wait "" "%%~dp0%%%%a" /SILENT>> "%1\FirstRun.bat"
