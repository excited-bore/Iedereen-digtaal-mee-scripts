@echo off
echo Serialnumber:
powershell -NoProfile -ExecutionPolicy Bypass -Command "Get-CimInstance Win32_BIOS | Format-Table SerialNumber -HideTableHeader"
