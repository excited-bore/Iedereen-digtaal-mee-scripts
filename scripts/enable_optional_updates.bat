@echo off

Echo Enabling Optional Updates  
powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "Start-Process PowerShell -ArgumentList '-ExecutionPolicy Bypass','-Command','New-Item \"HKLM:\\SOFTWARE\\Policies\\Microsoft\\Windows\\WindowsUpdate\"-Name \"AU\"; Set-ItemProperty \"HKLM:\\SOFTWARE\\Policies\\Microsoft\\Windows\\WindowsUpdate\\AU\" NoAutoUpdate 0; Set-ItemProperty \"HKLM:\\SOFTWARE\\Policies\\Microsoft\\Windows\\WindowsUpdate\\AU\" AllowOptionalContent 2' -Verb RunAs"  
