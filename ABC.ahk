::run::
send hello
gosub Run
send %Edit%
return



Run:
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gSubmit vKeuze, Maak uw keuze...||-01 CV|-02 Lucht|-03 Overige|-01 Water|-02 Riool|-03 Overigen|Zelf Kiezen
return

Submit:
gui, submit
goto keuzes



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





keuzes:
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





/*GUI, show, h85 w200, test
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gSubmit vKeuze, Maak uw keuze...||-01 CV|-02 Lucht|-03 Overige|-01 Water|-02 Riool|-03 Overigen|Zelf Kiezen
;gui, add, button, default, Annuleer
return
Submit:
gui, submit
if Keuze = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
exitapp
}
If Keuze = -01 CV
{
msgbox CV
exitapp
}
If Keuze = -02 Lucht
{
msgbox -02 Lucht
exitapp
}
If Keuze = -03 Overige
{
msgbox -03 Overige
exitapp
}
If Keuze = -01 Water
{
msgbox -01 Water
exitapp
}
If Keuze = -02 Riool
{
msgbox -02 Riool
exitapp
}
If Keuze = -03 Overigen
{
msgbox -01 Overigen keuze
exitapp
}
If Keuze = Zelf Kiezen
{
goto kiezen
}
return
msgbox %Keuze%
exitapp
kiezen:
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vEdit, 
gui, add, button, default, Invoeren
return
buttonInvoeren:
gui, submit
msgbox (%Edit%)
Exitapp
Esc::
exitapp

 
 
 
 
