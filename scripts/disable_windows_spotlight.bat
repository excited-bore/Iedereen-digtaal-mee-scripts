@echo off
echo Turning off windows spotlight for lockscreen

powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "Start-Process PowerShell -ArgumentList '-ExecutionPolicy Bypass','-Command','Set-ItemProperty \"HKCU:\\Software\\Policies\\Microsoft\\Windows\\CloudContent\" DisableSpotlightCollectionOnDesktop 1' -Verb RunAs"
