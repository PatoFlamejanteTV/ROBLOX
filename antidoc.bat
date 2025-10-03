@echo off
REM Deletes all folders named "doc" and their contents recursively
REM Run this from the parent directory where you want the cleanup to start

echo Searching and deleting all "doc" folders...
for /d /r %%i in (doc) do (
    if /i "%%~nxi"=="doc" (
        echo Deleting folder: %%i
        rmdir /s /q "%%i"
    )
)

echo Done.
pause
