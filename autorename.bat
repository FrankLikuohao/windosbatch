@echo off
SETLOCAL ENABLEEXTENSIONS
:loop

rem dir /b *.attach
for /f "tokens=*" %%f in ('dir /b *.attach') do (
SETLOCAL
  echo "check .attach file [%%f ]"
  echo move %%f %%f.torrent
  move %%f %%f.torrent
  ENDLOCAL
)
 sleep.exe  30 /quiet
 goto loop