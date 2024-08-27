@echo off
cls

rem Check if user has Admin privileges
timeout /t 1 /nobreak > NUL
openfiles >NUL 2>NUL
if not %errorlevel%==0 (
    echo This program can only be run by an Administrator.
    echo Right-click and select "Run as Administrator".
    pause
    exit
)

echo Deleting temporary files...
timeout /t 1 /nobreak > NUL
rd /s /q %WinDir%\Temp
rd /s /q %WinDir%\Prefetch
rd /s /q %Temp%
rd /s /q %AppData%\Temp
rd /s /q %HomePath%\AppData\LocalLow\Temp
rem Recreate Empty Temporary Folders
md %WinDir%\Temp
md %WinDir%\Prefetch
md %Temp%
md %AppData%\Temp
md %HomePath%\AppData\LocalLow\Temp
cls
echo Temporary files deleted!
pause