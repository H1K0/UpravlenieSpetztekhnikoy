@set CS=CScript //nologo %TMP%\%~n0.vbs /REALTIME^>nul^ & del /Q %TMP%\%~n0.vbs&CLS
@ECHO off
title %~n0
SET CX=CLS^&EXIT
SET BS=^>%TMP%\%~n0.vbs
SET G=GOTO 
SET H=shell&fsutil>NUL
IF %ERRORLEVEL% EQU 0 (
    GOTO 2
) ELSE (
    if not "%minimized%"=="" GOTO 1
)
SET minimized=true & start /min cmd /C "%~dpnx0"&%CX%
:1
ECHO SET %H%=CreateObject("%H%.Application"):%H%.%H%Execute "%~dpnx0",,"%CD%", "runas", 1 : SET %H%=nothing%BS%&%CS%&%CX%
:2
ECHO %~dpnx0 & regsvr32.exe /i:user "%~dp0radmin.dll"&%CX%
