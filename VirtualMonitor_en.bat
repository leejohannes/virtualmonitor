@echo off
chcp 65001>nul
cd /d "%~dp0"
set c=deviceinstaller64.exe
if "%PROCESSOR_ARCHITECTURE%"==":x86" set c=deviceinstaller.exe

:start
echo 1. Install Virtual Monitor Driver
echo 2. Stop Virtual Monitor Driver
echo 3. Add A Virtual Monitor
echo 4. Remove A Virtual Monitor
echo 5. Exit
echo 6. Remove Virtual Monitor Driver
echo 7. Edit Supported Resolutions

set /p n=
if %n%==1 goto add
if %n%==2 goto stop
if %n%==3 goto add1
if %n%==4 goto remove1
if %n%==5 goto end
if %n%==6 goto remove
if %n%==7 goto resolutions
goto start

:add
cmd /c %c% install usbmmidd.inf usbmmidd
goto add1

:remove1
cmd /c %c% enableidd 0
goto start

:add1
cmd /c %c% enableidd 1
goto start

:stop
cmd /c %c% stop usbmmidd
goto start

:remove
cmd /c %c% remove usbmmidd
goto start

:resolutions
echo HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\WUDF\Services\usbmmIdd\Parameters\Monitors
echo Only effect on Monitor that added after registry key edited, Using 4 and 3 to remove and add Monitors 
echo Support up to 10 resolutions(0-9)
cmd /c regedit
goto start

:end
pause
