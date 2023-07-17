

REM 生成时间戳
call :getTimestamp timestamp

REM 运行代码并添加时间戳到生成文件名称后面
G:\pc\repo\OperaCacheView.exe /scomma "G:\pc\repo\file\explorer\OperaCacheView_%timestamp%.csv"
G:\pc\repo\ChromeHistoryView.exe /scomma "G:\pc\repo\file\explorer\ChromeHistoryView_%timestamp%.csv"
G:\pc\repo\WebCacheImageInfo.exe /scomma "G:\pc\repo\file\explorer\WebCacheImageInfo_%timestamp%.csv"
G:\pc\repo\FBCacheView.exe /scomma "G:\pc\repo\file\explorer\FBCacheView_%timestamp%.csv"
G:\pc\repo\ImageCacheViewer.exe /scomma "G:\pc\repo\file\explorer\ImageCacheViewer_%timestamp%.csv"
G:\pc\repo\faview.exe /scomma "G:\pc\repo\file\explorer\faview_%timestamp%.csv"
G:\pc\repo\FlashCookiesView.exe /scomma "G:\pc\repo\file\explorer\FlashCookiesView_%timestamp%.csv"
G:\pc\repo\FirefoxDownloadsView.exe /scomma "G:\pc\repo\file\explorer\FirefoxDownloadsView_%timestamp%.csv"

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
