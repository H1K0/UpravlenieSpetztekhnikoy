@echo off
@REM cls

setlocal EnableDelayedExpansion
@REM @CHCP 65001 >NUL

:: Переменная для хранения пути к выбранной папке
set "installPath="

set "psCommand="(new-object -COM 'Shell.Application').BrowseForFolder(0,'Please choose your SOURCE folder.',0x010,17).self.path""
for /f "usebackq delims=" %%I in (`powershell %psCommand%`) do (
    set "installPath=%%I"
)

if not defined installPath goto :eof

echo Installing system...
xcopy /Y /E "%~dp0\*" "%installPath%"
set "confFile=%installPath%\Apache24\conf\httpd.conf"
set "tempPathTo1c=C:\Users\TempUser"
set "pathTo1c=%installPath%"
set "tempPathToApache=c:/Apache24"
set "pathToApache=%installPath%\Apache24"
for /f "delims=" %%i in ('type "%confFile%" ^& break ^> "%confFile%" ') do (
    set "line=%%i"
    setlocal enabledelayedexpansion
    >>"%confFile%" echo(!line:%tempPathTo1c%=%pathTo1c%!
    endlocal
)
for /f "delims=" %%i in ('type "%confFile%" ^& break ^> "%confFile%" ') do (
    set "line=%%i"
    setlocal enabledelayedexpansion
    >>"%confFile%" echo(!line:%tempPathToApache%=%pathToApache%!
    endlocal
)
echo Installation complete.

echo Running system...
%installPath%\Apache24\bin\httpd.exe -k install
%installPath%\8.3.25_bin\bin\webinst.exe -publish -apache24 -wsdir SpecEquip -dir "%installPath%\InfoBase" -connstr "File=""%installPath%\InfoBase"";" -confpath "%installPath%\Apache24\conf\httpd.conf"
%installPath%\Apache24\bin\httpd.exe -k start
echo System is up.

:eof
pause
