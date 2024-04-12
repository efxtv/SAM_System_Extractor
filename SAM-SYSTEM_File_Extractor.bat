@echo off
reg.exe save "HKLM\SAM" "C:\Users\demo\Desktop\SAM"
reg.exe save "HKLM\SYSTEM" "C:\Users\demo\Desktop\SYSTEM"
echo SAM registry key saved.
pause
