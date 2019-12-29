@ECHO off
REM Define the environname and installation path
set env_name=conda-env
set root=%~dp0
set /p anaconda_dir=<%root%\requirements\anaconda_path.txt

REM Start anaconda prompt
call %anaconda_dir%\Scripts\activate.bat %anaconda_dir%

REM Activate environment
call activate %root%\%env_name%
REM start spyder while keep prompt hidden (with /spyder/RunNHide.exe)
%root%/requirements/RunNHide.exe spyder.exe
start /B spyder.exe
call conda deactivate
exit