@echo OFF

echo Ram: 
powershell -NoProfile -ExecutionPolicy Bypass -Command "$sticks = (Get-CimInstance Win32_PhysicalMemory  | Format-Table -AutoSize BankLabel | Select-Object -Skip 4).Length; $amount = [math]::Round(((Get-CimInstance Win32_PhysicalMemory | Measure-Object -Property Capacity -Sum).Sum / 1GB) / $sticks); Write-Host \"$sticks X $amount GB\""

