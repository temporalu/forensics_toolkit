

REM 生成时间戳
call :getTimestamp timestamp

REM 运行代码并添加时间戳到生成文件名称后面
G:\pc\repo\OpenedFilesView.exe /scomma "G:\pc\repo\file\system\OpenedFilesView_%timestamp%.csv"
G:\pc\repo\LastActivityView.exe /scomma "G:\pc\repo\file\system\LastActivityView_%timestamp%.csv"
G:\pc\repo\TurnedOnTimesView.exe /scomma "G:\pc\repo\file\system\TurnedOnTimesView_%timestamp%.csv"
G:\pc\repo\WinLogOnView.exe /scomma "G:\pc\repo\file\system\WinLogOnView_%timestamp%.csv"
G:\pc\repo\EventLogChannelsView.exe /scomma "G:\pc\repo\file\system\EventLogChannelsView_%timestamp%.csv"
G:\pc\repo\TaskSchedulerView.exe /scomma "G:\pc\repo\file\system\TaskSchedulerView_%timestamp%.csv"
G:\pc\repo\InstalledPackagesView.exe /scomma "G:\pc\repo\file\system\InstalledPackagesView_%timestamp%.csv"
G:\pc\repo\BatteryInfoView.exe /scomma "G:\pc\repo\file\system\BatteryInfoView_%timestamp%.csv"
G:\pc\repo\FolderTimeUpdate.exe /scomma "G:\pc\repo\file\system\FolderTimeUpdate_%timestamp%.csv"
G:\pc\repo\USBDeview.exe /scomma "G:\pc\repo\file\system\USBDeview_%timestamp%.csv"
G:\pc\repo\ESEDatabaseView.exe /SaveDirect /table "*" /scomma "G:\pc\repo\file\system\ESEDatabaseView_%timestamp%.csv"
G:\pc\repo\URLProtocolView.exe /shtml "G:\pc\repo\file\system\URLProtocolView_%timestamp%.html"

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
