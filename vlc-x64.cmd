for /f "tokens=*" %%a in ('wget -qO- "http://ftp.free.org/mirrors/videolan/vlc/last/win64/" ^| sed "s/>\|</\n/g" ^| grep "^vlc.*exe$"') do wget "http://ftp.free.org/mirrors/videolan/vlc/last/win64/%%a" -P %1



