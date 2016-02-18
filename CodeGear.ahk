#Persistent
#SingleInstance force
#NoEnv
menu, tray, Icon, C:\Users\Michel\Dropbox\AHK\Files\gear.ico,1,1
Menu, TRAY, Tip, Gearbox

^#r::
	Reload
^#e::
	Exitapp
#q::
	run C:\Users\Michel\Downloads
Return



; This is an unregistered copy
; ahk_class #32770
; ahk_exe sublime_text.exe

; #IfWinNotActive, This is an unregistered copy
WinWait, "This is an unregistered copy"
#IfWinNotActive, "This is an unregistered copy"
WinActive("This is an unregistered copy")
	send {esc}
return 

#`::
	Run C:\Users\Michel\Dropbox
return
#h::
	RegRead, ValorHidden, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, Hidden
if ValorHidden = 2
	RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, Hidden, 1
else
	RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, Hidden, 2
	send {F5}
return

:*:ddd::
	FormatTime, datumvandaag,, ShortDate
	Send %datumvandaag%
Return