if ( -Not ($command = Get-Command wget -ErrorAction SilentlyContinue )) {
    
    powershell -NoProfile -ExecutionPolicy Bypass -File ".\scripts\check_winget.ps1"
    
    $INS_WGET=1 
    Write-Host "Installing wget" 
    winget install --id JernejSimoncic.Wget --silent --accept-package-agreements --accept-source-agreements
}

