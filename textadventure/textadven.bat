@echo off
TILLE game

 // Menu.
:startup
cls
echo Welcome to Text Adventure!
echo.
echo [32m1. Start Game[0m
echo 2. Settings
echo [31m3. Exit[0m
echo.
set /p input0=Enter:

if %input0% equ 1 goto begingame
if %input0% equ 2 goto settings
if %input0% equ 3 exit
goto startup

:settings
cls
echo Settings
echo.
echo 1.
echo 2.
echo 3.
echo 4.
echo 5.
echo 6. Back
set /p settingspick=Enter:

if %settingspick% equ 6 goto startup


:begingame
cls
echo Hello! : textperson
echo.
echo 1. Hi!
echo 2. Meh.
echo 3. Restart
echo.
set /p input1=You : 

if %input1% equ 1 goto say1
if %input1% equ 2 goto say2
if %input1% equ 3 goto restart
goto begingame

:say1
cls
echo How are you doing? : textperson
echo.
echo 1. good
echo 2. bad
echo 3. Restart
echo.
set /p input2=You : 

if %input2% equ 1 goto say11
if %input2% equ 2 goto say12
if %input2% equ 3 goto restart
goto say1

:say11
cls
echo Good? Thats great! : textperson
echo.
echo 1. ...
echo 2. Restart
echo.
set /p input3=You : 

if %input3% equ 1 goto say111
if %input3% equ 2 goto restart

:say2
cls 
echo Um, Are you fine? : textperson
echo.
echo 1. Yes
echo 2. No
echo 3. Restart
echo.

:restart
cls
goto begingame