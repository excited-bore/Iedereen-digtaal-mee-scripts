Write-Host "Setting diagnostic feedback frequency to never" 
$key = 'HKCU:\SOFTWARE\Microsoft\Siuf\Rules'; 
if ( -Not (Test-Path -Path $key)) { 
    New-Item -Path $key -Force | Out-Null 
} 

Set-ItemProperty $key NumberOfSIUFInPeriod 0; 

if (Get-ItemProperty $key PeriodInNanoSeconds -ErrorAction SilentlyContinue) { 
    Remove-ItemProperty $key PeriodInNanoSeconds; 
}
