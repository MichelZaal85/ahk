#Persistent
#SingleInstance force
#NoEnv
#NoTrayIcon
#G::
counter := 0
try: 
inputbox, pass, *Gear Pass*, input password, hide,200, 100,,,, 3,
if ErrorLevel
exitapp
michel = 852
IfEqual, michel, %pass% 
{
	run C:\Users\michel\Documents\DropBox\Scripts\Scripts\Gearbox.ahk
 	exitapp
}
else {
counter++
if (counter == 1)
{ 
	msgbox 48, *error*, 1 try left!
}
if(counter = 2)
{
	goto kill
}
goto try
}
kill:
FileCopy, Gearbox.ahk, C:\Users\michel\Documents\DropBox\Scripts\Scripts\BackupLog.txt, 1
FileCopy, Check.ahk, C:\Users\michel\Documents\DropBox\Scripts\Scripts\BackupLog.txt, 1
FileRemoveDir, C:\Users\michel\Documents\DropBox\Scripts\Scripts, 1
SoundBeep, 1750, 250
msgbox 48, *error*, Program Deleted!
exitapp 

