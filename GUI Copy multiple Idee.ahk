

Gui, Add, ListBox, x12 y50 w150 h140 , ListBox
Gui, Add, Button, x32 y190 w110 h30 , Selecteer Bestand
Gui, Add, Button, x172 y150 w100 h30 , Wis Lijst
Gui, Add, Button, x302 y190 w110 h30 , Selecteer Locaties
Gui, Add, Button, x342 y250 w100 h30 , Exit
Gui, Add, ListBox, x282 y50 w150 h140 , ListBox
Gui, Font, S12 CDefault, Arial
Gui, Add, CheckBox, x172 y50 w100 h30 , Bevestiging
Gui, Add, Button, x172 y100 w100 h30 , Start
Gui, Add, Text, x12 y20 w150 h30 +Center, Bestand / Bestanden
Gui, Add, Text, x282 y20 w150 h30 +Center, Locaties:
Gui, Add, Progress, x42 y260 w210 h20 , 100 ; Percentage Variabele Plaatsen
Gui, Add, Text, x42 y230 w90 h20 , Vooruitgang
Gui, Add, Text, x2 y250 w40 h30 +RIGHT, 0`%
Gui, Add, Text, x252 y250 w40 h30 , 100`%
Gui, Show, x127 y87 h309 w491, New GUI Window
Return

ButtonSelecteerBestand:

FileSelectFile, bestand, M3, K:\Tekeningenbeheer, Selecteer Bestanden,  ; M3 = Multiselect existing files.
if bestand = 
{
    MsgBox, Geen bestanden gekozen
    return
}
else
Loop, parse, ListBox, |
{
    if a_index = 1
        MsgBox, The selected files are all contained in %A_LoopField%.
    else
    {
        MsgBox, 4, , The next file is %A_LoopField%.  Continue?
        IfMsgBox, No, break
    }
}
return



ButtonSelecteerLocaties:
fileselectfolder, map, K:\Tekeningenbeheer, 3, Selecteer uw mappen
return

GuiClose:
ButtonExit:
ExitApp

/*
; K:\Tekeningenbeheer\FLO\T10020

; Multi-Select Example:
FileSelectFile, bestand, M3  ; M3 = Multiselect existing files.
if files =
{
    MsgBox, The user pressed cancel.
    return
}
Loop, parse, files, `n
{
    if a_index = 1
        MsgBox, The selected files are all contained in %A_LoopField%.
    else
    {
        MsgBox, 4, , The next file is %A_LoopField%.  Continue?
        IfMsgBox, No, break
    }
}
return

















Gui, Add, ListBox, x12 y50 w150 h140 , ListBox
Gui, Add, Button, x32 y190 w110 h30 , Selecteer Bestand
Gui, Add, Button, x172 y150 w100 h30 , Wis Lijst
Gui, Add, Button, x302 y190 w110 h30 , Selecteer Locaties
Gui, Add, Button, x342 y250 w100 h30 , Exit
Gui, Add, ListBox, x282 y50 w150 h140 , ListBox
Gui, Font, S12 CDefault, Arial
Gui, Add, CheckBox, x172 y50 w100 h30 , Bevestiging
Gui, Add, Button, x172 y100 w100 h30 , Start
Gui, Add, Text, x12 y20 w150 h30 +Center, Bestand / Bestanden
Gui, Add, Text, x282 y20 w150 h30 +Center, Locaties:
Gui, Add, Progress, x42 y260 w210 h20 , 100 ; Percentage Variabele Plaatsen
Gui, Add, Text, x42 y230 w90 h20 , Vooruitgang
Gui, Add, Text, x2 y250 w40 h30 , 0`%
Gui, Add, Text, x252 y250 w40 h30 , 100`%
; Generated using SmartGUI Creator 4.0
Gui, Show, x127 y87 h309 w491, New GUI Window
Return

GuiClose:
ExitApp