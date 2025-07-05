@echo off
cd /d %~dp0

:: Zähler aus Datei lesen
set /p count=<version.txt

:: Commit-Nachricht bauen
set msg=Version %count%

:: Git-Befehle ausführen
git add .
git commit -m "%msg%"
git push

:: Zähler erhöhen
set /a count+=1
echo %count% > version.txt

pause
