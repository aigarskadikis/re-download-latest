@echo off
if exist "%userprofile%\Desktop\x86" rd "%userprofile%\Desktop\x86" /Q /S
if not exist "%userprofile%\Desktop\x86\FirstRun" md "%userprofile%\Desktop\x86\FirstRun"
echo @echo off > "%userprofile%\Desktop\x86\FirstRun\FirstRun.bat"
for /f "tokens=*" %%a in ('dir /b "*x86*cmd"') do call "%%a" %userprofile%\Desktop\x86\FirstRun
