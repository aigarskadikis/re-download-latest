for /f "tokens=*" %%a in ('wget --no-check-certificate -qO- "https://handbrake.fr/downloads.php" ^| sed "s/\d034/\n/g" ^| grep "exe$" ^| sed "s/^/https:\/\/handbrake\.fr\//"') do echo %%a
pause
