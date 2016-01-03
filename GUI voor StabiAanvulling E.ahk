;E100-01
;E100-02
;E100-03

;E101-01
;E101-02
;E101-03

;E102-01
;E102-02
;E102-03

;E103-01
;E103-02
;E103-03

;E104-01
;E104-02
;E104-03

;E105-01
;E105-02
;E105-03

;W100-01
;W100-02
;W100-03
/*
W101-01
W101-02
W101-03

W102-01
W102-02
W102-03

W103-01
W103-02
W103-03

W104-01
W104-02
W104-03

W105-01
W105-02
W105-03

*/















;E100-01 = E01
::E100-01::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE01 vE01, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E01:
gui, submit
if E01 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E01 = -01 X
{
E01i = C.V. installatie
goto E100-01
}
If E01 = -02 XX
{
E01i = Lucht Installatie
goto E100-01
}
If E01 = -03 XXX
{
E01i = Overige
goto E100-01
}
If E01 = -03 Z
{
E01i = Nog leeg?
goto E100-01
}
If E01 = -02 Riool
{
msgbox -02 Riool
gui, destroy
return
}
If E01 = -03 XXXn
{
msgbox -01 Overigen keuze
gui, destroy
return
}
If E01 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE01i, 
gui, add, button, default, Invoeren`-Voor`-E100-01
return
buttonInvoeren-voor-E100-01:
gui, submit
gui, destroy

E100-01:
send E100-01 tekst %E01i%
return






















;E100-02




::E100-02::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE02, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E02:
gui, submit
if E02 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E02 = -01 X
{
E02i = C.V. installatie
goto E100-02
}
If E02 = -02 XX
{
E02i = Lucht Installatie
goto E100-02
}
If E02 = -03 XXX
{
E02i = Overige
goto E100-02
}
If E02 = -03 Z
{
E02i = Nog leeg?
goto E100-02
}
If E02 = -02 Riool
{
msgbox -02 Riool
gui, destroy
return
}
If E02 = -03 XXXn
{
msgbox -01 Overigen keuze
gui, destroy
return
}
If E02 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE02i, 
gui, add, button, default, Invoeren`-Voor`-E100-02
return
buttonInvoeren-voor-E100-02:
gui, submit
gui, destroy

E100-02:
send E100-02 tekst %E02i%
return






































;E100-03

::E100-03::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE03, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E03:
gui, submit
if E03 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E03 = -01 X
{
E03i = C.V. installatie
goto E100-03
}
If E03 = -02 XX
{
E03i = Lucht Installatie
goto E100-03
}
If E03 = -03 XXX
{
E03i = Overige
goto E100-03
}
If E03 = -03 Z
{
E03i = Nog leeg?
goto E100-03
}
If E03 = -02 Riool
{
E03i = Nog leeg?
goto E100-03
}
If E03 = -03 XXXn
{
E03i = Nog leeg?
goto E100-03
}
If E03 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE03i, 
gui, add, button, default, Invoeren`-Voor`-E100-03
return
buttonInvoeren-voor-E100-03:
gui, submit
gui, destroy

E100-03:
send E100-03 tekst %E03i%
return








































;E101-01
::E101-01::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E100-01
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E100-01
}
If E11 = -03 XXX
{
E11i = Overige
goto E100-01
}
If E11 = -03 Z
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
If E11 = -03 XXXn
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
gui, add, button, default, Invoeren-Voor-E101-01
return
buttonInvoeren-voor-E101-01:
gui, submit
gui, destroy

E101-01:
send E101-01 tekst %E11i%
return





























;E101-02

::E101-02::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE12 vE12, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E12:
gui, submit
if E12 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E12 = -01 X
{
E12i = C.V. installatie
goto E101-02
}
If E12 = -02 XX
{
E12i = Lucht Installatie
goto E101-02
}
If E12 = -03 XXX
{
E12i = Overige
goto E101-02
}
If E12 = -03 Z
{
E12i = Nog leeg?
goto E101-02
}
If E12 = -02 Riool
{
msgbox -02 Riool
gui, destroy
return
}
If E12 = -03 XXXn
{
msgbox -01 Overigen keuze
gui, destroy
return
}
If E12 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE12i, 
gui, add, button, default, Invoeren`-Voor`-E101-02
return
buttonInvoeren-voor-E101-02:
gui, submit
gui, destroy

E101-02:
send E101-02 tekst %E12i%
return



































;E101-03
::E101-03::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE13 vE13, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E13:
gui, submit
if E13 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E13 = -01 X
{
E13i = C.V. installatie
goto E101-03
}
If E13 = -02 XX
{
E13i = Lucht Installatie
goto E101-03
}
If E13 = -03 XXX
{
E13i = Overige
goto E101-03
}
If E13 = -03 Z
{
E13i = Nog leeg?
goto E101-03
}
If E13 = -02 Riool
{
msgbox -02 Riool
gui, destroy
return
}
If E13 = -03 XXXn
{
msgbox -01 Overigen keuze
gui, destroy
return
}
If E13 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE13i, 
gui, add, button, default, Invoeren`-Voor`-E101-03
return
buttonInvoeren-voor-E101-03:
gui, submit
gui, destroy

E101-03:
send E101-03 tekst %E13i%
return












































; E102-01
::E101-01::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE21 vE21, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E21:
gui, submit
if E21 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E21 = -01 X
{
E21i = C.V. installatie
goto E102-01
}
If E21 = -02 XX
{
E21i = Lucht Installatie
goto E102-01
}
If E21 = -03 XXX
{
E21i = Overige
goto E102-01
}
If E21 = -03 Z
{
E21i = Nog leeg?
goto E102-01
}
If E21 = -02 Riool
{
msgbox -02 Riool
gui, destroy
return
}
If E21 = -03 XXXn
{
msgbox -01 Overigen keuze
gui, destroy
return
}
If E21 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE21i, 
gui, add, button, default, Invoeren`-Voor`-E102-01
return
buttonInvoeren-voor-E102-01:
gui, submit
gui, destroy

E102-01:
send E102-01 tekst %E21i%
return



























; E102-02
::E102-02::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE22 vE22, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E22:
gui, submit
if E22 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E22 = -01 X
{
E22i = C.V. installatie
goto E102-02
}
If E22 = -02 XX
{
E22i = Lucht Installatie
goto E102-02
}
If E22 = -03 XXX
{
E22i = Overige
goto E102-02
}
If E22 = -03 Z
{
E22i = Nog leeg?
goto E102-02
}
If E22 = -02 Riool
{
msgbox -02 Riool
gui, destroy
return
}
If E22 = -03 XXXn
{
msgbox -01 Overigen keuze
gui, destroy
return
}
If E22 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE22i, 
gui, add, button, default, Invoeren`-Voor`-E102-02
return
buttonInvoeren-voor-E102-02:
gui, submit
gui, destroy

E102-02:
send E102-02 tekst %E22i%
return






















;E102-03
::E102-03::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE23 vE23, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E23:
gui, submit
if E23 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E23 = -01 X
{
E23i = C.V. installatie
goto E102-03
}
If E23 = -02 XX
{
E23i = Lucht Installatie
goto E102-03
}
If E23 = -03 XXX
{
E23i = Overige
goto E102-03
}
If E23 = -03 Z
{
E23i = Nog leeg?
goto E102-03
}
If E23 = -02 Riool
{
msgbox -02 Riool
gui, destroy
return
}
If E23 = -03 XXXn
{
msgbox -01 Overigen keuze
gui, destroy
return
}
If E23 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE23i, 
gui, add, button, default, Invoeren`-Voor`-E102-03
return
buttonInvoeren-voor-E102-03:
gui, submit
gui, destroy

E102-03:
send E102-03 tekst %E23i%
return




















;E103-01
::E103-01::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE31 vE31, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E31:
gui, submit
if E31 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E31 = -01 X
{
E31i = C.V. installatie
goto E103-01
}
If E31 = -02 XX
{
E31i = Lucht Installatie
goto E103-01
}
If E31 = -03 XXX
{
E31i = Overige
goto E103-01
}
If E31 = -03 Z
{
E31i = Nog leeg?
goto E103-01
}
If E31 = -02 Riool
{
E31i = Nog leeg?
goto E103-01
}
If E31 = -03 XXXn
{
E31i = Nog leeg?
goto E103-01
}
If E31 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE31i, 
gui, add, button, default, Invoeren`-Voor`-E103-01
return
buttonInvoeren-voor-E103-01:
gui, submit
gui, destroy

E103-01:
send E103-01 tekst %E31i%
return


















; E103-02
::E103-02::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE32 vE32, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E32:
gui, submit
if E32 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E32 = -01 X
{
E32i = C.V. installatie
goto E103-02
}
If E32 = -02 XX
{
E32i = Lucht Installatie
goto E103-02
}
If E32 = -03 XXX
{
E32i = Overige
goto E103-02
}
If E32 = -03 Z
{
E32i = Nog leeg?
goto E103-02
}
If E32 = -02 Riool
{
E32i = Nog leeg?
goto E103-02
}
If E32 = -03 XXXn
{
E32i = Nog leeg?
goto E103-02
}
If E32 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE32i, 
gui, add, button, default, Invoeren`-Voor`-E103-02
return
buttonInvoeren-voor-E103-02:
gui, submit
gui, destroy

E103-02:
send E103-02 tekst %E32i%
return




































; E103-03
::E103-03::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE33 vE33, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E33:
gui, submit
if E33 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E33 = -01 X
{
E33i = C.V. installatie
goto E103-03
}
If E33 = -02 XX
{
E33i = Lucht Installatie
goto E103-03
}
If E33 = -03 XXX
{
E33i = Overige
goto E103-03
}
If E33 = -03 Z
{
E33i = Nog leeg?
goto E103-03
}
If E33 = -02 Riool
{
E33i = Nog leeg?
goto E103-03
}
If E33 = -03 XXXn
{
E33i = Nog leeg?
goto E103-03
}
If E33 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE33i, 
gui, add, button, default, Invoeren`-Voor`-E103-03
return
buttonInvoeren-voor-E103-03:
gui, submit
gui, destroy

E103-03:
send E103-03 tekst %E33i%
return




































; E104-01
::E104-01::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE41 vE41, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E41:
gui, submit
if E41 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E41 = -01 X
{
E41i = C.V. installatie
goto E104-01
}
If E41 = -02 XX
{
E41i = Lucht Installatie
goto E104-01
}
If E41 = -03 XXX
{
E41i = Overige
goto E104-01
}
If E41 = -03 Z
{
E41i = Nog leeg?
goto E104-01
}
If E41 = -02 Riool
{
E41i = Nog leeg?
goto E104-01
}
If E41 = -03 XXXn
{
E41i = Nog leeg?
goto E104-01
}
If E41 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE41i, 
gui, add, button, default, Invoeren`-Voor`-E104-01
return
buttonInvoeren-voor-E104-01:
gui, submit
gui, destroy

E104-01:
send E104-01 tekst %E41i%
return




































; E104-02
::E104-02::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE42 vE42, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E42:
gui, submit
if E42 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E42 = -01 X
{
E42i = C.V. installatie
goto E104-02
}
If E42 = -02 XX
{
E42i = Lucht Installatie
goto E104-02
}
If E42 = -03 XXX
{
E42i = Overige
goto E104-02
}
If E42 = -03 Z
{
E42i = Nog leeg?
goto E104-02
}
If E42 = -02 Riool
{
E42i = Nog leeg?
goto E104-02
}
If E42 = -03 XXXn
{
E42i = Nog leeg?
goto E104-02
}
If E42 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE42i, 
gui, add, button, default, Invoeren`-Voor`-E104-02
return
buttonInvoeren-voor-E104-02:
gui, submit
gui, destroy

E104-02:
send E104-02 tekst %E42i%
return




































; E104-03
::E104-03::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE43 vE43, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E43:
gui, submit
if E43 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E43 = -01 X
{
E43i = C.V. installatie
goto E104-03
}
If E43 = -02 XX
{
E43i = Lucht Installatie
goto E104-03
}
If E43 = -03 XXX
{
E43i = Overige
goto E104-03
}
If E43 = -03 Z
{
E43i = Nog leeg?
goto E104-03
}
If E43 = -02 Riool
{
E43i = Nog leeg?
goto E104-03
}
If E43 = -03 XXXn
{
E43i = Nog leeg?
goto E104-03
}
If E43 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE43i, 
gui, add, button, default, Invoeren`-Voor`-E104-03
return
buttonInvoeren-voor-E104-03:
gui, submit
gui, destroy

E104-03:
send E104-03 tekst %E43i%
return




































; E105-01
::E105-01::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE51 vE51, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E51:
gui, submit
if E51 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E51 = -01 X
{
E51i = C.V. installatie
goto E105-01
}
If E51 = -02 XX
{
E51i = Lucht Installatie
goto E105-01
}
If E51 = -03 XXX
{
E51i = Overige
goto E105-01
}
If E51 = -03 Z
{
E51i = Nog leeg?
goto E105-01
}
If E51 = -02 Riool
{
E51i = Nog leeg?
goto E105-01
}
If E51 = -03 XXXn
{
E51i = Nog leeg?
goto E105-01
}
If E51 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE51i, 
gui, add, button, default, Invoeren`-Voor`-E105-01
return
buttonInvoeren-voor-E105-01:
gui, submit
gui, destroy

E105-01:
send E105-01 tekst %E51i%
return




































; E105-02
::E105-02::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE52 vE52, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E52:
gui, submit
if E52 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E52 = -01 X
{
E52i = C.V. installatie
goto E105-02
}
If E52 = -02 XX
{
E52i = Lucht Installatie
goto E105-02
}
If E52 = -03 XXX
{
E52i = Overige
goto E105-02
}
If E52 = -03 Z
{
E52i = Nog leeg?
goto E105-02
}
If E52 = -02 Riool
{
E52i = Nog leeg?
goto E105-02
}
If E52 = -03 XXXn
{
E52i = Nog leeg?
goto E105-02
}
If E52 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE52i, 
gui, add, button, default, Invoeren`-Voor`-E105-02
return
buttonInvoeren-voor-E105-02:
gui, submit
gui, destroy

E105-02:
send E105-02 tekst %E52i%
return




































;E105-03
::E105-03::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE53 vE53, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E53:
gui, submit
if E53 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E53 = -01 X
{
E53i = C.V. installatie
goto E105-03
}
If E53 = -02 XX
{
E53i = Lucht Installatie
goto E105-03
}
If E53 = -03 XXX
{
E53i = Overige
goto E105-03
}
If E53 = -03 Z
{
E53i = Nog leeg?
goto E105-03
}
If E53 = -02 Riool
{
E53i = Nog leeg?
goto E105-03
}
If E53 = -03 XXXn
{
E53i = Nog leeg?
goto E105-03
}
If E53 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE53i, 
gui, add, button, default, Invoeren`-Voor`-E105-03
return
buttonInvoeren-voor-E105-03:
gui, submit
gui, destroy

E105-03:
send E105-03 tekst %E53i%
return




































;E106-01
::E106-01::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE61 vE61, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E61:
gui, submit
if E61 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E61 = -01 X
{
E61i = C.V. installatie
goto E106-01
}
If E61 = -02 XX
{
E61i = Lucht Installatie
goto E106-01
}
If E61 = -03 XXX
{
E61i = Overige
goto E106-01
}
If E61 = -03 Z
{
E61i = Nog leeg?
goto E106-01
}
If E61 = -02 Riool
{
E61i = Nog leeg?
goto E106-01
}
If E61 = -03 XXXn
{
E61i = Nog leeg?
goto E106-01
}
If E61 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE61i, 
gui, add, button, default, Invoeren`-Voor`-E106-01
return
buttonInvoeren-voor-E106-01:
gui, submit
gui, destroy

E106-01:
send E106-01 tekst %E61i%
return




































;E106-02
::E106-02::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE62 vE62, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E62:
gui, submit
if E62 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E62 = -01 X
{
E62i = C.V. installatie
goto E106-02
}
If E62 = -02 XX
{
E62i = Lucht Installatie
goto E106-02
}
If E62 = -03 XXX
{
E62i = Overige
goto E106-02
}
If E62 = -03 Z
{
E62i = Nog leeg?
goto E106-02
}
If E62 = -02 Riool
{
E62i = Nog leeg?
goto E106-02
}
If E62 = -03 XXXn
{
E62i = Nog leeg?
goto E106-02
}
If E62 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE62i, 
gui, add, button, default, Invoeren`-Voor`-E106-02
return
buttonInvoeren-voor-E106-02:
gui, submit
gui, destroy

E106-02:
send E106-02 tekst %E62i%
return




































;E106-03
::E106-03::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE63 vE63, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E63:
gui, submit
if E63 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E63 = -01 X
{
E63i = C.V. installatie
goto E106-03
}
If E63 = -02 XX
{
E63i = Lucht Installatie
goto E106-03
}
If E63 = -03 XXX
{
E63i = Overige
goto E106-03
}
If E63 = -03 Z
{
E63i = Nog leeg?
goto E106-03
}
If E63 = -02 Riool
{
E63i = Nog leeg?
goto E106-03
}
If E63 = -03 XXXn
{
E63i = Nog leeg?
goto E106-03
}
If E63 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE63i, 
gui, add, button, default, Invoeren`-Voor`-E106-03
return
buttonInvoeren-voor-E106-03:
gui, submit
gui, destroy

E106-03:
send E106-03 tekst %E63i%
return




































;E107-01
::E107-01::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE71 vE71, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E71:
gui, submit
if E71 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E71 = -01 X
{
E71i = C.V. installatie
goto E107-01
}
If E71 = -02 XX
{
E71i = Lucht Installatie
goto E107-01
}
If E71 = -03 XXX
{
E71i = Overige
goto E107-01
}
If E71 = -03 Z
{
E71i = Nog leeg?
goto E107-01
}
If E71 = -02 Riool
{
E71i = Nog leeg?
goto E107-01
}
If E71 = -03 XXXn
{
E71i = Nog leeg?
goto E107-01
}
If E71 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE71i, 
gui, add, button, default, Invoeren`-Voor`-E107-01
return
buttonInvoeren-voor-E107-01:
gui, submit
gui, destroy

E107-01:
send E107-01 tekst %E71i%
return




































;E107-02
::E107-02::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE72 vE72, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E72:
gui, submit
if E72 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E72 = -01 X
{
E72i = C.V. installatie
goto E107-02
}
If E72 = -02 XX
{
E72i = Lucht Installatie
goto E107-02
}
If E72 = -03 XXX
{
E72i = Overige
goto E107-02
}
If E72 = -03 Z
{
E72i = Nog leeg?
goto E107-02
}
If E72 = -02 Riool
{
E72i = Nog leeg?
goto E107-02
}
If E72 = -03 XXXn
{
E72i = Nog leeg?
goto E107-02
}
If E72 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE72i, 
gui, add, button, default, Invoeren`-Voor`-E107-02
return
buttonInvoeren-voor-E107-02:
gui, submit
gui, destroy

E107-02:
send E107-02 tekst %E72i%
return




































;E107-03
::E107-03::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE73 vE73, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E73:
gui, submit
if E73 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E73 = -01 X
{
E73i = C.V. installatie
goto E107-03
}
If E73 = -02 XX
{
E73i = Lucht Installatie
goto E107-03
}
If E73 = -03 XXX
{
E73i = Overige
goto E107-03
}
If E73 = -03 Z
{
E73i = Nog leeg?
goto E107-03
}
If E73 = -02 Riool
{
E73i = Nog leeg?
goto E107-03
}
If E73 = -03 XXXn
{
E73i = Nog leeg?
goto E107-03
}
If E73 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE73i, 
gui, add, button, default, Invoeren`-Voor`-E107-03
return
buttonInvoeren-voor-E107-03:
gui, submit
gui, destroy

E107-03:
send E107-03 tekst %E73i%
return



























/*








;E108-01
::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return



































;E108-02

::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return



































;E108-03

::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return




































;E109-01
::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return




































;E109-02
::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return




































;E109-03
::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return




































;E110-01
::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return




































;E110-02
::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return




































;E110-03
::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
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


::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return





































::E0000::
GUI, show, h85 w200, Uitzondering gevonden.
gui, add, text, x25 w150, Kies hier de juiste versie:`n
Gui, Add, DropDownList, x25 w150 gE11 vE11, Maak uw keuze...||-01 X|-02 XX|-03 XXX|-03 Z|-02 Riool|-03 XXXn|Zelf Kiezen
return
E11:
gui, submit
if E11 = Maak uw keuze...
{
msgbox Geen geldige waarde ontvangen!
gui, destroy
return
}
If E11 = -01 X
{
E11i = C.V. installatie
goto E0000
}
If E11 = -02 XX
{
E11i = Lucht Installatie
goto E0000
}
If E11 = -03 XXX
{
E11i = Overige
goto E0000
}
If E11 = -03 Z
{
E11i = Nog leeg?
goto E0000
}
If E11 = -02 Riool
{
E11i = Nog leeg?
goto E0000
}
If E11 = -03 XXXn
{
E11i = Nog leeg?
goto E0000
}
If E11 = Zelf Kiezen
gui, destroy 
GUI, show, h85 w200, test
gui, add, text, x10 w170, Geef hier uw eigen beschrijving op:
gui, add, edit, w150 x25 vE11i, 
gui, add, button, default, Invoeren`-Voor`-E0000
return
buttonInvoeren-voor-E0000:
gui, submit
gui, destroy

E0000:
send E0000 tekst %E11i%
return
























