@echo off
Echo Making sure no password set for user 'admin'
powershell -NoProfile -Command "Start-Process PowerShell -ArgumentList '-ExecutionPolicy Bypass','-Command','\"net user admin \"\"\"\"\"\"\"' -Verb RunAs"
