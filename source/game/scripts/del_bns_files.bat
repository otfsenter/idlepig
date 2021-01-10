@echo off

:: del /f /a /q \\?\%1

:: rd /s /q \\?\%1


:: 删除根目录下的文件夹
rd /s /q C:\WeGameApps\剑灵\剑灵_腾讯\components
rd /s /q C:\WeGameApps\剑灵\剑灵_腾讯\FIX_TEMP_DIR

:: 删除bin64下的文件
:: 文件夹
rd /s /q C:\WeGameApps\剑灵\剑灵_腾讯\bin64\Cross
rd /s /q C:\WeGameApps\剑灵\剑灵_腾讯\bin64\TGuard
rd /s /q C:\WeGameApps\剑灵\剑灵_腾讯\bin64\TQM64
:: 文件
del /f /a /q C:\WeGameApps\剑灵\剑灵_腾讯\bin64\BnSCrashReport.exe
del /f /a /q C:\WeGameApps\剑灵\剑灵_腾讯\bin64\BnSCrashReport.ini
del /f /a /q C:\WeGameApps\剑灵\剑灵_腾讯\bin64\BugTrace.dll
del /f /a /q C:\WeGameApps\剑灵\剑灵_腾讯\bin64\BugTrace.ini
del /f /a /q C:\WeGameApps\剑灵\剑灵_腾讯\bin64\BugTrace.txt
del /f /a /q C:\WeGameApps\剑灵\剑灵_腾讯\bin64\Disable3GBMem_Vista_Win7_32bit.bat
del /f /a /q C:\WeGameApps\剑灵\剑灵_腾讯\bin64\Enable3GBMem_Vista_Win7_32bit.bat
del /f /a /q C:\WeGameApps\剑灵\剑灵_腾讯\bin64\GbSpy64.dll

:: 删除TCLS下的文件
:: 文件夹
rd /s /q C:\WeGameApps\剑灵\剑灵_腾讯\TCLS\patchs
rd /s /q C:\WeGameApps\剑灵\剑灵_腾讯\TCLS\plugins
rd /s /q C:\WeGameApps\剑灵\剑灵_腾讯\TCLS\tlog
rd /s /q C:\WeGameApps\剑灵\剑灵_腾讯\TCLS\ui
:: 文件
del /f /a /q C:\WeGameApps\剑灵\剑灵_腾讯\TCLS\accelerator.ini
del /f /a /q C:\WeGameApps\剑灵\剑灵_腾讯\TCLS\AdvertTips.exe
del /f /a /q C:\WeGameApps\剑灵\剑灵_腾讯\TCLS\Assistant.exe
del /f /a /q C:\WeGameApps\剑灵\剑灵_腾讯\TCLS\BackgroundDownloader.exe
del /f /a /q C:\WeGameApps\剑灵\剑灵_腾讯\TCLS\bugreport.exe
del /f /a /q C:\WeGameApps\剑灵\剑灵_腾讯\TCLS\Repair.exe

:: 删除TCLS\TenProtect下的文件
:: 文件夹
rd /s /q C:\WeGameApps\剑灵\剑灵_腾讯\TCLS\TenProtect\patchs
:: 文件
del /f /a /q C:\WeGameApps\剑灵\剑灵_腾讯\TCLS\TenProtect\BugReport.dll
del /f /a /q C:\WeGameApps\剑灵\剑灵_腾讯\TCLS\TenProtect\BugTrace.dll
del /f /a /q C:\WeGameApps\剑灵\剑灵_腾讯\TCLS\TenProtect\BugTrace.ini
del /f /a /q C:\WeGameApps\剑灵\剑灵_腾讯\TCLS\TenProtect\BugTrace.txt
del /f /a /q C:\WeGameApps\剑灵\剑灵_腾讯\TCLS\TenProtect\BugTrace_1.dll
del /f /a /q C:\WeGameApps\剑灵\剑灵_腾讯\TCLS\TenProtect\BugTrack.dat
del /f /a /q C:\WeGameApps\剑灵\剑灵_腾讯\TCLS\TenProtect\BugTrack.dll
del /f /a /q C:\WeGameApps\剑灵\剑灵_腾讯\TCLS\TenProtect\BugTrack.ini
del /f /a /q C:\WeGameApps\剑灵\剑灵_腾讯\TCLS\TenProtect\TenSafe_1.exe
del /f /a /q C:\WeGameApps\剑灵\剑灵_腾讯\TCLS\TenProtect\Thread2018-12-17-21-06-45.dmp
del /f /a /q C:\WeGameApps\剑灵\剑灵_腾讯\TCLS\TenProtect\Thread2018-12-17-22-08-39.dmp
del /f /a /q C:\WeGameApps\剑灵\剑灵_腾讯\TCLS\TenProtect\TXPltSafeInf.dll

:: 删除contents下的web文件夹
rd /s /q C:\WeGameApps\剑灵\剑灵_腾讯\contents\Local\TENCENT\CHINESES\web
