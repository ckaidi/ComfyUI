@echo off
setlocal EnableExtensions EnableDelayedExpansion

set "range=%~1"
if "%range%"=="" (
    echo Usage:
    echo   %~nx0 8188-8208
    echo   %~nx0 8188 8208
    exit /b 1
)

if not "%~2"=="" (
    set "start_port=%~1"
    set "end_port=%~2"
) else (
    for /f "tokens=1,2 delims=-" %%a in ("%range%") do (
        set "start_port=%%a"
        set "end_port=%%b"
    )
)

if "!end_port!"=="" set "end_port=!start_port!"

echo(!start_port!| findstr /r "^[0-9][0-9]*$" >nul || goto :invalid
echo(!end_port!| findstr /r "^[0-9][0-9]*$" >nul || goto :invalid

set /a sp=!start_port!
set /a ep=!end_port!

if !sp! lss 1 goto :invalid
if !sp! gtr 65535 goto :invalid
if !ep! lss 1 goto :invalid
if !ep! gtr 65535 goto :invalid

if !sp! gtr !ep! (
    set /a tmp=!sp!
    set /a sp=!ep!
    set /a ep=!tmp!
)

echo Starting ComfyUI from port !sp! to !ep!...

for /l %%p in (!sp!,1,!ep!) do (
    echo Starting port %%p...
    start "ComfyUI %%p" cmd /c call "%~dp0update-offline.bat" %%p
)

endlocal
exit /b 0

:invalid
echo Invalid port range: %*
endlocal
exit /b 1
