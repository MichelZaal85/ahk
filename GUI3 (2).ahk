

::E100-01::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Overige|-01 Water|-02 Riool|-03 Overigen|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 CV
{
E11i = C.V. installatie
goto E100-01
}
If E11 = -02 Lucht
{
E11i = Lucht Installatie
goto E100-01
}
If E11 = -03 Overige
{
E11i = Overige
goto E100-01
}
If E11 = -01 Water
{
E11i = Nog leeg?
goto E100-01
}
If E11 = -02 Riool
{
msgbox -02 Riool
gui, destroy
return
}
If E11 = -03 Overigen
{
msgbox -01 Overigen keuze
gui, destroy
return
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E100-01
return
buttonInvoeren-voor-E100-01:
gui, submit
gui, destroy

E100-01:
send E100-01 tekst %E11i%
return



