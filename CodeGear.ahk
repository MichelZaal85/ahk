#Persistent
#SingleInstance force
#NoEnv
menu, tray, Icon, C:\Users\Michel\Dropbox\AHK\Files\gear.ico,1,1
Menu, TRAY, Tip, Gearbox
menu, tray, NoStandard
^#r::
Reload
^#e::
Exitapp
#q::
run C:\Users\Michel\Downloads
Return
#`::
Run C:\Users\Michel\Dropbox
return
#.::
send {f2}{ctrldown}c{ctrlup}
str = %clipboard%
StringReplace, newStr, str, . ,%A_Space% , 1
clipboard = %newStr%
send {ctrldown}v{ctrlup}{enter}
return