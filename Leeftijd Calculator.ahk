Gui, Add, Text, x17 y8 w120 h20, Je naam:
Gui, Add, Text, x17 y38 w120 h20, Je geboorte jaar (yyyy):
Gui, Add, Edit, x157 y8 w100 h20 vName, Naam
Gui, Add, Edit, x157 y38 w100 h20 vYear, Jaar
Gui, Add, Button, x27 y68 w70 h20, OK
Gui, Add, Button, x177 y68 w70 h20, Cancel
Gui, Show, x279 y217 h98 w277, Leeftijd Berekenen
Return 

ButtonCancel:
	GuiClose:
	ExitApp

ButtonOk:
	Gui, submit
	Leeftijd = %A_year% ;%a_year% holds the current year
	Leeftijd -= %Year%   ; %year% holds the year submitted by user
	Msgbox, Hey %name%! Je bent nu %Leeftijd% jaar oud!
	ExitApp