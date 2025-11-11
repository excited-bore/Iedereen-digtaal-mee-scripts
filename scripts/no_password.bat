@echo off
Echo Making sure no password set for user
powershell -NoProfile -Command "Start-Process PowerShell -ArgumentList '-ExecutionPolicy Bypass','-Command','\"net user $env:USERNAME \"\"\"\"\"\"\"' -Verb RunAs"
