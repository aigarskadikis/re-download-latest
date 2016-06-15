@echo off
wget --no-check-certificate -S --spider -o output.log "https://notepad-plus-plus.org/download/"
for /f "tokens=*" %%a in ('^
grep "\[following\]$" output.log ^|
sed "s/^.*: \| \[following\]//g"') do (
for /f "tokens=*" %%b in ('^
wget --no-check-certificate -qO- "%%a" ^|
sed "s/\d034/\n/g" ^|
grep "npp.*exe" ^|
sed "s/^/https:\/\/notepad-plus-plus\.org/"') do (
wget --no-check-certificate "%%b" -P "%1"
)
)
del /q output.log 
echo for /f "tokens=*" %%%%a in ('dir /b "%%~dp0npp*.exe"') do start /wait "" "%%~dp0%%%%a" /S >> "%1\FirstRun.bat"
