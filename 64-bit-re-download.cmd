@echo off
if not exist "%userprofile%\Desktop\x64\FirstRun" md "%userprofile%\Desktop\x64\FirstRun"
for /f "tokens=*" %%a in ('dir /b "*x64*cmd"') do call "%%a" %userprofile%\Desktop\x64\FirstRun
