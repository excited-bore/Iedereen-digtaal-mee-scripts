@echo off

call "%~dp0winget.bat"

winget install --id Lenovo.SystemUpdate --silent --accept-package-agreements --accept-source-agreements
"C:\Program Files (x86)\Lenovo\System Update\tvsu.exe" /CM -search A -action INSTALL -noicon -rebootprompt -nolicense
