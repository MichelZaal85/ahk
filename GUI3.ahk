::run::

runn:
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gSubmit vKeuze, Maak uw keuze...||-01 CV|-02 Lucht|-03 Overige|-01 Water|-02 Riool|-03 Overigen|Zelf Kiezen
return

Submit:
gui, submit
if Keuze = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If Keuze = -01 CV
{
msgbox CV
gui, destroy
return
}
If Keuze = -02 Lucht
{
msgbox -02 Lucht
gui, destroy
return
}
If Keuze = -03 Overige
{
msgbox -03 Overige
gui, destroy
return
}
If Keuze = -01 Water
{
msgbox -01 Water
gui, destroy
return
}
If Keuze = -02 Riool
{
msgbox -02 Riool
gui, destroy
return
}
If Keuze = -03 Overigen
{
msgbox -01 Overigen keuze
gui, destroy
return
}
If Keuze = Zelf Kiezen
{
goto kiezen
}

kiezen:
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vEdit, 
gui, add, button, default, Invoeren
return
buttonInvoeren:
gui, submit
gui, destroy
goto e1000
return
e1000:

send E100-01 %Edit%
return




