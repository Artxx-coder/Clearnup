@echo off
chcp 65001 >nul
title Clearnup
color 06
cd /d "%~dp0"
cd Files
net session >nul 2>&1
if %errorLevel% neq 0 goto noadmin
:start
call :banner
:menu
echo 1) Remove Temporary Files
echo 2) Exit
set /p input=-
if /I %input% EQU 1 start LCPC.bat
if /I %input% EQU 2 exit
cls
goto start
:banner
echo.
echo.
echo                           ██████╗██╗     ███████╗ █████╗ ██████╗ ███╗   ██╗██╗   ██╗██████╗ 
echo                          ██╔════╝██║     ██╔════╝██╔══██╗██╔══██╗████╗  ██║██║   ██║██╔══██╗
echo                          ██║     ██║     █████╗  ███████║██████╔╝██╔██╗ ██║██║   ██║██████╔╝
echo                          ██║     ██║     ██╔══╝  ██╔══██║██╔══██╗██║╚██╗██║██║   ██║██╔═══╝ 
echo                          ╚██████╗███████╗███████╗██║  ██║██║  ██║██║ ╚████║╚██████╔╝██║     
echo                           ╚═════╝╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚═╝      
echo.
echo.
goto :eof

:noadmin
color 04
echo ==================================================
echo [ERROR]: Execute with administrator
echo Press any key for continue. . .
echo ==================================================
pause >nul
exit