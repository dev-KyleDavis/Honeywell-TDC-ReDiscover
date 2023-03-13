@echo off

setlocal EnableDelayedExpansion

echo ******************************************************
echo **    WARNING: This program should run on the       **
echo **    Primary server. Running this program on a     **
echo **    secondary server will result in errors.       **
echo ******************************************************
echo.

set /p "point=Enter TDC point to Re-Discover: "
set /p "server_name=Enter server name: "

set "temp_dir=C:\temp"
set "txt_file_path=%temp_dir%\TPSDEL%point%.txt"

echo Creating file...
timeout /t 2 /nobreak > nul
echo.

if not exist "%temp_dir%" mkdir "%temp_dir%"
type nul > "!txt_file_path!"

echo DEL %server_name%:%point% >> !txt_file_path!

set /p "proceed=Do you want to run the Re-Discover tool (y/n)? "
if /i "%proceed%" neq "y" (
  echo Program terminated.
  goto end
)

echo Running command to delete point...
pntbld TPSDEL%point%.txt -DEL
echo.

:end
pause