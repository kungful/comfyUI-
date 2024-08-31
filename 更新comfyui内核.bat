@echo off
chcp 65001 >nul

REM 检查是否安装了Git
where git >nul 2>nul
if %errorlevel% neq 0 (
    echo Git 未安装。请从以下链接下载并安装 Git:
    echo https://git-scm.com/downloads
    echo 如果你在大陆记得给git设置代理端口命令是git config --global http.https://github.com.proxy socks5://127.0.0.1:7897
    pause
    exit /b 1
)

REM 进入下一级目录 ComfyUI
cd ComfyUI
if %errorlevel% neq 0 (
    echo 无法进入目录 ComfyUI。请确保该目录存在。
    pause
    exit /b 1
)

REM 检查当前目录是否为Git仓库
git rev-parse --git-dir >nul 2>nul
if %errorlevel% neq 0 (
    echo 当前目录不是一个Git仓库。请确保你在正确的Git仓库目录中运行此脚本。
    pause
    exit /b 1
)

REM 尝试拉取更新
git pull origin master
if %errorlevel% neq 0 (
    REM 检查是否有未跟踪的文件冲突
    git status --porcelain | findstr "^??" >nul
    if %errorlevel% equ 0 (
        echo 发现未跟踪的文件，尝试删除这些文件并再次拉取更新。
        for /f "tokens=*" %%i in ('git status --porcelain ^| findstr "^??"') do (
            echo 删除文件 %%i
            del /q "%%i"
        )
        REM 再次尝试拉取更新
        git pull origin master
        if %errorlevel% neq 0 (
            echo 拉取失败，请检查网络连接或设置代理。
            echo 如果你在大陆记得给git设置代理端口命令是git config --global http.https://github.com.proxy socks5://127.0.0.1:7897
            pause
            exit /b 1
        ) else if "%errorlevel%"=="0" (
            echo ComfyUI代码已经是最新的。
        )
    ) else (
        echo 拉取失败，请检查网络连接或设置代理。
        echo 如果你在大陆记得给git设置代理端口命令是git config --global http.https://github.com.proxy socks5://127.0.0.1:7897
        pause
        exit /b 1
    )
) else if "%errorlevel%"=="0" (
    echo ComfyUI代码已经是最新的。
)

REM 暂停以便用户可以看到输出信息
pause