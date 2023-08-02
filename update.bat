@echo off
echo Searching for updates . . .
busybox rm ffmpeg* & ^
powershell -nol -nop updater.ps1 & ^
busybox mv -f ffmpeg.exe ffmpeg-git.exe & ^
busybox mv -f installer/updater.ps1 . & ^
busybox rm -rf doc mpv installer d3dcompiler_*.dll updater.bat & ^
busybox wget "https://github.com/yt-dlp/ffmpeg-builds/releases/download/latest/ffmpeg-master-latest-win64-gpl.zip" & ^
busybox unzip -oq ffmpeg-master-latest-win64-gpl.zip & ^
busybox mv -f ffmpeg-master-latest-win64-gpl/bin/* . & ^
busybox rm -rf ffmpeg-master-latest-win64-gpl* & ^
yt-dlp --update-to nightly & ^
echo --------------------------------
echo Update complete!
pause