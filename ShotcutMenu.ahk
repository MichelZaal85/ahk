#Persistent
#SingleInstance force
#NoEnv
menu, tray, Icon, C:\Users\michel\Documents\DropBox\Scripts\Scripts\Gear.ico,1,1
Gui, Add, Picture, x2 y0 w480 h380 , C:\Users\michel\Documents\DropBox\Scripts\Scripts\background.bmp
Gui, Add, Button, x42 y230 w30 h30 , ? 
Gui, Add, Button, x12 y10 w100 h30 , PhantomPDF ;
Gui, Add, Button, x12 y50 w100 h30 , File Move
Gui, Add, Button, x12 y90 w100 h30 , FileTypesMan ; 
Gui, Add, Button, x12 y130 w100 h30 , File Modd ; 
Gui, Add, Button, x12 y170 w100 h30 , PowerShell Editor ; 
Gui, Add, Button, x12 y310 w100 h30 , Script Writer 
Gui, Add, Button, x122 y310 w100 h30 , Window Spy 
Gui, Add, Button, x232 y310 w100 h30 , EDIT Script 
Gui, Add, Button, x342 y310 w110 h30 , Smart GUI 
Gui, Show, h379 w479, GUI Shortcuts Menu 
Return

ButtonPhantomPDF:
Run C:\Users\michel\Documents\Software\Foxit Phantom PDF\Advanced Editor.exe
exitapp
ButtonScriptWriter: 
run C:\Program Files (x86)\AutoHotkey\AutoScriptWriter\AutoScriptWriter.exe
exitapp
ButtonWindowSpy:
Run C:\Program Files (x86)\AutoHotkey\AU3_Spy.exe
exitapp 
ButtonFileMove: 
msgbox No power!
exitapp
/*
FileCopy, %clipboard%, K:\Tekeningenbeheer\FLO\MTL - De Mantel\Energie\Kwartaal rapporrage\2014, 0
FileCopy, %clipboard%, K:\Tekeningenbeheer\FLO\DKD - Dekkersduin\Energie\Kwartaal rapporrage\2014, 0
FileCopy, %clipboard%, K:\Tekeningenbeheer\FLO\DST - Duinstede\Energie\Kwartaal rapporrage\2014,0
FileCopy, %clipboard%, K:\Tekeningenbeheer\FLO\GLT - Gewoon Lekker Thuis\Energie\Kwartaal rapporrage\2014,0
FileCopy, %clipboard%, K:\Tekeningenbeheer\FLO\GHS - Guldenhuis\Energie\Kwartaal rapporrage\2014,0
FileCopy, %clipboard%, K:\Tekeningenbeheer\FLO\HHG - Houthaghe\Energie\Kwartaal rapporrage\2014,0
FileCopy, %clipboard%, K:\Tekeningenbeheer\FLO\JFR - Jonker Frans\Energie\Kwartaal rapporrage\2014,0
FileCopy, %clipboard%, K:\Tekeningenbeheer\FLO\LVV - Laan van Vredenoord\Energie\Kwartaal rapporrage\2014,0
FileCopy, %clipboard%, K:\Tekeningenbeheer\FLO\LVS - Loevestein\Energie\Kwartaal rapporrage\2014,0
FileCopy, %clipboard%, K:\Tekeningenbeheer\FLO\LHF - Loosduinse Hof\Energie\Kwartaal rapporrage\2014,0
FileCopy, %clipboard%, K:\Tekeningenbeheer\FLO\MHV - Mariahoeve\Energie\Kwartaal rapporrage\2014,0
FileCopy, %clipboard%, K:\Tekeningenbeheer\FLO\OSN - Oostduin\Energie\Kwartaal rapporrage\2014,0
FileCopy, %clipboard%, K:\Tekeningenbeheer\FLO\ODB - Over de Boogaard\Energie\Kwartaal rapporrage\2014,0
FileCopy, %clipboard%, K:\Tekeningenbeheer\FLO\STV - Steenvoorde\Energie\Kwartaal rapporrage\2014,0
FileCopy, %clipboard%, K:\Tekeningenbeheer\FLO\HHS - 't Hoflants Huys\Energie\Kwartaal rapporrage\2014,0
FileCopy, %clipboard%, K:\Tekeningenbeheer\FLO\UTZ - Uitzicht\Energie\Kwartaal rapporrage\2014,0
FileCopy, %clipboard%, K:\Tekeningenbeheer\FLO\VBH - Vredenburch\Energie\Kwartaal rapporrage\2014,0
FileCopy, %clipboard%, K:\Tekeningenbeheer\FLO\WKB - Wenckenbach\Energie\Kwartaal rapporrage\2014,0
FileCopy, %clipboard%, K:\Tekeningenbeheer\FLO\WHF - Westhoff\Energie\Kwartaal rapporrage\2014,0
if ErrorLevel {
MsgBox *Foutmelding*
}
else 
msgbox *Klaar*
exitapp
*/
/*
FileCopy, %clipboard%, K:\Tekeningenbeheer\FLO\MTL - De Mantel\Energie\Kwartaal rapporrage\2014, 0
FileCopy, %clipboard%, K:\Tekeningenbeheer\FLO\DKD - Dekkersduin\Energie\Kwartaal rapporrage\2014, 0
FileCopy, %clipboard%, K:\Tekeningenbeheer\FLO\DST - Duinstede\Energie\Kwartaal rapporrage\2014,0
FileCopy, %clipboard%, K:\Tekeningenbeheer\FLO\GLT - Gewoon Lekker Thuis\Energie\Kwartaal rapporrage\2014,0
FileCopy, %clipboard%, K:\Tekeningenbeheer\FLO\GHS - Guldenhuis\Energie\Kwartaal rapporrage\2014,0
FileCopy, %clipboard%, K:\Tekeningenbeheer\FLO\HHG - Houthaghe\Energie\Kwartaal rapporrage\2014,0
FileCopy, %clipboard%, K:\Tekeningenbeheer\FLO\JFR - Jonker Frans\Energie\Kwartaal rapporrage\2014,0
FileCopy, %clipboard%, K:\Tekeningenbeheer\FLO\LVV - Laan van Vredenoord\Energie\Kwartaal rapporrage\2014,0
FileCopy, %clipboard%, K:\Tekeningenbeheer\FLO\LVS - Loevestein\Energie\Kwartaal rapporrage\2014,0
FileCopy, %clipboard%, K:\Tekeningenbeheer\FLO\LHF - Loosduinse Hof\Energie\Kwartaal rapporrage\2014,0
FileCopy, %clipboard%, K:\Tekeningenbeheer\FLO\MHV - Mariahoeve\Energie\Kwartaal rapporrage\2014,0
FileCopy, %clipboard%, K:\Tekeningenbeheer\FLO\OSN - Oostduin\Energie\Kwartaal rapporrage\2014,0
FileCopy, %clipboard%, K:\Tekeningenbeheer\FLO\ODB - Over de Boogaard\Energie\Kwartaal rapporrage\2014,0
FileCopy, %clipboard%, K:\Tekeningenbeheer\FLO\STV - Steenvoorde\Energie\Kwartaal rapporrage\2014,0
FileCopy, %clipboard%, K:\Tekeningenbeheer\FLO\HHS - 't Hoflants Huys\Energie\Kwartaal rapporrage\2014,0
FileCopy, %clipboard%, K:\Tekeningenbeheer\FLO\UTZ - Uitzicht\Energie\Kwartaal rapporrage\2014,0
FileCopy, %clipboard%, K:\Tekeningenbeheer\FLO\VBH - Vredenburch\Energie\Kwartaal rapporrage\2014,0
FileCopy, %clipboard%, K:\Tekeningenbeheer\FLO\WKB - Wenckenbach\Energie\Kwartaal rapporrage\2014,0
FileCopy, %clipboard%, K:\Tekeningenbeheer\FLO\WHF - Westhoff\Energie\Kwartaal rapporrage\2014,0
*/
/*
FileCopy, %clipboard%, K:\Tekeningenbeheer\FLO\De Mantel (MTL)\Energie\Totaalrapportages\2014, 0
FileCopy, %clipboard%, K:\Tekeningenbeheer\FLO\Dekkersduin (DKD)\Energie\Totaalrapportages\2014, 0
FileCopy, %clipboard%, K:\Tekeningenbeheer\FLO\Duinstede (DST)\Energie\Totaalrapportages\2014,0
FileCopy, %clipboard%, K:\Tekeningenbeheer\FLO\Gewoon Lekker Thuis (GLT)\Energie\Totaalrapportages\2014,0
FileCopy, %clipboard%, K:\Tekeningenbeheer\FLO\Guldenhuis (GHS)\Energie\Totaalrapportages\2014,0
FileCopy, %clipboard%, K:\Tekeningenbeheer\FLO\Houthaghe (HHG)\Energie\Totaalrapportages\2014,0
FileCopy, %clipboard%, K:\Tekeningenbeheer\FLO\Jonker Frans (JFR)\Energie\Totaalrapportages\2014,0
FileCopy, %clipboard%, K:\Tekeningenbeheer\FLO\Laan van Vredenoord (LVV)\Energie\Totaalrapportages\2014,0
FileCopy, %clipboard%, K:\Tekeningenbeheer\FLO\Loevestein (LVS)\Energie\Totaalrapportages\2014,0
FileCopy, %clipboard%, K:\Tekeningenbeheer\FLO\Loosduinse Hof (LHF)\Energie\Totaalrapportages\2014,0
FileCopy, %clipboard%, K:\Tekeningenbeheer\FLO\Mariahoeve (MHV)\Energie\Totaalrapportages\2014,0
FileCopy, %clipboard%, K:\Tekeningenbeheer\FLO\Oostduin (OSN)\Energie\Totaalrapportages\2014,0
FileCopy, %clipboard%, K:\Tekeningenbeheer\FLO\Over de Boogaard (ODB)\Energie\Totaalrapportages\2014,0
FileCopy, %clipboard%, K:\Tekeningenbeheer\FLO\Steenvoorde (STV)\Energie\Totaalrapportages\2014,0
FileCopy, %clipboard%, K:\Tekeningenbeheer\FLO\'t Hoflants Huys (HHS)\Energie\Totaalrapportages\2014,0
FileCopy, %clipboard%, K:\Tekeningenbeheer\FLO\Uitzicht (UTZ)\Energie\Totaalrapportages\2014,0
FileCopy, %clipboard%, K:\Tekeningenbeheer\FLO\Vredenburch (VBH)\Energie\Totaalrapportages\2014,0
FileCopy, %clipboard%, K:\Tekeningenbeheer\FLO\Wenckenbach (WKB)\Energie\Totaalrapportages\2014,0
FileCopy, %clipboard%, K:\Tekeningenbeheer\FLO\Westhoff (WHF)\Energie\Totaalrapportages\2014,0
*/


ButtonSmartGUI: 
Run C:\Program Files (x86)\AutoHotkey\Extras\SmartGUI\SmartGUI.exe
exitapp
ButtonFileTypesMan:
run C:\XML - Prog Do Not delete\FileTypesMan.exe
Return
ButtonFileModd:
run C:\Users\michel\Documents\Scripts\Scripts\FileModder.ahk
exitapp
Button?:
Run C:\Program Files (x86)\AutoHotkey\AutoHotkey.chm
exitapp
ButtonEDITscript:
Run C:\Program Files (x86)\Notepad++\notepad++
winwait ahk_class Notepad++
winactivate ahk_class Notepad++
exitapp
ButtonPowerShellEditor:
run C:\Windows\System32\WindowsPowerShell\v1.0\powershell_ise.exe
exitapp
GuiClose:
exitapp
#ifwinactive GUI Shortcuts Menu
ESC::
exitapp 
