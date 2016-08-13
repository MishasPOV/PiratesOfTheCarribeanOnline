@echo off
title Pirates of the Carribean Online

set /P PPYTHON_PATH=<PPYTHON_PATH
set GAME_SERVER=127.0.0.1
set LOGIN_COOKIE=dev

echo ==============================
echo Starting Pirates of the Carribean Online...
echo Panda Python Path: %PPYTHON_PATH%
echo Username: %LOGIN_COOKIE%
echo Gameserver (IP): %GAME_SERVER%
echo ==============================
 
%PPYTHON_PATH% -m pirates.piratesbase.PiratesStart
pause
