<<<<<<< HEAD
echo off
rem http://forum.twbts.com/thread-10153-1-1.html
echo %date%
echo %time%
rem echo Archive_%date:~0,4%%date:~-10,2%%date:~-7,2%_%time:~0,2%%time:~3,2%%time:~6,2%.zip
rem echo  %0 d[%1] f[%2] State[%3] previousState[%3]> "Archive_%date:~0,4%%date:~5,2%%date:~8,2%_%time:~0,2%%time:~3,2%%time:~6,2%.txt"
set datetime=%date:~0,4%%date:~5,2%%date:~8,2%_%time:~0,2%%time:~3,2%%time:~6,2%
rem remove space
set datetime=%datetime: =%
echo datetime = [  %datetime% ]
echo [ process xcopy  %1 to  p:\new\%1 ]
xcopy %1 p:\new\%1 /D/K/E/Y/C/I/H | wtee.exe p:\new\%1.%datetime%.xcopy.finish.txt

echo  "echo  from utoorent %0 d[%1] f[%2] State[%3] previousState[%3] " >> p:\new\%1.%datetime%.xcopy.finish.txt
echo  "xcopy %1 p:\new  /D/K/E/Y/C/I/H finish at %datetime% " >> p:\new\%1.%datetime%.xcopy.finish.txt
=======
echo off
rem http://forum.twbts.com/thread-10153-1-1.html
echo %date%
echo %time%
rem echo Archive_%date:~0,4%%date:~-10,2%%date:~-7,2%_%time:~0,2%%time:~3,2%%time:~6,2%.zip
rem echo  %0 d[%1] f[%2] State[%3] previousState[%3]> "Archive_%date:~0,4%%date:~5,2%%date:~8,2%_%time:~0,2%%time:~3,2%%time:~6,2%.txt"
set datetime=%date:~0,4%%date:~5,2%%date:~8,2%_%time:~0,2%%time:~3,2%%time:~6,2%
rem remove space
set datetime=%datetime: =%
echo datetime = [  %datetime% ]
echo [ process xcopy  %1 to  p:\new\%1 ]
xcopy %1 p:\new\%1 /D/K/E/Y/C/I/H | wtee.exe p:\new\%1.%datetime%.xcopy.finish.txt

echo  "echo  from utoorent %0 d[%1] f[%2] State[%3] previousState[%3] " >> p:\new\%1.%datetime%.xcopy.finish.txt
echo  "xcopy %1 p:\new  /D/K/E/Y/C/I/H finish at %datetime% " >> p:\new\%1.%datetime%.xcopy.finish.txt
>>>>>>> e38cf495c8c7607ef19e806dc145772f9d6e6d7d
