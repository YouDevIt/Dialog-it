@echo off
set compile=..\dialog-0m03_0_46\prebuilt\win32\dialogc.exe
set publish=..\aamachine-0.5.3\prebuilt\win32\aambundle.exe
set file=%1
if "%file%"=="" (set file=prova)

%compile% -t aa --resources %file% %file%.dg stdlib_it.dg

REM %publish% -t web -o %file%\ %file%.aastory
%publish% -t web:story -o %file%\resources\story.js %file%.aastory

start "" %file%\play.html
