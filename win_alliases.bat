@echo off
doskey ls=dir /b
doskey ll=dir /a
doskey cls=cls
doskey cp=copy
doskey mv=move
doskey rm=del /Q
doskey mkdir=mkdir
doskey rmdir=rmdir /S /Q

REM git doskeyes

doskey gs=git status
doskey gp=git push --verbose
doskey gc=git commit -m
doskey gcl=git clone
doskey ga=git add .
doskey gpu=git pull
