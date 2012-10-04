@echo off

SET IPA=23.23.23.23
SET USER=Administrator
SET PSWD="************"
SET EXE="ipconfig"


SET VERSION=0.1
SET AUTHOR=Vijay J. Philip
SET CREDITS=PsExec v1.98 By Mark Russinovich
SET STARTTIME=%date% : %time%
@echo ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
@echo Remote EC2: %IPA%
@echo Remote User: %USER% : Password:%PSWD%
@echo Remote Script/Exe: %EXE%
@echo Version: %VERSION%
@echo Author: %AUTHOR%
@echo Credits: %CREDITS%
@echo ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
@echo Started at %STARTTIME%
@echo ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ >> results.log
@echo Started at %STARTTIME%	>> results.log
@echo.
@echo Results:
@echo ------------------------------------------------------------------------------
PsExec.exe \\%IPA% -u %USER%  -p %PSWD% %EXE% >> results.log
@echo.
@echo ------------------------------------------------------------------------------
@echo.
SET STOPTIME=%date% : %time%
@echo Completed at %STOPTIME%  >> results.log
@echo ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++  >> results.log
@echo Completed at %STOPTIME%
@echo ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
pause