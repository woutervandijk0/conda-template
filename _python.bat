@ECHO off
REM Define the environname and installation path
set env_name=conda-env
set root=%~dp0
set /p anaconda_dir=<%root%\requirements\anaconda_path.txt

REM Start anaconda prompt
call %anaconda_dir%\Scripts\activate.bat %anaconda_dir%

REM activate environment
call activate %root%\%env_name%

REM Start python
%root%/%env_name%/python.exe

call conda deactivate
pause
exit