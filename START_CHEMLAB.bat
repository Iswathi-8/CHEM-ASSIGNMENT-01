@echo off
setlocal
cd /d "%~dp0"
title Cheminformatics Virtual Laboratory
color 0A
if not exist ".venv\Scripts\python.exe" (
 echo Please run INSTALL_FIRST.bat once before starting the lab.
 pause
 exit /b 1
)
".venv\Scripts\python.exe" -c "import flask" >nul 2>&1
if errorlevel 1 (
 echo Web dependencies missing. Run INSTALL_FIRST.bat again.
 pause
 exit /b 1
)
start "" "http://127.0.0.1:5000"
echo ChemLab is running. Keep this window open.
echo Close this window or press Ctrl+C to stop.
".venv\Scripts\python.exe" app.py
pause
