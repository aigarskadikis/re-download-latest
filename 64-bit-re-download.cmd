@echo off
for /f "tokens=*" %%a in ('dir /b "*x64*cmd"') do call "%%a"
