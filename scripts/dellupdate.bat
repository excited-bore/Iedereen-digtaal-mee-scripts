@echo off

call "%~dp0check_winget.bat"

winget install --id Dell.CommandUpdate --accept-package-agreements --accept-source-agreements

"C:\Program Files (x86)\Dell\CommandUpdate\dcu-cli.exe" /scan
"C:\Program Files (x86)\Dell\CommandUpdate\dcu-cli.exe" /applyupdates
