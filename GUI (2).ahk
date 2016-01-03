terug:
Gui, Show, x127 y87 h274 w216, New GUI Window
Gui, Add, Radio, vRadio1 x12 y10 w190 h20 , First Choice
Gui, Add, Radio, vRadio2 x12 y40 w190 h20 , Second Choice
Gui, Add, Radio, vRadio3 x12 y70 w190 h20 , Third Choice
Gui, Add, Radio, vRadio4 x12 y100 w190 h20 , fourth Choice
Gui, Add, Radio, vRadio5 x12 y130 w190 h20 , Fitfh Choice
Gui, Add, Radio, vRadio6 x12 y160 w190 h20 , Sixth choice
Gui, Add, Radio, vRadio7 x12 y190 w190 h20 , Seventh choice
Gui, Add, Radio, vRadio8 x12 y220 w190 h20 , Eight Choice
gui, add, button, vEnter, Enter
Return
 
buttonEnter:
gui, submit
gui, destroy
 
if Radio1 = 1
{
Msgbox Yes this is the first choice
exitapp
}
 
 
if Radio2 = 1
{
msgbox Second choice
gui, destroy
exitapp
}
 
Radio3 = 1
{
msgbox third choice
goto next
gui, destroy
return
}
 
next:
Gui, Show, h150 w300, New GUI Window
Gui, Add, Text, x5 y10 w280 h60 , Text
Gui, Add, Edit, vInputt x2 y70 w280 h20 , Edit
Gui, Add, Button, x20 y110 w100 h30 , Kiezen
Gui, Add, Button, x180 y110 w100 h30 , Annuleer
Gui, Font, S10 CDefault, Verdana
return
 
buttonKiezen:
gui, submit
gui, destroy
msgbox (%Inputt%)
exitapp
 
buttonAnnuleer:
gui, destroy
goto terug
return
 
 
GuiClose:
ExitApp
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 