@echo off
echo Turning off 'fun facts, tips and tricks'
powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "$key = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager'; Set-ItemProperty $key RotatingLockScreenOverlayEnabled 0; Set-ItemProperty $key SubscribedContent-338387Enabled 0"
