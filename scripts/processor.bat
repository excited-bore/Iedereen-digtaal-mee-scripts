@echo off
echo Processor: 
powershell -NoProfile -ExecutionPolicy Bypass -Command "Get-CimInstance Win32_Processor | Format-Table Name -HideTableHeader"
