@echo off
for /f "tokens=*" %%a in ('dir /b "*x86*cmd"') do echo %%a
pause
