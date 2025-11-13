@echo off

REM Apps installeren...
powershell -NoProfile -ExecutionPolicy Bypass -File ".\scripts\install_apps.ps1"

REM Setting file explorer options...
call "%~dp0scripts\fileExplorer.bat"

REM Setting keyboard...
call "%~dp0scripts\qwerty_azerty.bat"

REM Setting diagnostic feedback frequency...
powershell -NoProfile -ExecutionPolicy Bypass -File ".\scripts\feedback_never.ps1"

REM Disabling lockscreen notifications and notification sounds...
call "%~dp0scripts\disable_sound_or_lockscreen_notifications.bat"

REM Checking camera...
call "%~dp0scripts\check_camera.bat"

REM Checking microphone...
call "%~dp0scripts\check_microphone.bat"

REM Checking speakers...
call "%~dp0scripts\check_sound.bat"

REM Checking keyboard...
call "%~dp0scripts\check_keyboard.bat"

REM Disabling taskview and widgets...
call "%~dp0scripts\disable_taskview_widgets.bat"

REM Turn searchbar into search icon...
call "%~dp0scripts\taskbar_search_icon.bat"

REM Remove copilot from taskbar...
call "%~dp0scripts\disable_copilot_taskbar.bat"

REM Disable windows spotlight on lockscreen...
call "%~dp0scripts\disable_windows_spotlight.bat"

REM Turning off 'fun facts, tips and tricks'...
call "%~dp0scripts\disable_facts_tips_tricks.bat"

REM Turning off suggestions for tips...
call "%~dp0scripts\disable_tips_suggestions.bat"

REM Turning off accountrelated notifications...
call "%~dp0scripts\no_account_notifications.bat"

REM Putting 'This PC' shortcut on desktop...
powershell -NoProfile -ExecutionPolicy Bypass -File ".\scripts\add_mypc_desktop_icon.ps1


REM Drive storage
call "%~dp0scripts\drive_space.bat"

REM Ram Amount
call "%~dp0scripts\ram_amount.bat"

REM Processor
call "%~dp0scripts\processor.bat"

REM Windows Version
call "%~dp0scripts\winversion.bat"

REM Serial number
call "%~dp0scripts\serialnumber.bat"

pause