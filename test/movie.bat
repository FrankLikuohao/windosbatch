echo off

echo %date%
echo %time%
rem echo moivestatus_%date:~0,4%%date:~-10,2%%date:~-7,2%_%time:~0,2%%time:~3,2%%time:~6,2%.zip
echo  %0 d[%1] f[%2] State[%3] previousState[%3]> "Move_%date:~0,4%%date:~5,2%%date:~8,2%_%time:~0,2%%time:~3,2%%time:~6,2%.txt"
