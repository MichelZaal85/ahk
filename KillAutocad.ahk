#Persistent
#SingleInstance force
#NoEnv
menu, tray, NoStandard
menu, tray, Icon, KillAutocad.ico,1,1
Menu, TRAY, Tip, Kill Autocad
menu, tray, add, Reload
menu, tray, add, Killll
menu, tray, add, Help
menu, tray, add, Exit
return
reload:
reload
return
pause:
pause
return
help:
msgbox Kill Autocad!`nAls programma niet werkt "Reload" om programma te herladen.
Killll:
ScrollLock::
Process, close, acad.exe
Process, close, senddmp.exe
Gui, Add, Picture, x12 y10 w300 h250 , C:\Users\michel\Desktop\KilledAutocad.jpg
Gui, Add, Button, x12 y220 w80 h30 , OK!
Gui, Show, x596 y362 h272 w324, Autocad Killed GUI Window
Return

GuiClose:
gui, destroy
Reload
return

ButtonOK!:
gui, destroy
reload
return


exit:
exitapp


