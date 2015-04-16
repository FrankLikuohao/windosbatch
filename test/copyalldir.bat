@echo off
SETLOCAL ENABLEEXTENSIONS
:loop

rem dir /b *.attach
for /f "tokens=*" %%f in ('dir *. /AD /b') do (
SETLOCAL
  echo "process files in dir ["%%f" ]"
  finish.bat "%%f" 
  ENDLOCAL
)
 sleep.exe  60 /quiet
 goto loop