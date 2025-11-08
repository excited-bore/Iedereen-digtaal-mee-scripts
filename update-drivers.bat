@echo off
setlocal enabledelayedexpansion

:: Get manufacturer
for /f "skip=1 tokens=*" %%M in ('wmic computersystem get manufacturer') do (
    set "manufacturer=%%M"
    goto :gotManu
)
:gotManu

:: Trim trailing spaces
call :TrimTrailing "%manufacturer%" manufacturer

echo Manufacturer: '%manufacturer%'

if /i "%manufacturer%"=="HP" set HP=1
if /i "%manufacturer%"=="Hewlett-Packard" set HP=1

if /i "%manufacturer%"=="Dell Inc." (
    echo This is a Dell system. Installing Dell Commandupdate...
    winget install --id Dell.CommandUpdate --accept-package-agreements --accept-source-agreements
    "C:\Program Files (x86)\Dell\CommandUpdate\dcu-cli.exe" /scan
    "C:\Program Files (x86)\Dell\CommandUpdate\dcu-cli.exe" /applyupdates
    
    REM Now dellsupportassist 
    call "%~dp0check_winget.bat" 
    
    mkdir %TEMP%\DellSupport\
    cd %TEMP%\DellSupport
    wget2 -q https://downloads.dell.com/serviceability/catalog/SupportAssistinstaller.exe
    powershell -NoProfile -ExecutionPolicy Bypass -Command "%TEMP%\DellSupport\SupportAssistinstaller.exe"
    
    if defined INS_WGET (
        winget remove --id GNU.Wget2 --silent --accept-package-agreements --accept-source-agreements
    )
) else if defined HP (
    echo This is a HP system. Installing HP ImageAssistant...
    winget install --id HP.ImageAssistant --silent --accept-package-agreements --accept-source-agreements
    "C:\SWSetup\HPImageAssistant\HPImageAssistant.exe" /Action:Install /AutoCleanup /Category:BIOS,Drivers,Firmware /Silent
   
    call "%~dp0check_winget.bat"
    
    REM Now HP Support Assist
    
    where wget2 >nul 2>&1 || (
        set "INS_WGET=1" 
        winget install --id GNU.Wget2 --silent --accept-package-agreements --accept-source-agreements
    ) 

    mkdir %TEMP%\HpSupport\
    cd %TEMP%\HpSupport
    wget2 -q https://ftp.hp.com/pub/softpaq/sp160001-160500/sp160330.exe
    powershell -NoProfile -ExecutionPolicy Bypass -Command "%TEMP%\HpSupport\sp160330.exe"

    if defined INS_WGET (
        winget remove --id GNU.Wget2 --silent --accept-package-agreements --accept-source-agreements
    )

) else if /i "%manufacturer%"=="LENOVO" (
    echo This is a Lenovo system. Installing Lenovo SystemUpdate...
    winget install --id Lenovo.SystemUpdate --silent --accept-package-agreements --accept-source-agreements
    "C:\Program Files (x86)\Lenovo\System Update\tvsu.exe" /CM -search A -action INSTALL -noicon -rebootprompt -nolicense
) else if /i "%manufacturer%"=="ASUSTeK COMPUTER INC." (
    echo This is an ASUS system.
) else if /i "%manufacturer%"=="Acer" (
    echo This is an Acer system.
) else if /i "%manufacturer%"=="Gigabyte Technology Co., Ltd." (
    echo This is a Gigabyte system.
) else (
    echo Unknown system.
)

echo Driverupdates ready
pause
exit /b

:: -----------------------
:: Subroutine: Trim trailing spaces from variables (f.ex. for gigabyte, 'wmic computersystem get manufacturer' would give us "Gigabyte Technology Co., Ltd.  ")
:: -----------------------
:TrimTrailing
:: Get first argument
:: The '~' removes potential quotes ("My argument" becomes My argument)
set "str=%~1"
:loop
if not "%str:~-1%"==" " goto trimDone
set "str=%str:~0,-1%"
goto loop
:trimDone
set "%2=%str%"
exit /b
