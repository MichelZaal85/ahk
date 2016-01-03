Gui, Add, ComboBox, x2 y-54 w150 h164 , ComboBox
Gui, Add, Edit, x72 y40 w150 h20 vName, naam
Gui, Add, Edit, x72 y70 w150 h20 vAge, Leeftijd 
Gui, Add, Edit, x72 y100 w150 h20 vSex, Man/Vrouw
Gui, Add, Text, x2 y40 w70 h20 , Name
Gui, Add, Text, x2 y70 w70 h20 , Age
Gui, Add, Text, x2 y100 w70 h20 , Sex
Gui, Add, Button, x22 y140 w80 h20 , OK
Gui, Add, Button, x142 y140 w80 h20 , Cancel
Gui, Add, Text, x2 y10 w120 h20 , Fill in all the fields
Gui, Font, S8 CDefault Bold, Verdana
Gui, Font, S8 CDefault Bold, Verdana
Gui, Font, Bold, Fill in all the fields
Gui, Show, x136 y111 h184 w233, New GUI Window
Return

ButtonOK:
Gui, submit 
naam = %vName%
Leeftijd = %vAge%
Sex = %vSex%
MsgBox, Hey %vName% je leeftijd is %vAge% en je bent een %vSex%


ButtonCancel:
GuiClose:
ExitApp