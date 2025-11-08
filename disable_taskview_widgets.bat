@echo off
powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "$key = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced'; $key1 = 'HKCU:\SOFTWARE\Policies\Microsoft\Dsh'; Set-ItemProperty $key ShowTaskViewButton 0; Set-ItemProperty $key1 AllowNewsAndInterests 0"
