#SingleInstance force
#NoEnv
menu, tray, Icon, C:\Users\Michel\Dropbox\AHK\Files\gear.ico,1,1
Menu, TRAY, Tip, Gearbox

; Keep an eye out for a popup window
#Persistent
	SetTimer, killActivateWin, 250
return

; Reload App
^#r::
	Reload

; Exit the App
^#e::
	Exitapp

; Open Downloads Location
#q::
	run C:\Users\Michel\Downloads
Return

; Open Dropbox Location
#`::
	Run C:\Users\Michel\Dropbox
return

; Show/Hide hidden files in explorer
#h::
	RegRead, ValorHidden, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, Hidden
if ValorHidden = 2
	RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, Hidden, 1
else
	RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, Hidden, 2
	send {F5}
return

; send date dd-mm-YY
:*:ddd::
	FormatTime, datumvandaag,, ShortDate
	Send %datumvandaag%
Return

; Disable CapsLock
CapsLock::
return

; close ActivateWindow
killActivateWin:
	WinClose, "This is an unregistered copy"
return