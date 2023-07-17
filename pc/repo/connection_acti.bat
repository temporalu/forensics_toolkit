

REM 生成时间戳
call :getTimestamp timestamp

REM 运行代码并添加时间戳到生成文件名称后面
G:\pc\repo\awatch.exe /shtml "G:\pc\repo\file\connection\awatch_%timestamp%.html"
G:\pc\repo\DownTester.exe /hidden /scomma "G:\pc\repo\file\connection\DownTester_%timestamp%.csv"
G:\pc\repo\WNetWatcher.exe /scomma "G:\pc\repo\file\connection\WNetWatcher_%timestamp%.csv"
G:\pc\repo\NetResView.exe /start /DisplayShares "1" /DisplayComputers "1" /RetrieveIPAddresses "1" /RetrieveMACAddresses "1" /scomma "G:\pc\repo\file\connection\NetResView_%timestamp%.csv"
G:\pc\repo\PingInfoView.exe /scomma "G:\pc\repo\file\connection\PingInfoView_%timestamp%.csv"
G:\pc\repo\BluetoothView.exe /scomma "G:\pc\repo\file\connection\BluetoothView_%timestamp%.csv"
G:\pc\repo\WirelessNetView.exe /scomma "G:\pc\repo\file\connection\WirelessNetView_%timestamp%.csv"
G:\pc\repo\WifiInfoView.exe /scomma "G:\pc\repo\file\connection\WifiInfoView_%timestamp%.csv"
G:\pc\repo\NetRouteView.exe /scomma "G:\pc\repo\file\connection\NetRouteView_%timestamp%.csv"

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
