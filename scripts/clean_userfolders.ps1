Write-Host "Cleaning up Contacts"
Remove-Item -Path "C:\User\$env:USERNAME\Contacts\" -Recurse -Force -ErrorAction SilentlyContinue

Write-Host "Cleaning up Desktop"
Remove-Item -Path "C:\User\$env:USERNAME\Desktop\" -Recurse -Force -ErrorAction SilentlyContinue

Write-Host "Cleaning up Downloads"
Remove-Item -Path "C:\User\$env:USERNAME\Downloads\" -Recurse -Force -ErrorAction SilentlyContinue

Write-Host "Cleaning up Documents"
Remove-Item -Path "C:\User\$env:USERNAME\Documents\" -Recurse -Force -ErrorAction SilentlyContinue

Write-Host "Cleaning up Onedrive"
Remove-Item -Path "C:\User\$env:USERNAME\Onedrive\" -Recurse -Force -ErrorAction SilentlyContinue

Write-Host "Cleaning up Pictures"
Remove-Item -Path "C:\User\$env:USERNAME\Pictures\" -Recurse -Force -ErrorAction SilentlyContinue

Write-Host "Cleaning up Saved Games"
Remove-Item -Path "C:\User\$env:USERNAME\Saved Games\" -Recurse -Force -ErrorAction SilentlyContinue

Write-Host "Cleaning up Searches"
Remove-Item -Path "C:\User\$env:USERNAME\Searches\" -Recurse -Force -ErrorAction SilentlyContinue

Write-Host "Cleaning up Videos"
Remove-Item -Path "C:\User\$env:USERNAME\Videos\" -Recurse -Force -ErrorAction SilentlyContinue
