

REM 生成时间戳
call :getTimestamp timestamp

REM 运行代码并添加时间戳到生成文件名称后面
G:\pc\repo\BrowsingHistoryView.exe /scomma "G:\pc\repo\file\forensic\BrowsingHistoryView_%timestamp%.csv"
G:\pc\repo\WirelessKeyView.exe /shtml "G:\pc\repo\file\forensic\WirelessKeyView_%timestamp%.html"
G:\pc\repo\FullEventLogView.exe /scomma "G:\pc\repo\file\forensic\FullEventLogView_%timestamp%.csv"
G:\pc\repo\iehv.exe /shtml "G:\pc\repo\file\forensic\iehv_%timestamp%.html"
G:\pc\repo\IECacheView.exe /scomma "G:\pc\repo\file\forensic\IECacheView_%timestamp%.csv"
G:\pc\repo\MZCacheView.exe /scomma "G:\pc\repo\file\forensic\MZCacheView_%timestamp%.csv"
G:\pc\repo\MozillaHistoryView.exe /scomma "G:\pc\repo\file\forensic\MozillaHistoryView_%timestamp%.csv"
G:\pc\repo\mzcv.exe /shtml "G:\pc\repo\file\forensic\mzcv_%timestamp%.html"
G:\pc\repo\ChromeCacheView.exe /scomma "G:\pc\repo\file\forensic\ChromeCacheView_%timestamp%.csv"
G:\pc\repo\MyLastSearch.exe /scomma "G:\pc\repo\file\forensic\MyLastSearch_%timestamp%.csv"
G:\pc\repo\LiveContactsView.exe /scomma "G:\pc\repo\file\forensic\LiveContactsView_%timestamp%.csv"

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
