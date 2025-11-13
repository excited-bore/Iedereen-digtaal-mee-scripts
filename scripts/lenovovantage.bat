@echo off

call "%~dp0winget.bat"

REM Lenovo Vantage

winget install --id 9WZDNCRFJ4MV --silent --accept-package-agreements --accept-source-agreements
