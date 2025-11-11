@echo OFF

echo SSD (C:)
powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "$disk = Get-WmiObject Win32_LogicalDisk -Filter \"DeviceID='C:'\" | Select-Object Size, FreeSpace; Write-Host (\"{0}GB total\" -f [math]::truncate($disk.Size / 1GB));"
