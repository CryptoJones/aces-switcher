@echo off
setlocal

IF NOT EXIST "ACEventService.exe" (
    echo ERROR: ACEventService.exe not found. Aborting.
    exit /b 1
)

IF NOT EXIST "ACEventService.exe.old" (
    echo ERROR: ACEventService.exe.old not found. Aborting.
    exit /b 1
)

move /Y "ACEventService.exe"     "ACEventService.exe.tmp"
move /Y "ACEventService.exe.old" "ACEventService.exe"
move /Y "ACEventService.exe.tmp" "ACEventService.exe.old"

echo Switched ACEventService binaries successfully.
endlocal
