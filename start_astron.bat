@echo off
title POTCO - Astron Server
cd astron

:main
astrond --loglevel info config/cluster.yml
pause
goto main