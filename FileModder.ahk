Gui, Add, ComboBox, x62 y40 w40 h21 vDay, 0
Gui, Add, ComboBox, x102 y40 w40 h21 vMonth, 0
Gui, Add, ComboBox, x142 y40 w40 h21 vYear, 0
Gui, Add, ComboBox, x192 y40 w40 h21 vHour, 0
Gui, Add, ComboBox, x232 y40 w40 h21 vMinute, 0
Gui, Add, ComboBox, x272 y40 w50 h21 vSecond, 0
Gui, Add, Text, x2 y40 w50 h20 , Creation
Gui, Add, Text, x62 y10 w40 h20 , Day
Gui, Add, Text, x102 y10 w40 h20 , Month
Gui, Add, Text, x142 y10 w43 h20 , Year
Gui, Add, Text, x192 y10 w40 h20 , Hour
Gui, Add, Text, x232 y10 w40 h20 , Min
Gui, Add, Text, x272 y10 w40 h20 , Sec
Gui, Add, Text, x2 y70 w50 h20 , Modified
Gui, Add, ComboBox, x62 y70 w40 h21 vMday, 0
Gui, Add, ComboBox, x102 y70 w40 h21 vMmonth, 0
Gui, Add, ComboBox, x142 y70 w40 h21 vMyear, 0
Gui, Add, ComboBox, x192 y70 w40 h21 vMhour, 0
Gui, Add, ComboBox, x232 y70 w40 h21 vMminute, 0
Gui, Add, ComboBox, x272 y70 w50 h21 vMsecond, 0
Gui, Show, h153 w356, Date Modifier
Gui, Add, Button, x132 y110 w110 h30 , Send
return


ButtonSend:
gui, submit, nohide

created = %Myear%%Mmonth%%Mday%%Mhour%%Mminute%%Msecond%
modded =  %Year%%Month%%Day%%Hour%%Minute%%Second% 


FileSelectFile, FileName, 3,, Pick a file
if FileName =  ; The user didn't pick a file.
    return
FileSetTime, %created% , %FileName%
FileSetTime, %modded% , %FileName%
gui destroy
exitapp

GuiClose:
ExitApp



















/* FormatTime, datum,, ShortDate
CD := SubStr(datum, 1, 2)
CM := SubStr(datum, 4, 2)
CY := SubStr(datum, 7, 4)

FormatTime, tell , Time
Ch := SubStr(tell, 1, 2)
Cm := SubStr(tell, 4, 2)
Cs := SubStr(tell, 7, 2)

Gui, Add, Text, x22 y10 w190 h30 , Voer gegevens in:
Gui, Add, ComboBox, x22 y40 w50 h10 vChour, 01|02|03|04|05|06|07|08|09|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|%Ch%||
Gui, Add, ComboBox, x82 y40 w50 h20 , vCminute, 01|02|03|04|05|06|07|08|09|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30|31|32|33|34|35|36|37|38|39|40|41|42|43|44|45|46|47|48|49|50|51|52|53|54|55|56|57|58|59|%Cm%||
Gui, Add, ComboBox, x142 y40 w50 h20 , vCsecond, 01|02|03|04|05|06|07|08|09|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30|31|32|33|34|35|36|37|38|39|40|41|42|43|44|45|46|47|48|49|50|51|52|53|54|55|56|57|58|59|%Cs%||
Gui, Add, ComboBox, x22 y70 w50 h20 , vCDag, 01|02|03|04|05|06|07|08|09|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30|31|%CD%||
Gui, Add, ComboBox, x82 y70 w50 h10 , vCMaand, 01|02|03|04|05|06|07|08|09|10|11|12|%CM%||
Gui, Add, ComboBox, x142 y70 w70 h20 , vCJaar, 2013|2012|2011|2010|%CY%||
Gui, Add, Button, x62 y100 w100 h30 , Send

Gui, Show, h149 w236, Datum
Return

ButtonSend:
gui, submit, nohide
gui destroy
FileSetTime, %CJaar%%CMaand%%CDag%%Chour%%Cminute%%Csecond%, C:\tmp\file.txt, C
;FileSetTime, 20130101125405, C:\tmp\file.txt
return

GuiClose:
ExitApp
 */
/* testing  */


/* 
Gui, Add, ComboBox, x62 y40 w40 h21 , ComboBox
Gui, Add, ComboBox, x102 y40 w40 h21 , ComboBox
Gui, Add, ComboBox, x142 y40 w40 h21 , ComboBox
Gui, Add, ComboBox, x192 y40 w40 h21 , ComboBox
Gui, Add, ComboBox, x232 y40 w40 h21 , ComboBox
Gui, Add, ComboBox, x272 y40 w50 h21 , ComboBox

Gui, Add, Text, x62 y10 w40 h20 , Text
Gui, Add, Text, x2 y40 w50 h20 , Text
Gui, Add, Text, x2 y100 w50 h20 , Text
Gui, Add, Text, x102 y10 w40 h20 , Text
Gui, Add, Text, x142 y10 w40 h20 , Text
Gui, Add, Text, x192 y10 w40 h20 , Text
Gui, Add, Text, x232 y10 w40 h20 , Text
Gui, Add, Text, x272 y10 w40 h20 , Text
Gui, Add, Text, x62 y70 w40 h20 , Text

Gui, Add, Text, x102 y70 w40 h20 , Text
Gui, Add, Text, x142 y70 w40 h20 , Text
Gui, Add, Text, x192 y70 w40 h20 , Text
Gui, Add, Text, x232 y70 w40 h20 , Text
Gui, Add, Text, x272 y70 w40 h20 , Text

Gui, Add, ComboBox, x62 y100 w40 h21 , ComboBox
Gui, Add, ComboBox, x102 y100 w40 h21 , ComboBox
Gui, Add, ComboBox, x142 y100 w40 h21 , ComboBox
Gui, Add, ComboBox, x192 y100 w40 h21 , ComboBox
Gui, Add, ComboBox, x232 y100 w40 h21 , ComboBox
Gui, Add, ComboBox, x272 y100 w50 h21 , ComboBox

Gui, Add, Button, x132 y130 w110 h30 , Button


Gui, Show, x406 y348 h183 w356, New GUI Window
Return

GuiClose:
ExitApp





*/

^!+\::


/* ; Change the date-time stamp of a file:
FileSelectFile, FileName, 3,, Pick a file
if FileName =  ; The user didn't pick a file.
    return
FileGetTime, FileTime, %FileName%
FormatTime, FileTime, %FileTime%   ; Since the last parameter is omitted, the long date and time are retrieved.
MsgBox The selected file was last modified at %FileTime%. 
exitapp

 */




/* ; Set the modification time to the current time for all matching files:
FileSetTime, , C:\temp\*.txt

; Set the modification date (time will be midnight):
FileSetTime, 20040122, C:\My Documents\test.doc

; Set the creation date. The time will be set to 4:55pm:
FileSetTime, 200401221655, C:\My Documents\test.doc, C

; Change the mod-date of all files  that match a pattern.
; Any matching folders will also be changed due to the last parameter:
FileSetTime, 20040122165500, C:\Temp\*.*, M, 1
 */


















 