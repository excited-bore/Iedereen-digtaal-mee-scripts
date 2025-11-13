powershell -NoProfile -ExecutionPolicy Bypass -File ".\scripts\check_winget.ps1"

if ((winget list -q HP.ImageAssistant) -eq 'No installed package found matching input criteria.'){
    winget install --id HP.ImageAssistant --silent --accept-package-agreements --accept-source-agreements
}

Start-Process "C:\SWSetup\HPImageAssistant\HPImageAssistant.exe" -ArgumentList "/Action:Install /AutoCleanup /Category:BIOS,Drivers,Firmware /Silent" -Wait 
