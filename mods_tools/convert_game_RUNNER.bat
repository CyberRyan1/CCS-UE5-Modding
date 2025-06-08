:: had to bypass the execution policy, as it was in conflict with it (see the second line from bottom)

@echo off
powershell -ExecutionPolicy Bypass -File "%~dp0convert_game.ps1"
pause