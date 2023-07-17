

REM 生成时间戳
call :getTimestamp timestamp

REM 运行代码并添加时间戳到生成文件名称后面
G:\pc\repo\cports.exe /scomma "G:\pc\repo\file\miscellaneous\cports_%timestamp%.csv"
G:\pc\repo\SpecialFoldersView.exe /scomma "G:\pc\repo\file\miscellaneous\SpecialFoldersView_%timestamp%.csv"
G:\pc\repo\ProduKey.exe /scomma "G:\pc\repo\file\miscellaneous\ProduKey_%timestamp%.csv"
G:\pc\repo\RegScanner.exe /sreg "G:\pc\repo\file\miscellaneous\RegScanner_%timestamp%.reg"
G:\pc\repo\FileTypesMan.exe /scomma "G:\pc\repo\file\miscellaneous\FileTypesMan_%timestamp%.csv"
G:\pc\repo\shexview.exe /scomma "G:\pc\repo\file\miscellaneous\shexview_%timestamp%.csv"
G:\pc\repo\sysexp.exe /scomma "G:\pc\repo\file\miscellaneous\sysexp_%timestamp%.csv"
G:\pc\repo\DriverView.exe /scomma "G:\pc\repo\file\miscellaneous\DriverView_%timestamp%.csv"
G:\pc\repo\RegDllView.exe /scomma "G:\pc\repo\file\miscellaneous\RegDllView_%timestamp%.csv"

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
