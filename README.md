## Introduction

This python template can be used to create and access python projects easily with minimal input from the user. 
The template is based on Anaconda, which must be installed prior to running this installation. 
Please go to https://www.anaconda.com for the latest Anaconda installation. 

## Overview

Windows batch files:
 _create_env.bat: 	Create an conda environment, install spyder and install the required packages (as listed in requirements.yml)
    _spyder.bat*:	Open spyder and activate the conda-env environment 
    _python.bat*:	Open a python prompt and activate the conda-env enviroment
  _anaconda.bat*: 	Open a conda prompt and activate the conda-env enviroment
* _create_env.bat must be ran prior to calling this batch file.

## Required input from user:
./requirements/anacondat_path.txt: 	 This file contains the path to the anaconda installation on this system.

## Packages
Environment.yml contains the python version, channels and packages. When adding packages to the list in Environment.yml, make sure to re-run _create_env.bat
More information on Enviroment.yml files can be found here: https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html

## Installation
Set the correct installation path:
	In the file \requirements\anaconda_path.txt, edit the path to your installation path of Anaconda. 
	This should look something like:
		C:\Users\<userID>\Anaconda3

Set-up the environment:
	Run _create_env.bat to create the conda environment 'conda-env' in the project's base directory and to install Spyder and the packages in 'environment.yml'.
	Required dependencies for the packages in 'environment.yml' and Spyder are automatically installed.
	

## Debugging
* Make sure that the paths to this map do not contain spaces. This will prevent the _create_env.bat and other files to work correctly. 
* You might have to run _create_env.bat twice; One time to install all the packages and a second time to update all packages.
* Deleting the /conda-env folder and re-installing using _create_env.bat might help a broken installation/environment.

## License
[MIT](https://choosealicense.com/licenses/mit/)


## TO-DO:
Batch file for removing the conda-env enviroment


Author:			Wouter van Dijk
Last update: 	11-3-2021