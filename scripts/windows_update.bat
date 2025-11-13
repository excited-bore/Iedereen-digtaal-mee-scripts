@echo off

REM Checking for updates
Echo Updating Windows..
wuauclt /detectnow /updatenow
Echo Windows Update finished
