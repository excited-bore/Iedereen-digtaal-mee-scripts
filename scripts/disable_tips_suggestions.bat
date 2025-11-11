@echo off
echo Turning off suggestions for tips in startmenu

powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "Start-Process PowerShell -ArgumentList '-ExecutionPolicy Bypass','-Command','Set-ItemProperty \"HKCU:\\SOFTWARE\\Policies\\Microsoft\\Windows\\CloudContent\" DisableSoftLanding 1' -Verb RunAs"
