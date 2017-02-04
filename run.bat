@echo off
echo Unzipping...
powershell -NoProfile -ExecutionPolicy Unrestricted .\unzip.ps1
echo Unzip Completed!
pause > nul
exit