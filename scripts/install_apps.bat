@echo off

call "%~dp0check_winget.bat"

where winget >nul 2>&1(
    echo Installing Adobe Acrobat Reader
    winget install --id Adobe.Acrobat.Reader.64-bit --accept-package-agreements --accept-source-agreements
    echo "Installing VLC"
    winget install --id VideoLAN.VLC --accept-package-agreements --accept-source-agreements
    echo "Installing Eid middleware and Eid Viewer"
    winget install --id BelgianGovernment.eIDViewer --accept-package-agreements --accept-source-agreements
    winget install --id BelgianGovernment.eIDmiddleware --accept-package-agreements --accept-source-agreements
    echo "Installing Libreoffice"
    winget install --id TheDocumentFoundation.LibreOffice --accept-package-agreements --accept-source-agreements
    echo "Installing Firefox"
    winget install --id Mozilla.Firefox.nl --accept-package-agreements --accept-source-agreements
    echo "Installing Chrome"
    winget install --id Google.Chrome --accept-package-agreements --accept-source-agreements
    REM echo "Installing 7zip"
    REM winget install --id 7zip.7zip --accept-package-agreements --accept-source-agreements
)
