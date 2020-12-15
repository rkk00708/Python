@ECHO OFF
SET me=%~n0
set logdir="C:\Working\Logs\"

REM create a log file named [script].YYYYMMDDHHMMSS.txt
SET logfile=%logdir%\%me%.%DATE:~10,4%_%DATE:~4,2%_%DATE:~7,2%%TIME:~0,2%_%TIME:~3,2%_%TIME:~6,2%.txt

ECHO Activating Base >> "%logfile%"

@CALL "C:\ProgramData\Anaconda3_64\condabin\conda.bat" activate base

ECHO Activated Base >> "%logfile%"

ECHO Starting monitor terminations >> "%logfile%"

"C:\ProgramData\Anaconda3_64\python.exe"  "C:\Working\PythonScripts\py64b\script.py" >> "%logfile%"

ECHO Completed monitor terminations >> "%logfile%"

echo %ERRORLEVEL% >> "%logfile%"

exit /B
