#Persistent
#SingleInstance
#NoEnv

Alarm:

Gui, Add, text, x6 y7 w200 h20 , Alarm Tekst:
Gui, Add, Edit, x5 y25 w150 h20 vTekst, 
Gui, Add, DateTime, x6 y72 w110 h20 vMyDateTime, Time
Gui, Add, Button, x116 y72 w40 h20 gSetAlarm, &Ok
Gui, Add, Button, x156 y72 w50 h20 gResetAlarm, &Reset
Gui, Add, Text, x6 y52 w200 h20 , Alarm Tijd:
Gui, Show, Center h104 w215, Alarm
Return

GuiClose:
reload
return

SetAlarm:
Gui, Submit
AlarmTime:=SubStr(MyDateTime, 9, 4 )
Settimer, Maintimer, 15000
return

ResetAlarm:
Settimer, Maintimer, Off
return


StopAlarm:
reload
return

Maintimer:
FormatTime,thistime,,HHmm
If thistime=%AlarmTime%
	Msgbox, %Tekst%
goto StopAlarm
Return