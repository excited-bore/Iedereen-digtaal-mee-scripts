@echo off
echo Disabling taskview and widgets

powershell -NoProfile -ExecutionPolicy Bypass -Command ^
  "Start-Process powershell -Verb RunAs -ArgumentList '-NoProfile','-ExecutionPolicy','Bypass','-Command','New-Item -Path \"HKLM:\\SOFTWARE\\Policies\\Microsoft\\Dsh\" -Force; New-ItemProperty -Path \"HKLM:\\SOFTWARE\\Policies\\Microsoft\\Dsh\" -Name \"AllowNewsAndInterests\" -PropertyType DWord -Value 0 -Force; New-Item -Path \"HKCU:\\Software\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Advanced\" -Force; New-ItemProperty -Path \"HKCU:\\Software\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Advanced\" -Name \"ShowTaskViewButton\" -PropertyType DWord -Value 0 -Force' -Wait"
