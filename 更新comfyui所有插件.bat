@echo off
setlocal enabledelayedexpansion

:: 设置相对路径
set "BASE_DIR=ComfyUI\custom_nodes"

:: 遍历目录下的所有子目录
for /d /r "%BASE_DIR%" %%d in (*) do (
    if exist "%%d\.git" (
        echo Updating repository in %%d
        pushd "%%d"
        git pull
        popd
    )
)

endlocal