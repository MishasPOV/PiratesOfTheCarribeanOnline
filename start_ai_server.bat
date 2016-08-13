@echo off
title POTCO - AI Server

set MAX_CHANNELS=999999
set STATE_SERVER=4002
set ASTRON_IP=127.0.0.1:7100
set EVENT_LOGGER_IP=127.0.0.1:7197
set DISTRICT_NAME=Buggy Seas
set BASE_CHANNEL=401000000

set /P PPYTHON_PATH=<PPYTHON_PATH


title POTCO - AI Server (%DISTRICT_NAME%)

echo ===============================
echo Starting POTCO - AI server (%DISTRICT_NAME%)...
echo Panda Python Path: %PPYTHON_PATH%
echo District Name: %DISTRICT_NAME%
echo Base Channel: %BASE_CHANNEL%
echo Max Channels: %MAX_CHANNELS%
echo State Server ID: %STATE_SERVER%
echo Message Director IP: %ASTRON_IP%
echo Event Logger IP: %EVENT_LOGGER_IP%
echo ===============================

%PPYTHON_PATH% -m pirates.ai.ServiceStart --base-channel %BASE_CHANNEL% --max-channels %MAX_CHANNELS% --stateserver %STATE_SERVER% --astron-ip %ASTRON_IP% --eventlogger-ip %EVENT_LOGGER_IP% --district-name "%DISTRICT_NAME%"
pause
