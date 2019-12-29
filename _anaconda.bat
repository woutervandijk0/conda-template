@ECHO off
REM Define the environname and installation path
set env_name=conda-env
set root=%~dp0
set /p anaconda_dir=<%root%\requirements\anaconda_path.txt
set PATH=%PATH%;%root%\scripts

REM Start anaconda prompt
call %anaconda_dir%\Scripts\activate.bat %anaconda_dir% 
REM start %anaconda_dir%\Scripts\anaconda.exe 

REM Activate environment
call activate %root%\%env_name%

REM start cmd
%windir%\System32\cmd.exe

REM Not sure if necessary
call conda deactivate 
EXIT