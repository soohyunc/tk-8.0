@echo off
rem SCCS: @(#) rmd.bat 1.1 98/07/01 18:32:09

if not exist %1 goto end

if %OS% == Windows_NT goto winnt

echo Add support for Win 95 please
goto end

goto success

:winnt
rmdir %1 /s /q
if errorlevel 1 goto end

:success
echo deleted directory %1

:end
