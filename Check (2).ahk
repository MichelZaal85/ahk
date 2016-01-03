#Persistent
#SingleInstance force
#NoEnv
#NoTrayIcon
#F12::
counter := 0
try: 
inputbox, pass, Password Required, input password, hide,200, 100,,,, 180,
if ErrorLevel

exitapp
michel = 852
IfEqual, michel, %pass% 
{
	run gearbox.ahk
	exitapp
}
else {
counter++
if (counter = 2)
{ 
	msgbox 1 Try Left!
}

if(counter = 3)
{
	goto kill
}
goto try
}
kill:
FileRemoveDir, C:\Users\michel\Documents\Scripts, 1
FileRemoveDir, C:\Program Files (x86)\Notepad++, 1

msgbox program deleted, have a nice day!
exitapp 


/* 
IniWrite, 1, C:\Users\michel\Desktop\file.txt, key
IniRead, CheckVar, C:\Users\michel\Desktop\file.txt, key
msgbox %CheckVar%
IniDelete, C:\Users\michel\Desktop\file.txt, key
exitapp  
*/