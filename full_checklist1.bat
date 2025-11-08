@echo off

echo Synchronise clock before resuming to update Windows / drivers.
pause

REM Windows Update
call "%~dp0windows_update.bat"

REM Optional Updates
call "%~dp0enable_optional_updates.bat"

REM Turn off password for admin
call "%~dp0turn_off_password_admin.bat"

REM Check if winget is installed. If not, try and fix
call "%~dp0check_winget.bat"

REM Try and install updaters and support assisters
call "%~dp0update-drivers.bat"
