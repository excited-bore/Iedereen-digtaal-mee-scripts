@echo off
echo Turning off windows spotlight for lockscreen
powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "$key = 'HKCU:\Software\Policies\Microsoft\Windows\CloudContent'; Set-ItemProperty $key DisableSpotlightCollectionOnDesktop 1;"
