@echo off

where wget >nul 2>&1 || (
    
    call "%~dp0winget.bat"
    
    set "INS_WGET=1" 
    echo Installing wget 
    winget install --id JernejSimoncic.Wget --silent --accept-package-agreements --accept-source-agreements
)

