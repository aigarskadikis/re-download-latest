@echo off
if not exist "%userprofile%\Desktop\x86\FirstRun" md "%userprofile%\Desktop\x86\FirstRun"
for /f "tokens=*" %%a in ('dir /b "*x86*cmd"') do call "%%a" %userprofile%\Desktop\x86\FirstRun
