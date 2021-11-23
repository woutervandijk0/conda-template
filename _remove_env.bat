@ECHO off
REM Define the environname and installation path
set env_name=conda-env
set root=%~dp0
set /p anaconda_dir=<%root%\requirements\anaconda_path.txt
echo Anaconda installation path: %anaconda_dir%

REM Start anaconda prompt
call %anaconda_dir%\scripts\activate.bat %anaconda_dir%

REM Check if there is already an environment named %env_name%.
REM If true: update packages f rom "environment.yml".
IF exist %env_name% (
    ECHO The environment %env_name% exists...
	REM Check if environment.yml exists. If true: remove env
	ECHO Remove environment.yml...
	REM call activate %root%\%env_name%
	call conda env remove -p %root%\%env_name% -all
	ECHO Finished removing environment...
	
	ECHO Remove folder %env_name%...
	rmdir /s /q %root%\%env_name%
	ECHO Finished removing %env_name%...
	
REM else: create an new environment
) else (
    ECHO %env_name% doesn't exist, nothing to remove...
)

Pause

 