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
#`::
Run C:\Users\Michel\Dropbox
return

; Replace '.' by 'space' 
#.::
send {f2}{ctrldown}c{ctrlup}
sleep 100
str = %clipboard%
StringReplace, newStr, str, . ,%A_Space% , 1
clipboard = %newStr%
send {ctrldown}v{ctrlup}{enter}
return

#/::
send {f2}{ctrldown}c{ctrlup}
sleep 100
underscore = %clipboard%
StringReplace, Runderscore, underscore, _ , %A_Space% , 1
clipboard = %Runderscore%
send {ctrldown}v{ctrlup}{tab} 
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