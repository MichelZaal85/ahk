GUI, show, h100 w200, test
Gui, Add, DropDownList, vKeuze, Kiezen...||-01 CV|-02 Lucht|-03 Overige|-01 Water|-02 Riool|-03 Overige|Zelf Kiezen
gui, add, button, vEnter, Enter
return
 
buttonEnter:
gui, submit
 
if Keuze = Kiezen...
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
 
If Keuze = -01 CV
{
msgbox CV
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
GUI, show, h100 w200, test
gui, add, edit, vEdit,(invullen)
gui, add, button, default, GA
return
 
buttonGA:
gui, submit
msgbox %Edit%
 
 
 
 
 
 
 