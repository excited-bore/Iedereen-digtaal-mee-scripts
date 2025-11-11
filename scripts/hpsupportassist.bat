@echo off

call "%~dp0check_wget.bat"

mkdir %TEMP%\HpSupport\
cd %TEMP%\HpSupport
wget -nv --https-only --show-progress https://ftp.hp.com/pub/softpaq/sp160001-160500/sp160330.exe
powershell -NoProfile -ExecutionPolicy Bypass -Command "%TEMP%\HpSupport\sp160330.exe"

if defined INS_WGET (
    winget remove --id JernejSimoncic.Wget --silent --accept-package-agreements --accept-source-agreements
)

