@echo off
echo Turning off accountrelated notifications
powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "$key = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced'; Set-ItemProperty $key Start_AccountNotifications 0;"
