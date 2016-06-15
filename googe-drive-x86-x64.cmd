wget --no-check-certificate https://dl.google.com/drive/gsync_enterprise.msi -P %1
echo %%systemroot%%\system32\msiexec /i "%%~dp0gsync_enterprise.msi" /qb >> "%1\FirstRun.bat"
