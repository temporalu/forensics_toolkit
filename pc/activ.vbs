CreateObject("Wscript.Shell").Run "G:\pc\repo\ps_acti.bat", 0, True
CreateObject("Wscript.Shell").Run "G:\pc\repo\forensic_acti.bat", 0, True
CreateObject("Wscript.Shell").Run "G:\pc\repo\misc_acti.bat", 0, True
CreateObject("Wscript.Shell").Run "G:\pc\repo\connection_acti.bat", 0, True
CreateObject("Wscript.Shell").Run "G:\pc\repo\sys_acti.bat", 0, True
CreateObject("Wscript.Shell").Run "G:\pc\repo\explorer_acti.bat", 0, True
Set objShell = CreateObject("WScript.Shell")
objShell.Run "cmd /c echo ^G", 0, True
