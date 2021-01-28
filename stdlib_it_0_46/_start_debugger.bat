@echo off
set debug=..\dialog-0m03_0_46\prebuilt\win32\dgdebug.exe
set file=%1
if "%file%"=="" (set file=prova)
%debug% %file%.dg stdlib_it.dg
