REM This is for deleting all the log and aux files that are unecessary for latex.
forfiles /m *.log /c "cmd /c del @file"
forfiles /m *.aux /c "cmd /c del @file"
pause
