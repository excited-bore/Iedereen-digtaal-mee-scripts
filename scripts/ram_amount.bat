@echo OFF

echo Ram: 
:: Display RAM stick count and size (e.g. "4 X 16GB")

:: Use PowerShell to query memory information
for /f "tokens=*" %%A in ('powershell -NoProfile -ExecutionPolicy Bypass ^
  "(Get-CimInstance Win32_PhysicalMemory | ForEach-Object { $_.Capacity / 1GB } | Group-Object | ForEach-Object { '{0} X {1}GB' -f $_.Count, [int]$_.Name })"') do (
  echo %%A
)
