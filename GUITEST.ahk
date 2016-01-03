

::E10F01:: 
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gSubmitE10F01 vKeuzeE10F01, Maak uw keuze...||-01 CV|-02 Lucht|-03 Overige|-01 Water|-02 Riool|-03 Overigen|Zelf Kiezen
return
SubmitE10F01:
gui, submit
if KeuzeE10F01 = Maak uw keuze
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If KeuzeE10F01 = -01 CV
{
msgbox CV
gui, destroy
return
}
If KeuzeE10F01 = -02 Lucht
{
msgbox 02 Lucht
gui, destroy
return
}
If KeuzeE10F01 = -03 Overige
{
msgbox -03 Overige
gui, destroy
return
}
If KeuzeE10F01 = -01 Water
{
msgbox -01 Water
gui, destroy
return
}
If KeuzeE10F01 = -02 Riool
{
msgbox -02 Riool
gui, destroy
return
}
If KeuzeE10F01 = -03 Overigen
{
msgbox -01 Overigen keuze
gui, destroy
return
}
If KeuzeE10F01 = Zelf Kiezen
{
goto kiezenE10F01
}
kiezenE10F01:
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE10F01, 
return


gosub enter
msgbox %E10F01%
return

enter:
enter::
numpadenter::
return
gui, submit
gui, destroy
return




/*

;***************************************************************************************************************************************************************

::E10F02:: 
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gSubmitE10F02 vKeuzeE10F02, Maak uw keuze...||-01 CV|-02 Lucht|-03 Overige|-01 Water|-02 Riool|-03 Overigen|Zelf Kiezen
return
SubmitE10F02E10F02:
gui, submit
if KeuzeE10F02 = Maak uw keuze
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If KeuzeE10F02 = -01 CV
{
msgbox CV
gui, destroy
return
}
If KeuzeE10F02 = -02 Lucht
{
msgbox 02 Lucht
gui, destroy
return
}
If KeuzeE10F02 = -03 Overige
{
msgbox -03 Overige
gui, destroy
return
}
If KeuzeE10F02 = -01 Water
{
msgbox -01 Water
gui, destroy
return
}
If KeuzeE10F02 = -02 Riool
{
msgbox -02 Riool
gui, destroy
return
}
If KeuzeE10F02 = -03 Overigen
{
msgbox -01 Overigen keuze
gui, destroy
return
}
If KeuzeE10F02 = Zelf Kiezen
{
goto kiezenE10F02
}
kiezenE10F02:
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE10F02, 
gosub enter
msgbox %E10F02%
return



enter:
#ifwinexist ahk_class AutoHotkeyGUI
enter::
numpadenter::
gui, submit
gui, destroy








/*
;{tab 6}Mul BV Ontwerpers & Advisseurs{shiftdown}{ctrldown}{tab}{ctrlup}{shiftup}{tab 10}E{shiftdown}{tab 10}{shiftup}Elektrotechnische Installatie t.b.v. Licht en Krachtinstallatie,{tab}Plattegrond Fundering
:C1:E1K2-01::
E1K2{tab 6}Mul BV Ontwerpers & Advisseurs{shiftdown}{ctrldown}{tab}{ctrlup}{shiftup}{tab 10}E{shiftdown}{tab 10}{shiftup}Elektrotechnische Installatie t.b.v. Licht en Krachtinstallatie,{tab}Plattegrond Kelder -2
:C1:E1K1-01::
E1K1{tab 6}Mul BV Ontwerpers & Advisseurs{shiftdown}{ctrldown}{tab}{ctrlup}{shiftup}{tab 10}E{shiftdown}{tab 10}{shiftup}Elektrotechnische Installatie t.b.v. Licht en Krachtinstallatie,{tab}Plattegrond Kelder -1
:C1:E1KR-01::
E1KR{tab 6}Mul BV Ontwerpers & Advisseurs{shiftdown}{ctrldown}{tab}{ctrlup}{shiftup}{tab 10}E{shiftdown}{tab 10}{shiftup}Elektrotechnische Installatie t.b.v. Licht en Krachtinstallatie,{tab}Plattegrond Kruipruimte
:C1:E100-01::
E100{tab 6}Mul BV Ontwerpers & Advisseurs{shiftdown}{ctrldown}{tab}{ctrlup}{shiftup}{tab 10}E{shiftdown}{tab 10}{shiftup}Elektrotechnische Installatie t.b.v. Licht en Krachtinstallatie,{tab}Plattegrond Begane Grond
:C1:E1T0-01::
E1T0{tab 6}Mul BV Ontwerpers & Advisseurs{shiftdown}{ctrldown}{tab}{ctrlup}{shiftup}{tab 10}E{shiftdown}{tab 10}{shiftup}Elektrotechnische Installatie t.b.v. Licht en Krachtinstallatie,{tab}Plattegrond Tussenverdieping Tussen BG en 1e Verdieping
:C1:E101-01::
E101{tab 6}Mul BV Ontwerpers & Advisseurs{shiftdown}{ctrldown}{tab}{ctrlup}{shiftup}{tab 10}E{shiftdown}{tab 10}{shiftup}Elektrotechnische Installatie t.b.v. Licht en Krachtinstallatie,{tab}Plattegrond 1e Verdieping
:C1:E1T1-01::
E1T1{tab 6}Mul BV Ontwerpers & Advisseurs{shiftdown}{ctrldown}{tab}{ctrlup}{shiftup}{tab 10}E{shiftdown}{tab 10}{shiftup}Elektrotechnische Installatie t.b.v. Licht en Krachtinstallatie,{tab}Plattegrond Tussenverdieping Tussen 1e en 2e Verdieping
:C1:E102-01::
E102{tab 6}Mul BV Ontwerpers & Advisseurs{shiftdown}{ctrldown}{tab}{ctrlup}{shiftup}{tab 10}E{shiftdown}{tab 10}{shiftup}Elektrotechnische Installatie t.b.v. Licht en Krachtinstallatie,{tab}Plattegrond 2e Verdieping
:C1:E103-01::
E103{tab 6}Mul BV Ontwerpers & Advisseurs{shiftdown}{ctrldown}{tab}{ctrlup}{shiftup}{tab 10}E{shiftdown}{tab 10}{shiftup}Elektrotechnische Installatie t.b.v. Licht en Krachtinstallatie,{tab}Plattegrond 3e Verdieping
:C1:E104-01::
E104{tab 6}Mul BV Ontwerpers & Advisseurs{shiftdown}{ctrldown}{tab}{ctrlup}{shiftup}{tab 10}E{shiftdown}{tab 10}{shiftup}Elektrotechnische Installatie t.b.v. Licht en Krachtinstallatie,{tab}Plattegrond 4e Verdieping
:C1:E105-01::
E105{tab 6}Mul BV Ontwerpers & Advisseurs{shiftdown}{ctrldown}{tab}{ctrlup}{shiftup}{tab 10}E{shiftdown}{tab 10}{shiftup}Elektrotechnische Installatie t.b.v. Licht en Krachtinstallatie,{tab}Plattegrond 5e Verdieping
:C1:E106-01::
E106{tab 6}Mul BV Ontwerpers & Advisseurs{shiftdown}{ctrldown}{tab}{ctrlup}{shiftup}{tab 10}E{shiftdown}{tab 10}{shiftup}Elektrotechnische Installatie t.b.v. Licht en Krachtinstallatie,{tab}Plattegrond 6e Verdieping
:C1:E107-01::
