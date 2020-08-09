@echo off

title 国服简体中文OB包 制作：白色饱马
mode con:cols=60 lines=20

cd /d %~dp0

set a=%~1

taskkill /im "League of Legends.exe"

cls

if "%a:~-5%" NEQ ".rofl" (
	echo 欢迎使用本工具！
	echo. 
	echo 国服《英雄联盟》简体中文OB包
	echo.
	echo 使用步骤：
	echo.
	echo 1. 将您国服中的 Game\League of Legends.exe 文件创建一个快捷方式，移动到本工具的相同目录下并命名为 lol （如果您开启了显示文件扩展名，则为 lol.lnk）。
	echo.
	echo 2. 将您的rofl文件拖动到本工具上以启动。
	echo.
	echo 按任意键退出
	pause>nul
	exit
)

if not exist "lol.lnk" (
	echo.
	echo 【错误】请检查使用步骤1。
	echo.
	echo 按任意键退出。准备完成后，请按照使用步骤启动本工具。
	pause>nul
	exit
	)
) else (
	echo 正在启动
	
	start "" "lol.lnk" "%a%" -UseRads -Locale=zh_CN
	
)

echo 制作：白色饱马
timeout /t 1 /nobreak
exit

pause
exit
