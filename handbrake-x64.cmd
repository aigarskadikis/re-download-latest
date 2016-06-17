@echo off
for /f "tokens=*" %%a in ('^
wget --no-check-certificate -qO- "https://handbrake.fr/downloads.php" ^|
sed "s/\d034/\n/g" ^|
grep "exe$" ^|
sed "s/^/https:\/\/handbrake\.fr\//"') do (
wget --no-check-certificate -S --spider -o output.log "%%a"
for /f "tokens=*" %%b in ('^
grep -A99 "^Resolving" output.log ^|
sed "s/http/\nhttp/g" ^|
sed "s/exe/exe\n/g" ^|
grep "^http.*x86_64.*exe$" ^|
head -1') do (
wget --no-check-certificate "%%b" -P "%1"
del /q output.log 
)
)
echo for /f %%%%a in ('dir /b "%%~dp0HandBrake-*-x86_64-*.exe"') do start /wait "" "%%~dp0%%%%a" /S>> "%1\FirstRun.bat"
