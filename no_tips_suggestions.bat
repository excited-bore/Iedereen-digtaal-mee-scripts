@echo off
echo Turning off suggestions for tips in startmenu
powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "$key = 'HKCU:\SOFTWARE\Policies\Microsoft\Windows\CloudContent'; Set-ItemProperty $key DisableSoftLanding 1"
