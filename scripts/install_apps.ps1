where winget >null 2>&1

if ( $? ){
    if (-Not (winget list -q Adobe.Acrobat.Reader.64-bit)){ 
        Write-Host "Installing Adobe Acrobat Reader"
        winget install --id Adobe.Acrobat.Reader.64-bit --accept-package-agreements --accept-source-agreements
    }
    if (-Not (winget list -q VideoLAN.VLC)){ 
        Write-Host "Installing VLC"
        winget install --id VideoLAN.VLC --accept-package-agreements --accept-source-agreements
    }

    if (-Not (winget list -q BelgianGovernment.eIDViewer)){ 
        Write-Host "Installing Eid middleware and Eid Viewer"
        winget install --id BelgianGovernment.eIDViewer --accept-package-agreements --accept-source-agreements
        winget install --id BelgianGovernment.eIDmiddleware --accept-package-agreements --accept-source-agreements
    }

    if (-Not (winget list -q TheDocumentFoundation.LibreOffice)){ 
        Write-Host "Installing Libreoffice"
        winget install --id TheDocumentFoundation.LibreOffice --accept-package-agreements --accept-source-agreements
    }
    
    if (-Not (winget list -q Mozilla.Firefox.nl)){ 
        Write-Host "Installing Firefox"
        winget install --id Mozilla.Firefox.nl --accept-package-agreements --accept-source-agreements
    }
    
    if (-Not (winget list -q Google.Chrome)){ 
        Write-Host "Installing Chrome"
        winget install --id Google.Chrome --accept-package-agreements --accept-source-agreements
    }
    #if (-Not (winget list -q 7zip.7zip)){ 
    #    Write-Host "Installing 7zip"
    #    winget install --id 7zip.7zip --accept-package-agreements --accept-source-agreements
    #}
}
