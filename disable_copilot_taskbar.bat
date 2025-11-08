@echo off
echo Removing copilot from taskbar
powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "$key = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced'; Set-ItemProperty $key ShowCopilotButton 0;"
