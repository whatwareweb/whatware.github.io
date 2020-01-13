@echo off
echo 
:start
set response=
color 0f

cls
title TeachSoft Toolbar
echo TeachSoft Toolbar v.3 by WhatWare

echo Hello!
echo Please make a selection.
echo 1. Pinger (check website speed)
echo 2. Calculator
echo 3. Game selection
echo 4. Timer
echo 5. Sound Test/Ring Bell
echo 6. Off menu/Quit

set /p response=Please enter a number and press [enter].
if /I %response%==1 goto ping
if /I %response%==2 goto calc
if /I %response%==3 goto gamessel
if /I %response%==4 goto batchtimer
if /I %response%==5 goto sound
if /I %response%==6 goto quit
cls
echo ERROR!
pause
goto start

:sound
echo 
goto start

:ping
cls
color 5f
title Pinger
echo This is to test website speeds!
echo If it is a long wait before a confirmation message,
echo the website is slow at the moment. Vice versa.
echo Pinger
goto ar
:err
cls
echo Pinger
echo ERR! Try again.
:ar
set /P SITE="Website or IP address to ping>"
ECHO  PING ADDRESS: %SITE%
ECHO.
PING %SITE%
ECHO.
IF %ERRORLEVEL% == 0 (ECHO %SITE% pinged successfully!) ELSE goto err
pause
cls
goto start

:calc
set sum=
cls
title Calculator
color 5F
echo Calculator
echo.
echo Type the desired number, operator, another number, then enter.
echo (examples: 1+1  1+1+1*1/1   1-1+1*1/1)
echo Do not type an = sign after the calculation.
echo OPERATORS: [+] [-] [*] [/]
echo.
set /p sum=
set /a ans=%sum%
echo.
echo = %ans%
echo.
pause

:reanscal
echo 1. Do another problem.
echo 2. Exit Calculator.
set /p response=Select your option number.
if /I %response%==1 goto calc
if /I %response%==2 goto start
goto reanscal

:gamessel
cls
color 5f
title Games selection
echo Games
echo Select your choice, then press [enter].
echo 1. 1-Player Guessing Game
echo 2. 2-Player Guessing Game
echo 3. Tic Tac Toe
echo 4. Back to Main Menu

set /p response=Select your option number.
if /I %response%==1 goto guessgame1
if /I %response%==2 goto guessgame2
if /I %response%==3 goto tictactoe
if /I %response%==4 goto start
cls
echo ERR!
pause
goto gamessel

:guessgame1
cls
color 5f
set number=%random:~0,2%
title 1-Player Guessing Game
echo Welcome to this 1-player guessing game.
pause
echo The computer generates a number between 1 and 100, and you try to guess it!
pause
cls
echo To begin the game, type your name and press [Enter]:
set /p web=
:HOME
cls
echo Well, %web%, guess the number!
set /p guess=
echo 
if %guess% LSS %number% goto LOWER
if %guess% GTR %number% goto HIGHER
if %guess% EQU %number% goto WINNER
:LOWER
cls
echo Your guess is lower than the number!
pause
goto HOME
:HIGHER
cls
echo Your guess is higher than the number!
pause
goto HOME
:WINNER
cls
echo Congratulations, %web%! You guessed the number correctly!
echo.
echo Thanks for playing!
echo.
echo The number was %number%.
echo.
echo Press 1 to play again.
echo Press 2 to go to the main menu.
echo.
set /p menuoragain=
if %menuoragain%==1 goto guessgame1
if %menuoragain%==2 goto start
goto start

:guessgame2
cls
color 5f
title 2-Player Guessing Game
set/a one's=50
set/a two's=40
set/a three's=30
set/a four's=20
set/a five's=10
set/a six's=5
set/a seven's=1
echo Welcome to this two-player game in which one player picks a number
echo.
echo between 1 and 100 and the other player tries to guess it. Player 1 makes the
echo.
echo number and player 2 tries to guess it. You will be given NO hints or clues.
echo.
pause
cls
echo Enter the name for each player.
set/p "pone=Player one>"
echo.
set/p "ptwo=Player two>"
cls
goto ar
:busted
cls
echo I SAID a number between 1 and 100!
echo.
:ar
echo OK %ptwo%, look away. %pone%, type in the number between 1 and 100 and press enter.
set/p "deguess=>"
if %deguess% GTR 100 GOTO busted
cls
echo Choose a difficulty, %ptwo%:
echo.
echo (1) piece of cake-50 guesses
echo (2) easy-40 guesses
echo (3) moderate-30 guesses
echo (4) a little tricky-20 guesses
echo (5) hard-10 guesses
echo (6) insane-5 guesses
echo (7) impossible!-1 guess
echo.
echo Type the number of the difficulty you would like to play.
echo.
set/p "diff=>"
if %diff%==1 GOTO diff1
if %diff%==2 GOTO diff2
if %diff%==3 GOTO diff3
if %diff%==4 GOTO diff4
if %diff%==5 GOTO diff5
if %diff%==6 GOTO diff6
if %diff%==7 GOTO diff7
:diff1
cls
goto br
:no21
cls
echo NOPE!
echo.
:br
echo Guess in the space below. You still have %one's% guesses.
set/p "guess41=>"
if %guess41%==%deguess% GOTO success
set/a one's=%one's%-1
if %one's%==0 GOTO failure
goto no21
:diff2
cls
goto cr
:no22
cls
echo NOPE!
echo.
:cr
echo Guess in the space below. You still have %two's% guesses.
set/p "guess42=>"
if %guess42%==%deguess% GOTO success
set/a two's=%two's%-1
if %two's%==0 GOTO failure
goto no22
:diff3
cls
goto dr
:no23
cls
echo NOPE!
echo.
:dr
echo Guess in the space below. You still have %three's% guesses.
set/p "guess43=>"
if %guess43%==%deguess% GOTO success
set/a three's=%three's%-1
if %three's%==0 GOTO failure
goto no23
:diff4
cls
goto er
:no24
cls
echo NOPE!
echo.
:er
echo Guess in the space below. You sill have %four's% guesses.
set/p "guess44=>"
if %guess44%==%deguess% GOTO success
set/a four's=%four's%-1
if %four's%==0 GOTO failure
goto no24
:diff5
cls
goto fr
:no25
cls
echo NOPE!
echo.
:fr
echo Guess in the space below. You still have %five's% guesses.
set/p "guess45=>"
if %guess45%==%deguess% GOTO success
set/a five's=%five's%-1
if %five's%==0 GOTO failure
goto no25
:diff6
cls
goto gr
:no26
cls
echo NOPE!
echo.
:gr
echo Guess in the space below. You have %six's% guesses left.
set/p "guess46=>"
if %guess46%==%deguess% GOTO success
set/a six's=%six's%-1
if %six's%==0 GOTO failure
goto no26
:diff7
cls
echo Guess in the space below. You only have %seven's% guess.
set/p "guess47=>"
if %guess47%==%deguess% GOTO success
goto failure
:success
cls
echo Well done, %ptwo%!
pause
goto start
:failure
cls
echo %pone%'s number was too difficult. Sorry, %ptwo%.
echo.
echo The number was %deguess%.
echo.
pause
goto start

:tictactoe
cls
:BEGIN  
  REM Skill level
  set sl=
  cls
  echo                       Tic Tac Toe                            (Q to quit)
  echo.
  echo.
  echo        Pick your skill level (press a number)
  echo.
  echo               (1) Children under 6
  echo               (2) Average Mental Case
  echo               (3) Oversized Ego  
  CHOICE /c:123q /n > nul
  if errorlevel 4 goto end
  if errorlevel 3 set sl=3
  if errorlevel 3 goto layout
  if errorlevel 2 set sl=2
  if errorlevel 2 goto layout
  set sl=1

:LAYOUT
color 0f
  REM Player turn ("x" or "o")
  set pt=
  REM Game winner ("x" or "o")
  set gw=
  REM No moves
  set nm=
  REM Set to one blank space after equal sign (check with cursor end)
  set t1= 
  set t2= 
  set t3= 
  set t4= 
  set t5= 
  set t6= 
  set t7= 
  set t8= 
  set t9= 

:UPDATE
  cls
  echo   (S to set skill level)       Tic Tac Toe                   (Q to quit)
  echo.
  echo                               You are the X player. 
  echo                    Press the number where you want to put an X.     
  echo.
  echo   Skill level %sl%                       7 8 9 
  echo                                       4 5 6
  echo                                       1 2 3
  echo.
  echo                                       :   :
  echo                                     %t1% : %t2% : %t3%
  echo                                   ....:...:....
  echo                                     %t4% : %t5% : %t6%
  echo                                   ....:...:....
  echo                                     %t7% : %t8% : %t9%
  echo                                       :   :
  if "%gw%"=="x" goto winx2
  if "%gw%"=="o" goto wino2
  if "%nm%"=="0" goto nomoves

:PLAYER
  set pt=x
  REM Layout is for keypad. Change CHOICE to "/c:123456789sq  /n > nul"
  REM for numbers to start at top left (also change user layout above).
  CHOICE /c:789456123sq /n > nul
  if errorlevel 11 goto end
  if errorlevel 10 goto begin
  if errorlevel 9 goto 9
  if errorlevel 8 goto 8
  if errorlevel 7 goto 7
  if errorlevel 6 goto 6
  if errorlevel 5 goto 5
  if errorlevel 4 goto 4
  if errorlevel 3 goto 3
  if errorlevel 2 goto 2
  goto 1

:1  
  REM Check if "x" or "o" already in square.
  if "%t1%"=="x" goto player
  if "%t1%"=="o" goto player
  set t1=x
  goto check
:2  
  if "%t2%"=="x" goto player
  if "%t2%"=="o" goto player
  set t2=x
  goto check
:3  
  if "%t3%"=="x" goto player
  if "%t3%"=="o" goto player
  set t3=x
  goto check
:4  
  if "%t4%"=="x" goto player
  if "%t4%"=="o" goto player
  set t4=x
  goto check
:5  
  if "%t5%"=="x" goto player
  if "%t5%"=="o" goto player
  set t5=x
  goto check
:6  
  if "%t6%"=="x" goto player
  if "%t6%"=="o" goto player
  set t6=x
  goto check
:7  
  if "%t7%"=="x" goto player
  if "%t7%"=="o" goto player
  set t7=x
  goto check
:8  
  if "%t8%"=="x" goto player
  if "%t8%"=="o" goto player
  set t8=x
  goto check
:9  
  if "%t9%"=="x" goto player
  if "%t9%"=="o" goto player
  set t9=x
  goto check

:COMPUTER
  set pt=o
  if "%sl%"=="1" goto skill1  
 REM (win corner to corner)
  if "%t1%"=="o" if "%t3%"=="o" if not "%t2%"=="x" if not "%t2%"=="o" goto c2
  if "%t1%"=="o" if "%t9%"=="o" if not "%t5%"=="x" if not "%t5%"=="o" goto c5
  if "%t1%"=="o" if "%t7%"=="o" if not "%t4%"=="x" if not "%t4%"=="o" goto c4  
  if "%t3%"=="o" if "%t7%"=="o" if not "%t5%"=="x" if not "%t5%"=="o" goto c5
  if "%t3%"=="o" if "%t9%"=="o" if not "%t6%"=="x" if not "%t6%"=="o" goto c6
  if "%t9%"=="o" if "%t7%"=="o" if not "%t8%"=="x" if not "%t8%"=="o" goto c8
 REM (win outside middle to outside middle)
  if "%t2%"=="o" if "%t8%"=="o" if not "%t5%"=="x" if not "%t5%"=="o" goto c5
  if "%t4%"=="o" if "%t6%"=="o" if not "%t5%"=="x" if not "%t5%"=="o" goto c5
 REM (win all others)
  if "%t1%"=="o" if "%t2%"=="o" if not "%t3%"=="x" if not "%t3%"=="o" goto c3
  if "%t1%"=="o" if "%t5%"=="o" if not "%t9%"=="x" if not "%t9%"=="o" goto c9
  if "%t1%"=="o" if "%t4%"=="o" if not "%t7%"=="x" if not "%t7%"=="o" goto c7
  if "%t2%"=="o" if "%t5%"=="o" if not "%t8%"=="x" if not "%t8%"=="o" goto c8
  if "%t3%"=="o" if "%t2%"=="o" if not "%t1%"=="x" if not "%t1%"=="o" goto c1
  if "%t3%"=="o" if "%t5%"=="o" if not "%t7%"=="x" if not "%t7%"=="o" goto c7
  if "%t3%"=="o" if "%t6%"=="o" if not "%t9%"=="x" if not "%t9%"=="o" goto c9
  if "%t4%"=="o" if "%t5%"=="o" if not "%t6%"=="x" if not "%t6%"=="o" goto c6
  if "%t6%"=="o" if "%t5%"=="o" if not "%t4%"=="x" if not "%t4%"=="o" goto c4
  if "%t7%"=="o" if "%t4%"=="o" if not "%t1%"=="x" if not "%t1%"=="o" goto c1
  if "%t7%"=="o" if "%t5%"=="o" if not "%t3%"=="x" if not "%t3%"=="o" goto c3
  if "%t7%"=="o" if "%t8%"=="o" if not "%t9%"=="x" if not "%t9%"=="o" goto c9
  if "%t8%"=="o" if "%t5%"=="o" if not "%t2%"=="x" if not "%t2%"=="o" goto c2
  if "%t9%"=="o" if "%t8%"=="o" if not "%t7%"=="x" if not "%t7%"=="o" goto c7
  if "%t9%"=="o" if "%t5%"=="o" if not "%t1%"=="x" if not "%t1%"=="o" goto c1
  if "%t9%"=="o" if "%t6%"=="o" if not "%t3%"=="x" if not "%t3%"=="o" goto c3
 REM (block general attempts) -----------------------------------------------
  if "%t1%"=="x" if "%t2%"=="x" if not "%t3%"=="x" if not "%t3%"=="o" goto c3
  if "%t1%"=="x" if "%t5%"=="x" if not "%t9%"=="x" if not "%t9%"=="o" goto c9
  if "%t1%"=="x" if "%t4%"=="x" if not "%t7%"=="x" if not "%t7%"=="o" goto c7
  if "%t2%"=="x" if "%t5%"=="x" if not "%t8%"=="x" if not "%t8%"=="o" goto c8
  if "%t3%"=="x" if "%t2%"=="x" if not "%t1%"=="x" if not "%t1%"=="o" goto c1
  if "%t3%"=="x" if "%t5%"=="x" if not "%t7%"=="x" if not "%t7%"=="o" goto c7
  if "%t3%"=="x" if "%t6%"=="x" if not "%t9%"=="x" if not "%t9%"=="o" goto c9
  if "%t4%"=="x" if "%t5%"=="x" if not "%t6%"=="x" if not "%t6%"=="o" goto c6
  if "%t6%"=="x" if "%t5%"=="x" if not "%t4%"=="x" if not "%t4%"=="o" goto c4
  if "%t7%"=="x" if "%t4%"=="x" if not "%t1%"=="x" if not "%t1%"=="o" goto c1
  if "%t7%"=="x" if "%t5%"=="x" if not "%t3%"=="x" if not "%t3%"=="o" goto c3
  if "%t7%"=="x" if "%t8%"=="x" if not "%t9%"=="x" if not "%t9%"=="o" goto c9
  if "%t8%"=="x" if "%t5%"=="x" if not "%t2%"=="x" if not "%t2%"=="o" goto c2
  if "%t9%"=="x" if "%t8%"=="x" if not "%t7%"=="x" if not "%t7%"=="o" goto c7
  if "%t9%"=="x" if "%t5%"=="x" if not "%t1%"=="x" if not "%t1%"=="o" goto c1
  if "%t9%"=="x" if "%t6%"=="x" if not "%t3%"=="x" if not "%t3%"=="o" goto c3
 REM (block obvious corner to corner) 
  if "%t1%"=="x" if "%t3%"=="x" if not "%t2%"=="x" if not "%t2%"=="o" goto c2
  if "%t1%"=="x" if "%t9%"=="x" if not "%t5%"=="x" if not "%t5%"=="o" goto c5
  if "%t1%"=="x" if "%t7%"=="x" if not "%t4%"=="x" if not "%t4%"=="o" goto c4  
  if "%t3%"=="x" if "%t7%"=="x" if not "%t5%"=="x" if not "%t5%"=="o" goto c5
  if "%t3%"=="x" if "%t9%"=="x" if not "%t6%"=="x" if not "%t6%"=="o" goto c6
  if "%t9%"=="x" if "%t7%"=="x" if not "%t8%"=="x" if not "%t8%"=="o" goto c8
  if "%sl%"=="2" goto skill2
 REM (block sneaky corner to corner 2-4, 2-6, etc.) 
  if "%t2%"=="x" if "%t4%"=="x" if not "%t1%"=="x" if not "%t1%"=="o" goto c1
  if "%t2%"=="x" if "%t6%"=="x" if not "%t3%"=="x" if not "%t3%"=="o" goto c3
  if "%t8%"=="x" if "%t4%"=="x" if not "%t7%"=="x" if not "%t7%"=="o" goto c7  
  if "%t8%"=="x" if "%t6%"=="x" if not "%t9%"=="x" if not "%t9%"=="o" goto c9
 REM (block offset corner trap 1-8, 1-6, etc.)
  if "%t1%"=="x" if "%t6%"=="x" if not "%t8%"=="x" if not "%t8%"=="o" goto c8
  if "%t1%"=="x" if "%t8%"=="x" if not "%t6%"=="x" if not "%t6%"=="o" goto c6
  if "%t3%"=="x" if "%t8%"=="x" if not "%t4%"=="x" if not "%t4%"=="o" goto c4
  if "%t3%"=="x" if "%t4%"=="x" if not "%t8%"=="x" if not "%t8%"=="o" goto c8
  if "%t9%"=="x" if "%t4%"=="x" if not "%t2%"=="x" if not "%t2%"=="o" goto c2
  if "%t9%"=="x" if "%t2%"=="x" if not "%t4%"=="x" if not "%t4%"=="o" goto c4
  if "%t7%"=="x" if "%t2%"=="x" if not "%t6%"=="x" if not "%t6%"=="o" goto c6
  if "%t7%"=="x" if "%t6%"=="x" if not "%t2%"=="x" if not "%t2%"=="o" goto c2

:SKILL2
 REM (block outside middle to outside middle)
  if "%t2%"=="x" if "%t8%"=="x" if not "%t5%"=="x" if not "%t5%"=="o" goto c5
  if "%t4%"=="x" if "%t6%"=="x" if not "%t5%"=="x" if not "%t5%"=="o" goto c5
 REM (block 3 corner trap)
  if "%t1%"=="x" if "%t9%"=="x" if not "%t2%"=="x" if not "%t2%"=="o" goto c2
  if "%t3%"=="x" if "%t7%"=="x" if not "%t2%"=="x" if not "%t2%"=="o" goto c2
  if "%t1%"=="x" if "%t9%"=="x" if not "%t4%"=="x" if not "%t4%"=="o" goto c4
  if "%t3%"=="x" if "%t7%"=="x" if not "%t4%"=="x" if not "%t4%"=="o" goto c4
  if "%t1%"=="x" if "%t9%"=="x" if not "%t6%"=="x" if not "%t6%"=="o" goto c6
  if "%t3%"=="x" if "%t7%"=="x" if not "%t6%"=="x" if not "%t6%"=="o" goto c6
  if "%t1%"=="x" if "%t9%"=="x" if not "%t8%"=="x" if not "%t8%"=="o" goto c8
  if "%t3%"=="x" if "%t7%"=="x" if not "%t8%"=="x" if not "%t8%"=="o" goto c8
:SKILL1 
 REM (just take a turn) 
  if not "%t5%"=="x" if not "%t5%"=="o" goto c5
  if not "%t1%"=="x" if not "%t1%"=="o" goto c1
  if not "%t3%"=="x" if not "%t3%"=="o" goto c3
  if not "%t7%"=="x" if not "%t7%"=="o" goto c7
  if not "%t9%"=="x" if not "%t9%"=="o" goto c9
  if not "%t2%"=="x" if not "%t2%"=="o" goto c2
  if not "%t4%"=="x" if not "%t4%"=="o" goto c4
  if not "%t6%"=="x" if not "%t6%"=="o" goto c6
  if not "%t8%"=="x" if not "%t8%"=="o" goto c8
  set nm=0
  goto update

:C1  
  set t1=o
  goto check
:C2  
  set t2=o
  goto check
:C3  
  set t3=o
  goto check
:C4  
  set t4=o
  goto check
:C5  
  set t5=o
  goto check
:C6  
  set t6=o
  goto check
:C7  
  set t7=o
  goto check
:C8  
  set t8=o
  goto check
:C9  
  set t9=o
  goto check

:CHECK
  if "%t1%"=="x" if "%t2%"=="x" if "%t3%"=="x" goto winx
  if "%t4%"=="x" if "%t5%"=="x" if "%t6%"=="x" goto winx
  if "%t7%"=="x" if "%t8%"=="x" if "%t9%"=="x" goto winx
  if "%t1%"=="x" if "%t4%"=="x" if "%t7%"=="x" goto winx
  if "%t2%"=="x" if "%t5%"=="x" if "%t8%"=="x" goto winx
  if "%t3%"=="x" if "%t6%"=="x" if "%t9%"=="x" goto winx
  if "%t1%"=="x" if "%t5%"=="x" if "%t9%"=="x" goto winx
  if "%t3%"=="x" if "%t5%"=="x" if "%t7%"=="x" goto winx
  if "%t1%"=="o" if "%t2%"=="o" if "%t3%"=="o" goto wino
  if "%t4%"=="o" if "%t5%"=="o" if "%t6%"=="o" goto wino
  if "%t7%"=="o" if "%t8%"=="o" if "%t9%"=="o" goto wino
  if "%t1%"=="o" if "%t4%"=="o" if "%t7%"=="o" goto wino
  if "%t2%"=="o" if "%t5%"=="o" if "%t8%"=="o" goto wino
  if "%t3%"=="o" if "%t6%"=="o" if "%t9%"=="o" goto wino
  if "%t1%"=="o" if "%t5%"=="o" if "%t9%"=="o" goto wino
  if "%t3%"=="o" if "%t5%"=="o" if "%t7%"=="o" goto wino
  if "%pt%"=="x" goto computer
  if "%pt%"=="o" goto update

:WINX
  set gw=x
  goto update
:WINX2
color 20
  echo   You win!
  echo   Play again (Y,N)?
  CHOICE /c:ynsq /n > nul
  if errorlevel 4 goto end
  if errorlevel 3 goto begin
  if errorlevel 2 goto end
  goto layout

:WINO
  set gw=o
  goto update
:WINO2
color 4f
  echo   Sorry, You lose.
  echo   Play again (Y,N)?
  CHOICE /c:ynsq /n > nul
  if errorlevel 4 goto end
  if errorlevel 3 goto begin
  if errorlevel 2 goto end
  goto layout

:NOMOVES
  echo   There are no more moves left!
  echo   Play again (Y,N)?
  CHOICE /c:ynsq /n > nul
  if errorlevel 4 goto end
  if errorlevel 3 goto begin
  if errorlevel 2 goto end
  goto layout

:END
  cls
  echo Tic Tac Toe
  echo.
  REM Clear all variables (no spaces after equal sign).
  set gw=
  set nm=
  set sl=
  set pt=
  set t1=
  set t2=
  set t3=
  set t4=
  set t5=
  set t6=
  set t7=
  set t8=
  set t9=
goto gamessel

:batchtimer
cls
color 5f
title Timer
echo Timer
echo Type in an amount of time (Seconds)
set /p time=

:loop
cls
ping localhost -n 2 >nul
set /a time=%time%-1
echo %time%
if %time% EQU 0 goto Timesup
goto loop

:Timesup
color 20
title Time is Up!
cls
echo Time is Up!
echo 
ping localhost -n 1 -w 500> nul
echo 
ping localhost -n 1 -w 500> nul
echo 
cls
echo Time is Up!
pause
goto start

:quit
cls
title Shutdown/Quit menu
echo Shutdown/Quit
echo 1} Quit
echo 2} Shutdown Computer
echo 3} Restart Computer
echo 4} Log Off Computer
echo 5} Start Control Panel
echo 6} Crash your Computer
echo 7} Main Menu

set /p select=
if %select% EQU 1 goto Exit
if %select% EQU 2 goto Shutdown
if %select% EQU 3 goto Restart
if %select% EQU 4 goto Logoff
if %select% EQU 5 goto Control
if %select% EQU 6 goto Crash
if %select% EQU 7 goto start
goto quit

:Exit
exit

:Shutdown
start C:\Windows\System32\Shutdown.exe -s -t 5 -c "Shutdown Your Computer"
goto Main

:Restart
start C:\Windows\System32\Shutdown.exe -r -t 5 -c "Restart Your Computer" 
goto Main

:Logoff
start C:\Windows\System32\Shutdown.exe -l -t 5 -c "Log Off Your Account"
goto Main

:Control
start Control Panel
goto Main

:Crash
cls

title Crashing...
echo Crashing...
%0 | %0

