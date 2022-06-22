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
echo 1. Your Name
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
echo 4. Back to Menu
echo.
set /p input1=You : 

if %input1% equ 1 goto say1
if %input1% equ 2 goto say2
if %input1% equ 3 goto restart
if %input1% equ 4 goto startup
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
goto say11

:say111
cls
echo Ah! A enemy! : textperson
echo Battle enter! : sound_battle_enter.wav
echo.
echo Enemy Hp : 2
echo.
echo 1. attack
echo 2. do nothing
echo 3. restart
echo.
set /p battlepick=You : 

if %battlepick% equ 1 goto say1111
if %battlepick% equ 2 goto say1112
if %battlepick% equ 3 goto restart
goto say111

:say1111
cls
echo enemy took 9999980355666734655728956636 damage
echo it died
echo Yes! : textperson
echo.
echo 1. cool
echo 2. Restart
echo.
set /p input6=You : 

if %input6% equ 1 goto say11111
if %input6% equ 2 goto restart

:say11111
cls 
echo do you want end here?
echo.
echo 1. Yes
echo 2. No
echo 3. Restart
echo.
set /p input7=You : 

if %input7% equ 1 goto saveworldending
if %input7% equ 2 goto say111111
if %input7% equ 3 goto restart
goto say111111

:saveworldending
cls
echo.
echo.
echo YOU GOT 
echo save the world ending
echo.
echo 1. Restart
echo 2. Back to Menu
echo 3. Exit
set /p input8=You :

if %input8% goto restart
if %input8% goto startup
if %input8% exit
goto saveworldending

:say2
cls 
echo Um, Are you fine? : textperson
echo.
echo 1. Yes
echo 2. No
echo 3. Restart
echo.
set /p input4=You : 

if %input4% equ 1 goto say21
if %input4% equ 2 goto say22
if %input4% equ 3 goto restart
goto say2

:say21
cls
echo Oh, Ok. : textperson
echo.
echo 1. ...
echo 2. Restart
echo.
set /p input5=You : 

if %input5% equ 1 goto say111
if %input5% equ 2 goto restart

:restart
cls
goto begingame