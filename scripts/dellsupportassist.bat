@echo off

call "%~dp0check_wget.bat"

if not exist %TEMP%\DellSupport\SupportAssistinstaller.exe (
    mkdir %TEMP%\DellSupport\
    cd %TEMP%\DellSupport
    wget -nv --https-only --show-progress https://downloads.dell.com/serviceability/catalog/SupportAssistinstaller.exe
)

if exist %TEMP%\DellSupport\SupportAssistinstaller.exe (
    powershell -NoProfile -ExecutionPolicy Bypass -Command "%TEMP%\DellSupport\SupportAssistinstaller.exe"
)

if defined INS_WGET (
    winget remove --id JernejSimoncic.Wget --silent --accept-package-agreements --accept-source-agreements
)
