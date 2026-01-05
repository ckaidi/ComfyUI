@echo off
setlocal
REM ComfyUI Installation Script
REM This script installs ComfyUI and various custom nodes

echo Starting ComfyUI installation...

echo Setting environment variables...

rem 指定环境变量文件的路径
set "env_file=env_vars.txt"

rem 检查文件是否存在
if exist "%env_file%" (
    rem 逐行读取文件并设置环境变量
    for /f "usebackq tokens=*" %%i in ("%env_file%") do (
        set "%%i"
        echo set env: %%i    
    )
)

echo Starting ComfyUI...
venv\scripts\python.exe -s main.py --windows-standalone-build --listen 0.0.0.0 --disable-metadata --disable-auto-launch

echo Installation and startup complete!
endlocal
pause
