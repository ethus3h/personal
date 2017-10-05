@echo off

REM Check if createdb.exe exist in the default location. If not, don't do anything as user did manual database installation
SET SQLBIN=%ProgramFiles%\PostgreSQL\9.0\bin

if NOT EXIST "%SQLBIN%\createdb.exe" (
	REM Return success code as I don't want to cause any installation error message
	EXIT 0;
)

SET SQLDATADIR=%APPDATA%\postgresql
SET SQLPASSWDFILE=pgpass.conf

if NOT EXIST "%SQLDATADIR%" (
	mkdir "%SQLDATADIR%"
)

pushd "%SQLDATADIR%"
REM backup any existing first
if EXIST "%SQLPASSWDFILE%" (
	rename "%SQLPASSWDFILE%" "%SQLPASSWDFILE%_back"
)

REM create passwd file
echo 127.0.0.1:5432:*:postgres:DaVinci> "%SQLPASSWDFILE%"

"%SQLBIN%\createdb.exe" --host 127.0.0.1 --username postgres -w resolve

REM restore passwd file
del /Q  "%SQLPASSWDFILE%"
if EXIST "%SQLPASSWDFILE%_back" (
	rename "%SQLPASSWDFILE%_back" "%SQLPASSWDFILE%"
)

popd
exit 0
