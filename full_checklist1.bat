@echo off

echo Synchronise clock before resuming to update Windows / drivers.
pause


REM Optional Updates
REM Windows Update
call "%~dp0scripts\windows_update.bat"
call "%~dp0scripts\enable_optional_updates.bat"

REM Turn off password for user
call "%~dp0scripts\no_password.bat"

REM Check if winget is installed. If not, try and fix
call "%~dp0scripts\check_winget.bat"

REM Try and install updaters and support assisters
powershell -NoProfile -ExecutionPolicy Bypass -File ".\scripts\update-drivers.ps1"
