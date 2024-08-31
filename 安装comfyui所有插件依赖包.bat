@echo off
setlocal enabledelayedexpansion

REM 硬编码嵌入式Python的路径
set "python_embeded=python_embeded\python.exe"

REM 硬编码GitHub项目的路径
set "github_projects_path=ComfyUI\custom_nodes"

REM 查找所有第一级 requirements.txt 文件
set "requirements_files="
for /d %%d in ("%github_projects_path%\*") do (
    if exist "%%d\requirements.txt" (
        set "requirements_files=!requirements_files!;%%d\requirements.txt"
    )
)

REM 检查是否找到 requirements.txt 文件
if "!requirements_files!" equ "" (
    echo No requirements.txt files found.
    goto :end
)

REM 升级pip
echo Upgrading pip...
"%python_embeded%" -m pip install --upgrade pip
if errorlevel 1 (
    echo Failed to upgrade pip.
    goto :end
)

REM 检查并解决包冲突
echo Checking for package conflicts...
"%python_embeded%" -m pip check 2> conflicts.txt
if exist conflicts.txt (
    for /f "tokens=*" %%i in (conflicts.txt) do (
        echo %%i | findstr /i /r /c:"^ERROR:.*" >nul
        if !errorlevel! equ 0 (
            for /f "tokens=2 delims= " %%j in ("%%i") do (
                echo Uninstalling conflicting package: %%j
                "%python_embeded%" -m pip uninstall -y %%j
            )
        )
    )
    del conflicts.txt
) else (
    echo No package conflicts found.
)

REM 安装所有 requirements.txt 文件中的依赖项
for %%f in (%requirements_files:~1%) do (
    echo Installing dependencies from %%f
    "%python_embeded%" -m pip install -r %%f
    if errorlevel 1 (
        echo Failed to install dependencies from %%f
    )
)

:end
endlocal
pause