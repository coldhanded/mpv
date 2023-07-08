@echo off
busybox mv -f ffmpeg.exe ffmpeg-yt.exe & ^
busybox mv -f ffmpeg-git.exe ffmpeg.exe & ^
powershell -nol -nop ./updater.ps1 & ^
busybox mv -f ffmpeg.exe ffmpeg-git.exe & ^
busybox mv -f ffmpeg-yt.exe ffmpeg.exe & ^
busybox wget "https://github.com/yt-dlp/ffmpeg-builds/releases/download/latest/ffmpeg-master-latest-win64-gpl.zip" & ^
busybox unzip -oq ffmpeg-master-latest-win64-gpl.zip & ^
busybox mv -f ffmpeg-master-latest-win64-gpl/bin/* . & ^
busybox rm -rf ffmpeg-master-latest-win64-gpl* & ^
yt-dlp --update-to nightly & ^
echo ok