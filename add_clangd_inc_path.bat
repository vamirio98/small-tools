@echo off

rem This script is used to generate 'compile_flags.txt' which adds
rem the include directory for clangd.

set dir=%~dp0
set file=compile_flags.txt
echo Now in = %dir%
echo If you need to deal with C++ header, please add "-x c++" to %file%
echo Adding this directory and its subdirectories as clangd's include directory to 'compile_flags.txt'...

if exist %file% (
        del %file%
)

echo -I >> %file%
echo %dir% >> %file%

for /d /r %%i in (*) do (
        echo -I >> %file%
        echo %%i >> %file%
)
pause
