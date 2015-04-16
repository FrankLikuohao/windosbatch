echo off
rem http://forum.twbts.com/thread-10153-1-1.html
echo %date%
echo %time%

set Quoted= %1
FOR /F "delims=" %%I IN (%Quoted%) DO SET Unquoted=%%I
rem echo Archive_%date:~0,4%%date:~-10,2%%date:~-7,2%_%time:~0,2%%time:~3,2%%time:~6,2%.zip
rem echo  %0 d[%1] f[%2] State[%3] previousState[%3]> "Archive_%date:~0,4%%date:~5,2%%date:~8,2%_%time:~0,2%%time:~3,2%%time:~6,2%.txt"
set datetime=%date:~0,4%%date:~5,2%%date:~8,2%_%time:~0,2%%time:~3,2%%time:~6,2%
set datetime=%datetime: =%
echo  "copy %1 p:\new  /D/K/E/Y/C/I/H begin at %datetime% " >> "%Unquoted%.%datetime%.xcopy.begin.txt"
rem log file
echo  "echo  from utoorent %0 d[%1] f[%2] State[%3] previousState[%3] " >> p:\new\log\download.log
echo  "copy %1 p:\new  /D/K/E/Y/C/I/H begin at %datetime% " >> p:\new\log\download.log
rem remove space

echo datetime = [  %datetime% ]
rem local message show
echo "frank copy processing"

rem copy and show processing status
rem xcopy %1 "p:\new\%Unquoted%" /D/K/E/Y/C/I/H | wtee.exe "p:\new\%Unquoted%.%datetime%.xcopy.finish.txt"
rem robocopy.exe http://www.microsoft.com/en-us/download/details.aspx?id=17657
rem ROBOCOPY source destination /MIR
ROBOCOPY i:\finishdownload  p:\new\ /e /xo /eta /TEE /np /LOG+:"p:\new\log\download.log" /xf *.torrent *.bat *.txt *.exe /xd .git
del %1.%datetime%.xcopy.begin.txt

set datetime=%date:~0,4%%date:~5,2%%date:~8,2%_%time:~0,2%%time:~3,2%%time:~6,2%
set datetime=%datetime: =%
echo [ copy %1 "p:\new\%Unquoted%" /D/K/E/Y/C/I/H | wtee.exe "p:\new\%Unquoted%.%datetime%.xcopy.finish.txt" 

rem log file
rem type "p:\new\%Unquoted%.%datetime%.xcopy.finish.txt" >> p:\new\log\download.log
rem remote signalling

rem mkdir p:\new\%1.%datetime%.xcopy.finish
rem echo  "echo  from utoorent %0 d[%1] f[%2] State[%3] previousState[%3] " >> p:\new\%1.%datetime%.xcopy.finish\%1.%datetime%.xcopy.finish.txt
rem echo  "xcopy %1 p:\new\%1   /D/K/E/Y/C/I/H finish at %datetime% " >> "p:\new\%Unquoted%.%datetime%.xcopy.finish.txt"

rem local signalling
rem mkdir %1.%datetime%.xcopy.finish
echo  "copy %1 p:\new\%1   /D/K/E/Y/C/I/H finish at %datetime% " >> %1.%datetime%.xcopy.finish/%1.%datetime%.xcopy.finish.txt
echo  "copy %1 p:\new\%1   /D/K/E/Y/C/I/H finish at %datetime% " >> p:\new\log\download.log

