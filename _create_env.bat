@ECHO off
REM Define the environname and installation path
set env_name=conda-env
set root=%~dp0
set /p anaconda_dir=<%root%\requirements\anaconda_path.txt

REM Start anaconda prompt
call %anaconda_dir%\Scripts\activate.bat %anaconda_dir%

REM Check if there is already an environment named %env_name%.
REM If true: update packages from "environment.yml".
IF exist %env_name% (
    ECHO The environment %env_name% already exists...
	REM Check if environment.yml exists. If true: update packages from environment.yml.
	IF exist environment.yml (
		ECHO Update packages from environment.yml...
		call activate %root%\%env_name%
		call conda env update -p %root%\%env_name% -f %root%environment.yml
	REM else: do nothing
	) else (
		ECHO Nothing to update...
	)
REM else: create an new environment
) else (
    ECHO %env_name% doesn't exist, creating a new environment...
	REM Check if environment.yml exists. If true: create new environment with Environment.yml
	IF exist requirements\environment.yml (
		ECHO Environment.yml exists, create environment with Environment.yml...
		call conda env create --prefix %root%\%env_name% -f %root%environment.yml
	REM else: create environment without packages
	) else (
		ECHO Environment.yml doesn't exist, create environment without Environment.yml...
		call conda create --prefix %root%\%env_name% -y
	)
)

REM activate environment
call activate %root%\%env_name%
REM install spyder (if not already installed) 
ECHO Install spyder if not already installed...
call conda install spyder -y
REM List installed packages
call conda list
REM de-activate environment
call conda deactivate
ECHO Finished creating/updating environment...
Pause

REM remove environment
REM call conda remove -p %root%/%env_name% --all
