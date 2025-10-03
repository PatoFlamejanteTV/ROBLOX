@echo off
REM Recursively deletes all "doc" folders starting from the folder where this batch file is located

setlocal

REM Get the folder where the batch file is
set "BASE_DIR=%~dp0"

echo Searching recursively inside: %BASE_DIR%

for /d /r "%BASE_DIR%" %%i in (*) do (
    if /i "%%~nxi"=="doc" (
        echo Deleting folder: %%i
        rmdir /s /q "%%i"
    )
)

echo Done.
pause
