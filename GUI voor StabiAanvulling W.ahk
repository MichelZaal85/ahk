
;W100-01 = W01
::W100-01::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW01 vW01, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W01:
gui, submit
if W01 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W01 = -01 CV
{
W01i = C.V. installatie
goto W100-01
}
If W01 = -02 Lucht
{
W01i = Lucht Installatie
goto W100-01
}
If W01 = -03 Koeling
{
W01i = Koeling
goto W100-01
}
If W01 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW01i, 
gui, add, button, default, Invoeren`-Voor`-W100-01
return
buttonInvoeren-voor-W100-01:
gui, submit
gui, destroy

W100-01:
send W100-01 tekst %W01i%
return





*/
















;W100-02




::W100-02::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW02, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W02:
gui, submit
if W02 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W02 = -01 CV
{
W02i = C.V. installatie
goto W100-02
}
If W02 = -02 Lucht
{
W02i = Lucht Installatie
goto W100-02
}
If W02 = -03 Koeling
{
W02i = Koeling
goto W100-02
}
If W02 = -01 Water
{
W02i = Nog leeg?
goto W100-02
}
If W02 = -02 Riool
{
msgbox -02 Riool
gui, destroy
return
}
If W02 = -03 Koelingn
{
msgbox -01 Koelingn keuze
gui, destroy
return
}
If W02 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW02i, 
gui, add, button, default, Invoeren`-Voor`-W100-02
return
buttonInvoeren-voor-W100-02:
gui, submit
gui, destroy

W100-02:
send W100-02 tekst %W02i%
return






































;W100-03

::W100-03::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW03, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W03:
gui, submit
if W03 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W03 = -01 CV
{
W03i = C.V. installatie
goto W100-03
}
If W03 = -02 Lucht
{
W03i = Lucht Installatie
goto W100-03
}
If W03 = -03 Koeling
{
W03i = Koeling
goto W100-03
}
If W03 = -01 Water
{
W03i = Nog leeg?
goto W100-03
}
If W03 = -02 Riool
{
W03i = Nog leeg?
goto W100-03
}
If W03 = -03 Koelingn
{
W03i = Nog leeg?
goto W100-03
}
If W03 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW03i, 
gui, add, button, default, Invoeren`-Voor`-W100-03
return
buttonInvoeren-voor-W100-03:
gui, submit
gui, destroy

W100-03:
send W100-03 tekst %W03i%
return








































;W101-01
::W101-01::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W100-01
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W100-01
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W100-01
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W100-01
}
If W11 = -02 Riool
{
msgbox -02 Riool
gui, destroy
return
}
If W11 = -03 Koelingn
{
msgbox -01 Koelingn keuze
gui, destroy
return
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren-Voor-W101-01
return
buttonInvoeren-voor-W101-01:
gui, submit
gui, destroy

W101-01:
send W101-01 tekst %W11i%
return





























;W101-02

::W101-02::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW12 vW12, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W12:
gui, submit
if W12 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W12 = -01 CV
{
W12i = C.V. installatie
goto W101-02
}
If W12 = -02 Lucht
{
W12i = Lucht Installatie
goto W101-02
}
If W12 = -03 Koeling
{
W12i = Koeling
goto W101-02
}
If W12 = -01 Water
{
W12i = Nog leeg?
goto W101-02
}
If W12 = -02 Riool
{
msgbox -02 Riool
gui, destroy
return
}
If W12 = -03 Koelingn
{
msgbox -01 Koelingn keuze
gui, destroy
return
}
If W12 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW12i, 
gui, add, button, default, Invoeren`-Voor`-W101-02
return
buttonInvoeren-voor-W101-02:
gui, submit
gui, destroy

W101-02:
send W101-02 tekst %W12i%
return



































;W101-03
::W101-03::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW13 vW13, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W13:
gui, submit
if W13 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W13 = -01 CV
{
W13i = C.V. installatie
goto W101-03
}
If W13 = -02 Lucht
{
W13i = Lucht Installatie
goto W101-03
}
If W13 = -03 Koeling
{
W13i = Koeling
goto W101-03
}
If W13 = -01 Water
{
W13i = Nog leeg?
goto W101-03
}
If W13 = -02 Riool
{
msgbox -02 Riool
gui, destroy
return
}
If W13 = -03 Koelingn
{
msgbox -01 Koelingn keuze
gui, destroy
return
}
If W13 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW13i, 
gui, add, button, default, Invoeren`-Voor`-W101-03
return
buttonInvoeren-voor-W101-03:
gui, submit
gui, destroy

W101-03:
send W101-03 tekst %W13i%
return












































; W102-01
::W101-01::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW21 vW21, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W21:
gui, submit
if W21 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W21 = -01 CV
{
W21i = C.V. installatie
goto W102-01
}
If W21 = -02 Lucht
{
W21i = Lucht Installatie
goto W102-01
}
If W21 = -03 Koeling
{
W21i = Koeling
goto W102-01
}
If W21 = -01 Water
{
W21i = Nog leeg?
goto W102-01
}
If W21 = -02 Riool
{
msgbox -02 Riool
gui, destroy
return
}
If W21 = -03 Koelingn
{
msgbox -01 Koelingn keuze
gui, destroy
return
}
If W21 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW21i, 
gui, add, button, default, Invoeren`-Voor`-W102-01
return
buttonInvoeren-voor-W102-01:
gui, submit
gui, destroy

W102-01:
send W102-01 tekst %W21i%
return



























; W102-02
::W102-02::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW22 vW22, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W22:
gui, submit
if W22 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W22 = -01 CV
{
W22i = C.V. installatie
goto W102-02
}
If W22 = -02 Lucht
{
W22i = Lucht Installatie
goto W102-02
}
If W22 = -03 Koeling
{
W22i = Koeling
goto W102-02
}
If W22 = -01 Water
{
W22i = Nog leeg?
goto W102-02
}
If W22 = -02 Riool
{
msgbox -02 Riool
gui, destroy
return
}
If W22 = -03 Koelingn
{
msgbox -01 Koelingn keuze
gui, destroy
return
}
If W22 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW22i, 
gui, add, button, default, Invoeren`-Voor`-W102-02
return
buttonInvoeren-voor-W102-02:
gui, submit
gui, destroy

W102-02:
send W102-02 tekst %W22i%
return






















;W102-03
::W102-03::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW23 vW23, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W23:
gui, submit
if W23 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W23 = -01 CV
{
W23i = C.V. installatie
goto W102-03
}
If W23 = -02 Lucht
{
W23i = Lucht Installatie
goto W102-03
}
If W23 = -03 Koeling
{
W23i = Koeling
goto W102-03
}
If W23 = -01 Water
{
W23i = Nog leeg?
goto W102-03
}
If W23 = -02 Riool
{
msgbox -02 Riool
gui, destroy
return
}
If W23 = -03 Koelingn
{
msgbox -01 Koelingn keuze
gui, destroy
return
}
If W23 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW23i, 
gui, add, button, default, Invoeren`-Voor`-W102-03
return
buttonInvoeren-voor-W102-03:
gui, submit
gui, destroy

W102-03:
send W102-03 tekst %W23i%
return




















;W103-01
::W103-01::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW31 vW31, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W31:
gui, submit
if W31 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W31 = -01 CV
{
W31i = C.V. installatie
goto W103-01
}
If W31 = -02 Lucht
{
W31i = Lucht Installatie
goto W103-01
}
If W31 = -03 Koeling
{
W31i = Koeling
goto W103-01
}
If W31 = -01 Water
{
W31i = Nog leeg?
goto W103-01
}
If W31 = -02 Riool
{
W31i = Nog leeg?
goto W103-01
}
If W31 = -03 Koelingn
{
W31i = Nog leeg?
goto W103-01
}
If W31 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW31i, 
gui, add, button, default, Invoeren`-Voor`-W103-01
return
buttonInvoeren-voor-W103-01:
gui, submit
gui, destroy

W103-01:
send W103-01 tekst %W31i%
return


















; W103-02
::W103-02::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW32 vW32, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W32:
gui, submit
if W32 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W32 = -01 CV
{
W32i = C.V. installatie
goto W103-02
}
If W32 = -02 Lucht
{
W32i = Lucht Installatie
goto W103-02
}
If W32 = -03 Koeling
{
W32i = Koeling
goto W103-02
}
If W32 = -01 Water
{
W32i = Nog leeg?
goto W103-02
}
If W32 = -02 Riool
{
W32i = Nog leeg?
goto W103-02
}
If W32 = -03 Koelingn
{
W32i = Nog leeg?
goto W103-02
}
If W32 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW32i, 
gui, add, button, default, Invoeren`-Voor`-W103-02
return
buttonInvoeren-voor-W103-02:
gui, submit
gui, destroy

W103-02:
send W103-02 tekst %W32i%
return




































; W103-03
::W103-03::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW33 vW33, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W33:
gui, submit
if W33 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W33 = -01 CV
{
W33i = C.V. installatie
goto W103-03
}
If W33 = -02 Lucht
{
W33i = Lucht Installatie
goto W103-03
}
If W33 = -03 Koeling
{
W33i = Koeling
goto W103-03
}
If W33 = -01 Water
{
W33i = Nog leeg?
goto W103-03
}
If W33 = -02 Riool
{
W33i = Nog leeg?
goto W103-03
}
If W33 = -03 Koelingn
{
W33i = Nog leeg?
goto W103-03
}
If W33 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW33i, 
gui, add, button, default, Invoeren`-Voor`-W103-03
return
buttonInvoeren-voor-W103-03:
gui, submit
gui, destroy

W103-03:
send W103-03 tekst %W33i%
return




































; W104-01
::W104-01::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW41 vW41, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W41:
gui, submit
if W41 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W41 = -01 CV
{
W41i = C.V. installatie
goto W104-01
}
If W41 = -02 Lucht
{
W41i = Lucht Installatie
goto W104-01
}
If W41 = -03 Koeling
{
W41i = Koeling
goto W104-01
}
If W41 = -01 Water
{
W41i = Nog leeg?
goto W104-01
}
If W41 = -02 Riool
{
W41i = Nog leeg?
goto W104-01
}
If W41 = -03 Koelingn
{
W41i = Nog leeg?
goto W104-01
}
If W41 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW41i, 
gui, add, button, default, Invoeren`-Voor`-W104-01
return
buttonInvoeren-voor-W104-01:
gui, submit
gui, destroy

W104-01:
send W104-01 tekst %W41i%
return




































; W104-02
::W104-02::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW42 vW42, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W42:
gui, submit
if W42 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W42 = -01 CV
{
W42i = C.V. installatie
goto W104-02
}
If W42 = -02 Lucht
{
W42i = Lucht Installatie
goto W104-02
}
If W42 = -03 Koeling
{
W42i = Koeling
goto W104-02
}
If W42 = -01 Water
{
W42i = Nog leeg?
goto W104-02
}
If W42 = -02 Riool
{
W42i = Nog leeg?
goto W104-02
}
If W42 = -03 Koelingn
{
W42i = Nog leeg?
goto W104-02
}
If W42 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW42i, 
gui, add, button, default, Invoeren`-Voor`-W104-02
return
buttonInvoeren-voor-W104-02:
gui, submit
gui, destroy

W104-02:
send W104-02 tekst %W42i%
return




































; W104-03
::W104-03::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW43 vW43, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W43:
gui, submit
if W43 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W43 = -01 CV
{
W43i = C.V. installatie
goto W104-03
}
If W43 = -02 Lucht
{
W43i = Lucht Installatie
goto W104-03
}
If W43 = -03 Koeling
{
W43i = Koeling
goto W104-03
}
If W43 = -01 Water
{
W43i = Nog leeg?
goto W104-03
}
If W43 = -02 Riool
{
W43i = Nog leeg?
goto W104-03
}
If W43 = -03 Koelingn
{
W43i = Nog leeg?
goto W104-03
}
If W43 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW43i, 
gui, add, button, default, Invoeren`-Voor`-W104-03
return
buttonInvoeren-voor-W104-03:
gui, submit
gui, destroy

W104-03:
send W104-03 tekst %W43i%
return




































; W105-01
::W105-01::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW51 vW51, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W51:
gui, submit
if W51 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W51 = -01 CV
{
W51i = C.V. installatie
goto W105-01
}
If W51 = -02 Lucht
{
W51i = Lucht Installatie
goto W105-01
}
If W51 = -03 Koeling
{
W51i = Koeling
goto W105-01
}
If W51 = -01 Water
{
W51i = Nog leeg?
goto W105-01
}
If W51 = -02 Riool
{
W51i = Nog leeg?
goto W105-01
}
If W51 = -03 Koelingn
{
W51i = Nog leeg?
goto W105-01
}
If W51 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW51i, 
gui, add, button, default, Invoeren`-Voor`-W105-01
return
buttonInvoeren-voor-W105-01:
gui, submit
gui, destroy

W105-01:
send W105-01 tekst %W51i%
return




































; W105-02
::W105-02::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW52 vW52, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W52:
gui, submit
if W52 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W52 = -01 CV
{
W52i = C.V. installatie
goto W105-02
}
If W52 = -02 Lucht
{
W52i = Lucht Installatie
goto W105-02
}
If W52 = -03 Koeling
{
W52i = Koeling
goto W105-02
}
If W52 = -01 Water
{
W52i = Nog leeg?
goto W105-02
}
If W52 = -02 Riool
{
W52i = Nog leeg?
goto W105-02
}
If W52 = -03 Koelingn
{
W52i = Nog leeg?
goto W105-02
}
If W52 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW52i, 
gui, add, button, default, Invoeren`-Voor`-W105-02
return
buttonInvoeren-voor-W105-02:
gui, submit
gui, destroy

W105-02:
send W105-02 tekst %W52i%
return




































;W105-03
::W105-03::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW53 vW53, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W53:
gui, submit
if W53 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W53 = -01 CV
{
W53i = C.V. installatie
goto W105-03
}
If W53 = -02 Lucht
{
W53i = Lucht Installatie
goto W105-03
}
If W53 = -03 Koeling
{
W53i = Koeling
goto W105-03
}
If W53 = -01 Water
{
W53i = Nog leeg?
goto W105-03
}
If W53 = -02 Riool
{
W53i = Nog leeg?
goto W105-03
}
If W53 = -03 Koelingn
{
W53i = Nog leeg?
goto W105-03
}
If W53 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW53i, 
gui, add, button, default, Invoeren`-Voor`-W105-03
return
buttonInvoeren-voor-W105-03:
gui, submit
gui, destroy

W105-03:
send W105-03 tekst %W53i%
return




































;W106-01
::W106-01::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW61 vW61, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W61:
gui, submit
if W61 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W61 = -01 CV
{
W61i = C.V. installatie
goto W106-01
}
If W61 = -02 Lucht
{
W61i = Lucht Installatie
goto W106-01
}
If W61 = -03 Koeling
{
W61i = Koeling
goto W106-01
}
If W61 = -01 Water
{
W61i = Nog leeg?
goto W106-01
}
If W61 = -02 Riool
{
W61i = Nog leeg?
goto W106-01
}
If W61 = -03 Koelingn
{
W61i = Nog leeg?
goto W106-01
}
If W61 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW61i, 
gui, add, button, default, Invoeren`-Voor`-W106-01
return
buttonInvoeren-voor-W106-01:
gui, submit
gui, destroy

W106-01:
send W106-01 tekst %W61i%
return




































;W106-02
::W106-02::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW62 vW62, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W62:
gui, submit
if W62 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W62 = -01 CV
{
W62i = C.V. installatie
goto W106-02
}
If W62 = -02 Lucht
{
W62i = Lucht Installatie
goto W106-02
}
If W62 = -03 Koeling
{
W62i = Koeling
goto W106-02
}
If W62 = -01 Water
{
W62i = Nog leeg?
goto W106-02
}
If W62 = -02 Riool
{
W62i = Nog leeg?
goto W106-02
}
If W62 = -03 Koelingn
{
W62i = Nog leeg?
goto W106-02
}
If W62 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW62i, 
gui, add, button, default, Invoeren`-Voor`-W106-02
return
buttonInvoeren-voor-W106-02:
gui, submit
gui, destroy

W106-02:
send W106-02 tekst %W62i%
return




































;W106-03
::W106-03::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW63 vW63, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W63:
gui, submit
if W63 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W63 = -01 CV
{
W63i = C.V. installatie
goto W106-03
}
If W63 = -02 Lucht
{
W63i = Lucht Installatie
goto W106-03
}
If W63 = -03 Koeling
{
W63i = Koeling
goto W106-03
}
If W63 = -01 Water
{
W63i = Nog leeg?
goto W106-03
}
If W63 = -02 Riool
{
W63i = Nog leeg?
goto W106-03
}
If W63 = -03 Koelingn
{
W63i = Nog leeg?
goto W106-03
}
If W63 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW63i, 
gui, add, button, default, Invoeren`-Voor`-W106-03
return
buttonInvoeren-voor-W106-03:
gui, submit
gui, destroy

W106-03:
send W106-03 tekst %W63i%
return




































;W107-01
::W107-01::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW71 vW71, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W71:
gui, submit
if W71 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W71 = -01 CV
{
W71i = C.V. installatie
goto W107-01
}
If W71 = -02 Lucht
{
W71i = Lucht Installatie
goto W107-01
}
If W71 = -03 Koeling
{
W71i = Koeling
goto W107-01
}
If W71 = -01 Water
{
W71i = Nog leeg?
goto W107-01
}
If W71 = -02 Riool
{
W71i = Nog leeg?
goto W107-01
}
If W71 = -03 Koelingn
{
W71i = Nog leeg?
goto W107-01
}
If W71 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW71i, 
gui, add, button, default, Invoeren`-Voor`-W107-01
return
buttonInvoeren-voor-W107-01:
gui, submit
gui, destroy

W107-01:
send W107-01 tekst %W71i%
return




































;W107-02
::W107-02::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW72 vW72, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W72:
gui, submit
if W72 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W72 = -01 CV
{
W72i = C.V. installatie
goto W107-02
}
If W72 = -02 Lucht
{
W72i = Lucht Installatie
goto W107-02
}
If W72 = -03 Koeling
{
W72i = Koeling
goto W107-02
}
If W72 = -01 Water
{
W72i = Nog leeg?
goto W107-02
}
If W72 = -02 Riool
{
W72i = Nog leeg?
goto W107-02
}
If W72 = -03 Koelingn
{
W72i = Nog leeg?
goto W107-02
}
If W72 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW72i, 
gui, add, button, default, Invoeren`-Voor`-W107-02
return
buttonInvoeren-voor-W107-02:
gui, submit
gui, destroy

W107-02:
send W107-02 tekst %W72i%
return




































;W107-03
::W107-03::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW73 vW73, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W73:
gui, submit
if W73 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W73 = -01 CV
{
W73i = C.V. installatie
goto W107-03
}
If W73 = -02 Lucht
{
W73i = Lucht Installatie
goto W107-03
}
If W73 = -03 Koeling
{
W73i = Koeling
goto W107-03
}
If W73 = -01 Water
{
W73i = Nog leeg?
goto W107-03
}
If W73 = -02 Riool
{
W73i = Nog leeg?
goto W107-03
}
If W73 = -03 Koelingn
{
W73i = Nog leeg?
goto W107-03
}
If W73 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW73i, 
gui, add, button, default, Invoeren`-Voor`-W107-03
return
buttonInvoeren-voor-W107-03:
gui, submit
gui, destroy

W107-03:
send W107-03 tekst %W73i%
return



























/*








;W108-01
::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return



































;W108-02

::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return



































;W108-03

::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return




































;W109-01
::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return




































;W109-02
::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return




































;W109-03
::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return




































;W110-01
::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return




































;W110-02
::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return




































;W110-03
::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return


































; ============================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================
; ============================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================
; ============================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================
; ============================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================
; ============================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================
; ============================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================
; ============================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================
; ============================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================
; ============================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================
; ============================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================
; ============================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================
; ============================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================
; ============================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================
; ============================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================
; ============================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================
; ============================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================
; ============================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================
; ============================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================
; ============================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================
; ============================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================
; ============================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================
; ============================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================
; ============================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================
; ============================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================


::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return





































::W0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gW11 vW11, Maak uw keuze...||-01 CV|-02 Lucht|-03 Koeling|-01 Water|-02 Riool|-03 Koelingn|Zelf Kiezen
return
W11:
gui, submit
if W11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If W11 = -01 CV
{
W11i = C.V. installatie
goto W0000
}
If W11 = -02 Lucht
{
W11i = Lucht Installatie
goto W0000
}
If W11 = -03 Koeling
{
W11i = Koeling
goto W0000
}
If W11 = -01 Water
{
W11i = Nog leeg?
goto W0000
}
If W11 = -02 Riool
{
W11i = Nog leeg?
goto W0000
}
If W11 = -03 Koelingn
{
W11i = Nog leeg?
goto W0000
}
If W11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vW11i, 
gui, add, button, default, Invoeren`-Voor`-W0000
return
buttonInvoeren-voor-W0000:
gui, submit
gui, destroy

W0000:
send W0000 tekst %W11i%
return
























