Write-Host "Move onedrive to overflow menu"

$key = 'HKCU:\Control Panel\NotifyIconSettings\16006572209258084918';

Set-ItemProperty $key -Name "IsPromoted" 0; 