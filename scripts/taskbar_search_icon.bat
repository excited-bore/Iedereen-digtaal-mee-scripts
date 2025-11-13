@echo off
REM 0 = Hide the search box/icon entirely
REM 1 = Show the search icon only (magnifying glass)
REM 2 = Show the full search box
echo Changing the taskbars' search box into a search icon (magnifying glass only)
powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "$key = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Search'; Set-ItemProperty $key SearchboxTaskbarMode 1;"
