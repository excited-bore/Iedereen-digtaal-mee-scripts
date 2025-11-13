@echo off

powershell -NoProfile -ExecutionPolicy Bypass -File "check_winget.ps1"

winget install --id Dell.CommandUpdate --accept-package-agreements --accept-source-agreements

C:\Program Files (x86)\Dell\CommandUpdate\dcu-cli.exe /scan
C:\Program Files (x86)\Dell\CommandUpdate\dcu-cli.exe /applyupdates
