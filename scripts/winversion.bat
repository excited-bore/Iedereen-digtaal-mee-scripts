@echo off
echo Windows Version:
powershell -NoProfile -ExecutionPolicy Bypass -Command "(Get-Item 'HKLM:SOFTWARE\Microsoft\Windows NT\CurrentVersion').GetValue('DisplayVersion')"
