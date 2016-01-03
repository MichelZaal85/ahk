^!n:: ;control alt N hotkey
IfWinNotExist ahk_class Outlook Express Browser Class
	return 
WinActivate 
Send ^N
WinWaitActive Untitled Message
SetKeyDelay 10
Send {tab} 
Send {tab} 
Send gelukt?
return 
