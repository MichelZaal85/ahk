Gui, Add, CheckBox, x22 y10 w210 h30 checked, PDF
Gui, Add, CheckBox, x22 y40 w210 h30 , DWG

Gui, Add, Text, x22 y80 w160 h30 , Systeemnaam
Gui, Add, Edit, x22 y110 w160 h20 ,  
Gui, Add, Text, x192 y80 w160 h30 , Bestandsnaam
Gui, Add, Edit, x192 y110 w160 h20 , 
Gui, Add, Text, x22 y140 w340 h40 , Beschrijving
Gui, Add, Edit, x22 y180 w340 h50 , 
Gui, Add, Text, x22 y240 w100 h30 , Formaat
Gui, Add, Edit, x22 y270 w70 h30 , 

Gui, Add, CheckBox, x22 y310 w100 h30 , Notificatie
Gui, Add, CheckBox, x23 y340 w100 h30 , Aanmaakdatum gelijk

FormatTime, datum,, ShortDate
DDD := SubStr(datum, 1, 2)
MMM := SubStr(datum, 4, 1)
JJJ := SubStr(datum, 6, 4)


Gui, Add, ComboBox, x22 y390 w50 h21 vDag0, 01|02|03|04|05|06|07|08|09|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30|31|%DDD%||
Gui, Add, ComboBox, x82 y390 w50 h21 vMaand0, 01|02|03|04|05|06|07|08|09|10|11|12|%MMM%||
Gui, Add, ComboBox, x142 y390 w70 h21 vJaar0, 2013|2012|2011|2010|%JJJ%||
Gui, Add, ComboBox, x242 y390 w50 h21 vDag1, 01|02|03|04|05|06|07|08|09|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30|31|%DDD%||
Gui, Add, ComboBox, x302 y390 w50 h21 vMaand1, 01|02|03|04|05|06|07|08|09|10|11|12|%MMM%||
Gui, Add, ComboBox, x362 y390 w70 h21 vJaar1, 2013|2012|2011|2010|%JJJ%||

Gui, Add, Button, x22 y430 w100 h30 , Rest
Gui, Add, Button, x162 y430 w100 h30 , Verstuur

Gui, Add, CheckBox, x272 y430 w100 h30 checked vSwitch, ON / OFF


Gui, Show, x440 y262 h478 w462, New GUI Window
Return

GuiClose:
ExitApp
