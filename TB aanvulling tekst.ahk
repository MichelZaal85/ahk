^P::
reload
return

; Kopieer naar beide schermen.
^!C::
MouseClick, left,  1174,  426
clipboardold = %clipboardall%
Send, ^a^c{shiftdown}{TAB}{shiftup}{ctrldown}v{ctrlup}{TAB 2}
goto rrun
return



clipboardold = %clipboardall%
send {shiftdown}{tab 2}{shiftup}{ctrldown}ac{ctrlup}{tab 2}


rrun:
clipboart = %clipboard%




; =============================================================================================================================================================================================
; =============================================================================================================================================================================================




IfInString, clipboart, %Liftkeuring%
{
	Send Liftkeuring certificaat, lift 
	send {tab}A4{tab}{space}{tab 8}
	clipboard = %clipboardold%
	return 
}


IfInString, clipboart, %TotaaloverzichtJan%
{
	Send Totaaloverzicht energie, januari 2012 
	send {tab}A2{tab 9}
	clipboard = %clipboardold%
	return 
}

IfInString, clipboart, %TotaaloverzichtFeb%
{
	Send Totaaloverzicht energie, februari 2012 
	send {tab}A2{tab 9}
	clipboard = %clipboardold%
	return 
}

IfInString, clipboart, %TotaaloverzichtMrt%
{
	Send Totaaloverzicht energie, maart 2012 
	send {tab}A2{tab 9}
	clipboard = %clipboardold%
	return 
}

IfInString, clipboart, %TotaaloverzichtApr%
{
	Send Totaaloverzicht energie, april 2012 
	send {tab}A2{tab 9}
	clipboard = %clipboardold%
	return 
}

IfInString, clipboart, %TotaaloverzichtMei%
{
	Send Totaaloverzicht energie, mei 2012 
	send {tab}A2{tab 9}
	clipboard = %clipboardold%
	return 
}

IfInString, clipboart, %TotaaloverzichtJun%
{
	Send Totaaloverzicht energie, juni 2012 
	send {tab}A2{tab 9}
	clipboard = %clipboardold%
	return 
}

IfInString, clipboart, %TotaaloverzichtJul%
{
	Send Totaaloverzicht energie, juli 2012 
	send {tab}A2{tab 9}
	clipboard = %clipboardold%
	return 
}

IfInString, clipboart, %TotaaloverzichtAug%
{
	Send Totaaloverzicht energie, augustus 2012 
	send {tab}A2{tab 9}
	clipboard = %clipboardold%
	return 
}

IfInString, clipboart, %TotaaloverzichtSep%
{
	Send Totaaloverzicht energie, september 2012 
	send {tab}A2{tab 9}
	clipboard = %clipboardold%
	return 
}

IfInString, clipboart, %TotaaloverzichtOkt%
{
	Send Totaaloverzicht energie, oktober 2012 
	send {tab}A2{tab 9}
	clipboard = %clipboardold%
	return 
}

IfInString, clipboart, %TotaaloverzichtNov%
{
	Send Totaaloverzicht energie, november 2012 
	send {tab}A2{tab 9}
	clipboard = %clipboardold%
	return 
}

IfInString, clipboart, %TotaaloverzichtDec%
{
	Send Totaaloverzicht energie, december 2012 
	send {tab}A2+{tab 9}
	clipboard = %clipboardold%
	return 
}

















;Test Sectie, Test om te kijken of dit het probleem met b2, b3, b4, b5 en b6 kast codes oplost.
IfInString, clipboart, %E3%
{
	Send Elektrotechnische installatie, installatieschema verdeelkast 
	send {shiftdown}{tab 2}{shiftup}{home}{right 12}{shiftdown}{end}{shiftup}{ctrldown}c{ctrlup}{tab 2}{end}{space}{ctrldown}v{ctrlup}
	clipboard = %clipboardold%
	return 
}

IfInString, clipboart, %B1100%
{
	Send Oppervlakteberekening, begane grond
	send {tab}A3{tab}{space}{shiftdown}{tab 3}{shiftup}OPP-
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B1101%
{
	Send Oppervlakteberekening, 1e verdieping 
	send {tab}A3{tab}{space}{shiftdown}{tab 3}{shiftup}OPP-
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B1102%
{
	Send Oppervlakteberekening, 2e verdieping 
	send {tab}A3{tab}{space}{shiftdown}{tab 3}{shiftup}OPP-
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B1103%
{
	Send Oppervlakteberekening, 3e verdieping 
	send {tab}A3{tab}{space}{shiftdown}{tab 3}{shiftup}OPP-
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B1104%
{
	Send Oppervlakteberekening, 4e verdieping 
	send {tab}A3{tab}{space}{shiftdown}{tab 3}{shiftup}OPP-
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B1105%
{
	Send Oppervlakteberekening, 5e verdieping 
	send {tab}A3{tab}{space}{shiftdown}{tab 3}{shiftup}OPP-
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B1106%
{
	Send Oppervlakteberekening, 6e verdieping 
	send {tab}A3{tab}{space}{shiftdown}{tab 3}{shiftup}OPP-
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B1107%
{
	Send Oppervlakteberekening, 7e verdieping 
	send {tab}A3{tab}{space}{shiftdown}{tab 3}{shiftup}OPP-
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B1108%
{
	Send Oppervlakteberekening, 8e verdieping 
	send {tab}A3{tab}{space}{shiftdown}{tab 3}{shiftup}OPP-
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B1109%
{
	Send Oppervlakteberekening, 9e verdieping 
	send {tab}A3{tab}{space}{shiftdown}{tab 3}{shiftup}OPP-
	clipboard = %clipboardold%
	return 
}



IfInString, clipboart, %Werkzaam%
{
	send Overzicht werkzaamheden V&F (HB&O) blad 1 t/m 5
	send {tab}A4{tab}{space}{tab 8}{enter}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %storing%
{
	send Stappenplan bij storingen
	send {tab}A4{tab}{space}{tab 8}{enter}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %DOS%
{
	send Begeleidend schrijven opdrachtnummers
	send {tab}A4{tab}{space}{tab 8}{enter}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %Monstername%
{
	send Analyse certificaten{shiftdown}{tab 2}{shiftup}{end}{shiftdown}{left 4}{shiftup}{ctrldown}c{ctrlup}{tab 2}{end}{space}{ctrldown}v{ctrlup}
	send {tab}A4{tab}{space}{shiftdown}{tab 2}{shiftup}
	clipboard = %clipboardold%
	return
}

IfInString, clipboart, %B2%
{
	Send Bouwkundige gevelaanzichten,
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B3%
{
	Send Bouwkundige doorsneden, doorsnede 
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B4%
{
	Send Bouwkundige details, detail 
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B500%
{
	Send Bouwkundige plattegrond, interieur begane grond 
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B5T0%
{
	Send Bouwkundige plattegrond, interieur tussenverdieping tussen bg en 1e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B501%
{
	Send Bouwkundige plattegrond, interieur 1e verdieping 
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %B5T1%
{
	Send Bouwkundige plattegrond, interieur tussenverdieping tussen 1e en 2e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B502%
{
	Send Bouwkundige plattegrond, interieur 2e verdieping 
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B503%
{
	Send Bouwkundige plattegrond, interieur 3e verdieping
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %B504%
{
	Send Bouwkundige plattegrond, interieur 4e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B505%
{
	Send Bouwkundige plattegrond, interieur 5e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B506%
{
	Send Bouwkundige plattegrond, interieur 6e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B507%
{
	Send Bouwkundige plattegrond, interieur 7e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B508%
{
	Send Bouwkundige plattegrond, interieur 8e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B509%
{
	Send Bouwkundige plattegrond, interieur 9e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B510%
{
	Send Bouwkundige plattegrond, interieur 10e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B6% 
{
	Send Bouwkundige sparingen, 
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B7%
{
	Send Bouwkundige constructie, 
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B800%
{
	Send Bouwkundige plattegrond, plafond begane grond
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B801%
{
	Send Bouwkundige plattegrond, plafond 1e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B802%
{
	Send Bouwkundige plattegrond, plafond 2e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B803%
{
	Send Bouwkundige plattegrond, plafond 3e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B804%
{
	Send Bouwkundige plattegrond, plafond 4e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B805%
{
	Send Bouwkundige plattegrond, plafond 5e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B001%
{
	Send Bouwkundige situatie, 
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B1TR%
{
	Send Bouwkundige plattegrond, terrein
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B10F%
{
	Send Bouwkundige plattegrond, fundering
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B1KR%
{
	Send Bouwkundige plattegrond, kruipruimte 
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B1K1%
{
	Send Bouwkundige plattegrond,  kelder -1
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B1K2%
{
	Send Bouwkundige plattegrond,  kelder -2
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B100%
{
	Send Bouwkundige plattegrond, begane grond
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B1T0%
{
	Send Bouwkundige plattegrond, tussenverdieping tussen bg en 1e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B101%
{
	Send Bouwkundige plattegrond, 1e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B1T1%
{
	Send Bouwkundige plattegrond, tussenverdieping tussen 1e en 2e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B102%
{
	Send Bouwkundige plattegrond, 2e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B103%
{
	Send Bouwkundige plattegrond, 3e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B104%
{
	Send Bouwkundige plattegrond, 4e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B105%
{
	Send Bouwkundige plattegrond, 5e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B106%
{
	Send Bouwkundige plattegrond, 6e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B107%
{
	Send Bouwkundige plattegrond, 7e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B108%
{
	Send Bouwkundige plattegrond, 8e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B109%
{
	Send Bouwkundige plattegrond, 9e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B110%
{
	Send Bouwkundige plattegrond, 10e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B11K1%
{
	Send Oppervlakteberekening, kelder -1
	send {tab}A3{tab}{space}{shiftdown}{tab 3}{shiftup}OPP-{tab}A3{tab}{space}
	clipboard = %clipboardold%
	return 
}

 
IfInString, clipboart, %B1100%
{
	Send Oppervlakteberekening, begane grond
	send {tab}A3{tab}{space}{shiftdown}{tab 3}{shiftup}OPP-
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B1101%
{
	Send Oppervlakteberekening, 1e verdieping 
	send {tab}A3{tab}{space}{shiftdown}{tab 3}{shiftup}OPP-
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B1102%
{
	Send Oppervlakteberekening, 2e verdieping 
	send {tab}A3{tab}{space}{shiftdown}{tab 3}{shiftup}OPP-
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B1103%
{
	Send Oppervlakteberekening, 3e verdieping 
	send {tab}A3{tab}{space}{shiftdown}{tab 3}{shiftup}OPP-
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B1104%
{
	Send Oppervlakteberekening, 4e verdieping 
	send {tab}A3{tab}{space}{shiftdown}{tab 3}{shiftup}OPP-
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B1105%
{
	Send Oppervlakteberekening, 5e verdieping 
	send {tab}A3{tab}{space}{shiftdown}{tab 3}{shiftup}OPP-
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B1106%
{
	Send Oppervlakteberekening, 6e verdieping 
	send {tab}A3{tab}{space}{shiftdown}{tab 3}{shiftup}OPP-
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B1107%
{
	Send Oppervlakteberekening, 7e verdieping 
	send {tab}A3{tab}{space}{shiftdown}{tab 3}{shiftup}OPP-
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B1108%
{
	Send Oppervlakteberekening, 8e verdieping 
	send {tab}A3{tab}{space}{shiftdown}{tab 3}{shiftup}OPP-
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B1109%
{
	Send Oppervlakteberekening, 9e verdieping 
	send {tab}A3{tab}{space}{shiftdown}{tab 3}{shiftup}OPP-
	clipboard = %clipboardold%
	return 
}


;E-Installaties licht en kracht


IfInString, clipboart, %E3%
{
	Send Elektrotechnische installatie, installatieschema verdeelkast 
	send {shiftdown}{tab 2}{shiftup}{home}{right 12}{shiftdown}{right 5}{shiftup}{ctrldown}c{ctrlup}{tab 2}{end}{space}{ctrldown}v{ctrlup}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %E4%
{
	Send Elektrotechnische installatie, groepenverklaring verdeelkast 
	send {shiftdown}{tab 2}{shiftup}{home}{right 12}{shiftdown}{right 5}{shiftup}{ctrldown}c{ctrlup}{tab 2}{end}{space}{ctrldown}v{ctrlup}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %E5%
{
	Send Elektrotechnische installatie, blokschema 
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %E6%
{
	Send Elektrotechnische installatie, stuurstroomschema verdeelkast 
	send {shiftdown}{tab 2}{shiftup}{home}{right 12}{shiftdown}{right 5}{shiftup}{ctrldown}c{ctrlup}{tab 2}{end}{space}{ctrldown}v{ctrlup}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %E7%
{
	Send Elektrotechnische installatie, principeschema 
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %E8%
{
	Send Elektrotechnische installatie, detail 
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %E10F%
{
	Send Elektrotechnische installatie t.b.v. licht en krachtinstallatie, plattegrond fundering
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %E1KR%
{
	Send Elektrotechnische installatie t.b.v. licht en krachtinstallatie, plattegrond kruipruimte
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %E1TR%
{
	Send Elektrotechnische installatie t.b.v. licht en krachtinstallatie, plattegrond terrein
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %E1K1%
{
	Send Elektrotechnische installatie t.b.v. licht en krachtinstallatie, plattegrond kelder -1
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %E1K2%
{
	Send Elektrotechnische installatie t.b.v. licht en krachtinstallatie, plattegrond kelder -2
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %E1T0%
{
	Send Elektrotechnische installatie t.b.v. licht en krachtinstallatie, plattegrond tussenverdieping tussen bg en 1e verdieping 
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %E100%
{
	Send Elektrotechnische installatie t.b.v. licht en krachtinstallatie, plattegrond begane grond
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %E1T1%
{
	Send Elektrotechnische installatie t.b.v. licht en krachtinstallatie, plattegrond tussenverdieping tussen 1e en 2e verdieping 
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %E101%
{
	Send Elektrotechnische installatie t.b.v. licht en krachtinstallatie, plattegrond 1e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %E102%
{
	Send Elektrotechnische installatie t.b.v. licht en krachtinstallatie, plattegrond 2e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %E103%
{
	Send Elektrotechnische installatie t.b.v. licht en krachtinstallatie, plattegrond 3e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %E104%
{
	Send Elektrotechnische installatie t.b.v. licht en krachtinstallatie, plattegrond 4e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %E105%
{
	Send Elektrotechnische installatie t.b.v. licht en krachtinstallatie, plattegrond 5e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %E106%
{
	Send Elektrotechnische installatie t.b.v. licht en krachtinstallatie, plattegrond 6e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %E107%
{
	Send Elektrotechnische installatie t.b.v. licht en krachtinstallatie, plattegrond 7e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %E108%
{
	Send Elektrotechnische installatie t.b.v. licht en krachtinstallatie, plattegrond 8e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %E109%
{
	Send Elektrotechnische installatie t.b.v. licht en krachtinstallatie, plattegrond 9e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %E110%
{
	Send Elektrotechnische installatie t.b.v. licht en krachtinstallatie, plattegrond 10e verdieping
	clipboard = %clipboardold%
	return 
}

;E-installatie zwakstroom


IfInString, clipboart, %E2K2%
{
	Send Elektrotechnische installatie t.b.v. zwakstroominstallatie plattegrond kelder -2
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %E2K1%
{
	Send Elektrotechnische installatie t.b.v. zwakstroominstallatie plattegrond kelder -1
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %E20F%
{
	Send Elektrotechnische installatie t.b.v. zwakstroominstallatie plattegrond fundering
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %E2KR%
{
	Send Elektrotechnische installatie t.b.v. zwakstroominstallatie plattegrond kruipruimte
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %E2TR%
{
	Send Elektrotechnische installatie t.b.v. zwakstroominstallatie plattegrond terrein
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %E200%
{
	Send Elektrotechnische installatie t.b.v. zwakstroominstallatie plattegrond begane grond
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %E2T0%
{
	Send Elektrotechnische installatie t.b.v. zwakstroominstallatie, plattegrond tussenverdieping tussen bg en 1e verdieping 
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %E201%
{
	Send Elektrotechnische installatie t.b.v. zwakstroominstallatie plattegrond 1e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %E2T1%
{
	Send Elektrotechnische installatie t.b.v. zwakstroominstallatie, plattegrond tussenverdieping tussen 1e en 2e verdieping 
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %E202%
{
	Send Elektrotechnische installatie t.b.v. zwakstroominstallatie plattegrond 2e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %E203%
{
	Send Elektrotechnische installatie t.b.v. zwakstroominstallatie plattegrond 3e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %E204%
{
	Send Elektrotechnische installatie t.b.v. zwakstroominstallatie plattegrond 4e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %E205%
{
	Send Elektrotechnische installatie t.b.v. zwakstroominstallatie plattegrond 5e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %E206%
{
	Send Elektrotechnische installatie t.b.v. zwakstroominstallatie plattegrond 6e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %E207%
{
	Send Elektrotechnische installatie t.b.v. zwakstroominstallatie plattegrond 7e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %E208%
{
	Send Elektrotechnische installatie t.b.v. zwakstroominstallatie plattegrond 8e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %E209%
{
	Send Elektrotechnische installatie t.b.v. zwakstroominstallatie plattegrond 9e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %E210%
{
	Send Elektrotechnische installatie t.b.v. zwakstroominstallatie plattegrond 10e verdieping
	clipboard = %clipboardold%
	return 
}

;W-installatie t.b.v. klimaat


IfInString, clipboart, %W10F%
{
	Send Werktuigbouwkundige installatie t.b.v. klimaat installatie, plattegrond fundering
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %W1K2%
{
	Send Werktuigbouwkundige installatie t.b.v. klimaat installatie, plattegrond kelder -2
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %W1K1%
{
	Send Werktuigbouwkundige installatie t.b.v. klimaat installatie, plattegrond kelder -1
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %W1KR%
{
	Send Werktuigbouwkundige installatie t.b.v. klimaat installatie, plattegrond kruipruimte
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %W100%
{
	Send Werktuigbouwkundige installatie t.b.v. klimaat installatie, plattegrond begane grond
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %W1T0%
{
	Send Werktuigbouwkundige installatie t.b.v. klimaat installatie, plattegrond tussenverdieping tussen bg en 1e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %W101%
{
	Send Werktuigbouwkundige installatie t.b.v. klimaat installatie, plattegrond 1e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %W1T1%
{
	Send Werktuigbouwkundige installatie t.b.v. klimaat installatie, plattegrond tussenverdieping tussen 1e en 2e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %W102%
{
	Send Werktuigbouwkundige installatie t.b.v. klimaat installatie, plattegrond 2e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %W103%
{
	Send Werktuigbouwkundige installatie t.b.v. klimaat installatie, plattegrond 3e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %W104%
{
	Send Werktuigbouwkundige installatie t.b.v. klimaat installatie, plattegrond 4e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %W105%
{
	Send Werktuigbouwkundige installatie t.b.v. klimaat installatie, plattegrond 5e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %W106%
{
	Send Werktuigbouwkundige installatie t.b.v. klimaat installatie, plattegrond 6e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %W107%
{
	Send Werktuigbouwkundige installatie t.b.v. klimaat installatie, plattegrond 7e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %W108%
{
	Send Werktuigbouwkundige installatie t.b.v. klimaat installatie, plattegrond 8e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %W109%
{
	Send Werktuigbouwkundige installatie t.b.v. klimaat installatie, plattegrond 9e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %W110%
{
	Send Werktuigbouwkundige installatie t.b.v. klimaat installatie, plattegrond 10e verdieping
	clipboard = %clipboardold%
	return 
}
;W-Installatie t.b.v. santiair
IfInString, clipboart, %W20F%
{
	Send Werktuigbouwkundige installatie t.b.v. sanitair installatie, plattegrond fundering
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %W2K1%
{
	Send Werktuigbouwkundige installatie t.b.v. sanitair installatie, plattegrond kelder -1
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %W2K2%
{
	Send Werktuigbouwkundige installatie t.b.v. sanitair installatie, plattegrond kelder -2
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %W2KR%
{
	Send Werktuigbouwkundige installatie t.b.v. sanitair installatie, plattegrond kruipruimte
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %W200%
{
	Send Werktuigbouwkundige installatie t.b.v. sanitair installatie, plattegrond begane grond
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %W2T0%
{
	Send Werktuigbouwkundige installatie t.b.v. sanitair installatie, plattegrond tussenverdieping tussen bg en 1e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %W201%
{
	Send Werktuigbouwkundige installatie t.b.v. sanitair installatie, plattegrond 1e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %W2T1%
{
	Send Werktuigbouwkundige installatie t.b.v. sanitair installatie, plattegrond tussenverdieping tussen 1e en 2e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %W202%
{
	Send Werktuigbouwkundige installatie t.b.v. sanitair installatie, plattegrond 2e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %W203%
{
	Send Werktuigbouwkundige installatie t.b.v. sanitair installatie, plattegrond 3e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %W204%
{
	Send Werktuigbouwkundige installatie t.b.v. sanitair installatie, plattegrond 4e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %W205%
{
	Send Werktuigbouwkundige installatie t.b.v. sanitair installatie, plattegrond 5e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %W206%
{
	Send Werktuigbouwkundige installatie t.b.v. sanitair installatie, plattegrond 6e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %W207%
{
	Send Werktuigbouwkundige installatie t.b.v. sanitair installatie, plattegrond 7e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %W208%
{
	Send Werktuigbouwkundige installatie t.b.v. sanitair installatie, plattegrond 8e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %W209%
{
	Send Werktuigbouwkundige installatie t.b.v. sanitair installatie, plattegrond 9e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %W210%
{
	Send Werktuigbouwkundige installatie t.b.v. sanitair installatie, plattegrond 10e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %W3%
{
	Send Werktuigbouwkundige installatie, gas 
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %W4%
{
	Send Werktuigbouwkundige installatie, principeschema
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %W5%
{
	Send Werktuigbouwkundige installatie, detail 
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %VP100%
{
	Send Verpleegkundig oproepsysteem, plattegrond begane grond
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %VP1T0%
{
	Send Verpleegkundig oproepsysteem, plattegrond tussenverdieping tussen bg en 1e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %VP101%
{
	Send Verpleegkundig oproepsysteem, plattegrond 1e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %VP1T1%
{
	Send Verpleegkundig oproepsysteem, plattegrond tussenverdieping tussen 1e en 2e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %VP102%
{
	Send Verpleegkundig oproepsysteem, plattegrond 2e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %VP103%
{
	Send Verpleegkundig oproepsysteem, plattegrond 3e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %VP104%
{
	Send Verpleegkundig oproepsysteem, plattegrond 4e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %VP105%
{
	Send Verpleegkundig oproepsysteem, plattegrond 5e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %VP106%
{
	Send Verpleegkundig oproepsysteem, plattegrond 6e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %VP107%
{
	Send Verpleegkundig oproepsysteem, plattegrond 7e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %VP108%
{
	Send Verpleegkundig oproepsysteem, plattegrond 8e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %VP109%
{
	Send Verpleegkundig oproepsysteem, plattegrond 9e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %VP110%
{
	Send Verpleegkundig oproepsysteem, plattegrond 9e verdieping
	clipboard = %clipboardold%
	return 
}

;Bliksem/Aardinginstallatie
IfInString, clipboart, %BliksemInspectie%
{
	Send Inspectiecertificaat bliksembeveiliging, 
	Send {shiftdown}{tab 2}{shiftup}{end}{shiftdown}{left 4}{shiftup}{ctrldown}c{ctrlup}{tab 2}{end}{space}{ctrldown}v{ctrlup}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %A10F%
{
	Send Bliksem/Aardingsinstallatie, plattegrond fundering
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %VP2%
{
	Send Verpleegkundig oproepsysteem, blokschema
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %VP3%
{
	Send Verpleegkundig oproepsysteem, principeschema
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %VP4%
{
	Send Verpleegkundig oproepsysteem, detail
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %A100%
{
	Send Bliksem/Aardingsinstallatie, plattegrond begane grond
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %A1T0%
{
	Send Bliksem/Aardingsinstallatie, plattegrond tussenverdieping tussen bg en 1e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %A101%
{
	Send Bliksem/Aardingsinstallatie, plattegrond 1e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %A1T1%
{
	Send Bliksem/Aardingsinstallatie, plattegrond tussenverdieping tussen 1e en 2e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %A102%
{
	Send Bliksem/Aardingsinstallatie, plattegrond 2e verdieping
	clipboard = %clipboardold%z
	return 
}
IfInString, clipboart, %A103%
{
	Send Bliksem/Aardingsinstallatie, plattegrond 3e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %A104%
{
	Send Bliksem/Aardingsinstallatie, plattegrond 4e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %A105%
{
	Send Bliksem/Aardingsinstallatie, plattegrond 5e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %A106%
{
	Send Bliksem/Aardingsinstallatie, plattegrond 6e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %A107%
{
	Send Bliksem/Aardingsinstallatie, plattegrond 7e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %A108%
{
	Send Bliksem/Aardingsinstallatie, plattegrond 8e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %A109%
{
	Send Bliksem/Aardingsinstallatie, plattegrond 9e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %A110%
{
	Send Bliksem/Aardingsinstallatie, plattegrond 10e verdieping
	clipboard = %clipboardold%
	return 
}
;Data Installatie
IfInString, clipboart, %D2%
{
	Send Data installatie, blokschema 
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %D1K2%
{
	Send Data installatie, plattegrond kelder -2
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %D1K1%
{
	Send Data installatie, plattegrond kelder -1 
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %D100%
{
	Send Data installatie, plattegrond begane grond 
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %D1T0%
{
	Send Data installatie, plattegrond tussenverdieping tussen bg en 1e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %D101%
{
	Send Data installatie, plattegrond 1e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %D1T1%
{
	Send Data installatie, plattegrond tussenverdieping tussen 1e en 2e verdieping
	clipboard = %clipboardold%
	return 
}

IfInString, clipboart, %D102%
{
	Send Data installatie, plattegrond 2e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %D103%
{
	Send Data installatie, plattegrond 3e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %D104%
{
	Send Data installatie, plattegrond 4e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %D105%
{
	Send Data installatie, plattegrond 5e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %D106%
{
	Send Data installatie, plattegrond 6e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %D107%
{
	Send Data installatie, plattegrond 7e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %D108%
{
	Send Data installatie, plattegrond 8e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %D109%
{
	Send Data installatie, plattegrond 9e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %D110%
{
	Send Data installatie, plattegrond 10e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %D2%
{
	Send Data installatie, blokschema 
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %D3%
{
	Send Data installatie, principeschema
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %D4%
{
	Send Data installatie, detail 
	clipboard = %clipboardold%
	return 
}



;Gebruiksvergunning
IfInString, clipboart, %G100%
{
	Send Gebruiksvergunning, plattegrond begane grond
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %G1T0%
{
	Send Gebruiksvergunning, plattegrond tussenverdieping tussen bg en 1e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %G101%
{
	Send Gebruiksvergunning, plattegrond 1e verdieping 
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %G1T1%
{
	Send Gebruiksvergunning, plattegrond tussen verdieping tussen 1e en 2e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %G102%
{
	Send Gebruiksvergunning, plattegrond 2 verdieping 
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %G103%
{
	Send Gebruiksvergunning, plattegrond 3e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %G104%
{
	Send Gebruiksvergunning, plattegrond 4e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %G105%
{
	Send Gebruiksvergunning, plattegrond 5e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %G106%
{
	Send Gebruiksvergunning, plattegrond 6e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %G107%
{
	Send Gebruiksvergunning, plattegrond 7e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %G108%
{
	Send Gebruiksvergunning, plattegrond 8e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %G109%
{
	Send Gebruiksvergunning, plattegrond 9e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %G110%
{
	Send Gebruiksvergunning, plattegrond 10e verdieping 
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %G1K1%
{
	Send Gebruiksvergunning, plattegrond kelder -1
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %G1K2%
{
	Send Gebruiksvergunning, plattegrond kelder -2
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %G1TR%
{
	Send Gebruiksvergunning, plattegrond terrein
	clipboard = %clipboardold%
	return 
}


;Brandmeldinstallatie
IfInString, clipboart, %BM1TR%
{
	Send Brandmeldinstallatie, plattegrond terrein
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %BM1K1%
{
	Send Brandmeldinstallatie, plattegrond kelder -1
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %BM100%
{
	Send Brandmeldinstallatie, plattegrond begane grond
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %BM101%
{
	Send Brandmeldinstallatie, plattegrond 1e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %BM102%
{
	Send Brandmeldinstallatie, plattegrond 2e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %BM103%
{
	Send Brandmeldinstallatie, plattegrond 3e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %BM104%
{
	Send Brandmeldinstallatie, plattegrond 4e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %BM105%
{
	Send Brandmeldinstallatie, plattegrond 5e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %BM106%
{
	Send Brandmeldinstallatie, plattegrond 6e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %BM107%
{
	Send Brandmeldinstallatie, plattegrond 7e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %BM108%
{
	Send Brandmeldinstallatie, plattegrond 8e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %BM109%
{
	Send Brandmeldinstallatie, plattegrond 9e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %BM110%
{
	Send Brandmeldinstallatie, plattegrond 10e verdieping
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %BM2%
{
	Send Brandmeldinstallatie, blokschema 
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %BM3%
{
	Send Brandmeldinstallatie, principeschema 
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %BM4%
{
	Send Brandmeldinstallatie, detail
	clipboard = %clipboardold%
	return 
}



; VLUCHTPLANNEN

IfInString, clipboart, %VK101%
{
	Send Vluchtplan 1, kelder -1
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %VK102%
{
	Send Vluchtplan 2, kelder -1
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %VK103%
{
	Send Vluchtplan 3, kelder -1
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %VK104%
{
	Send Vluchtplan 4, kelder -1
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %VK105%
{
	Send Vluchtplan 5, kelder -1
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %VK106%
{
	Send Vluchtplan 6, kelder -1
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %VK107%
{
	Send Vluchtplan 7, kelder -1
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %VK108%
{
	Send Vluchtplan 8, kelder -1
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %VK109%
{
	Send Vluchtplan 9, kelder -1
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %VK110%
{
	Send Vluchtplan 10, kelder -1
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}




;Begane grond
IfInString, clipboart, %V0001%
{
	Send Vluchtplan 1, begane grond
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0002%
{
	Send Vluchtplan 2, begane grond
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0003%
{
	Send Vluchtplan 3, begane grond
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0004%
{
	Send Vluchtplan 4, begane grond
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0005%
{
	Send Vluchtplan 5, begane grond
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0006%
{
	Send Vluchtplan 6, begane grond
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0007%
{
	Send Vluchtplan 7, begane grond
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0008%
{
	Send Vluchtplan 8, begane grond
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0009%
{
	Send Vluchtplan 9, begane grond
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0010%
{
	Send Vluchtplan 10, begane grond
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0011%
{
	Send Vluchtplan 11, begane grond
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0012%
{
	Send Vluchtplan 12, begane grond
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0013%
{
	Send Vluchtplan 13, begane grond
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0014%
{
	Send Vluchtplan 14, begane grond
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%z
	return 
}
IfInString, clipboart, %V0015%
{
	Send Vluchtplan 15, begane grond
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%z
	return 
}
IfInString, clipboart, %V0016%
{
	Send Vluchtplan 16, begane grond
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0017%
{
	Send Vluchtplan 17, begane grond
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0018%
{
	Send Vluchtplan 18, begane grond
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0019%
{
	Send Vluchtplan 19, begane grond
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0020%
{
	Send Vluchtplan 20, begane grond
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0021%
{
	Send Vluchtplan 21, begane grond
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0022%
{
	Send Vluchtplan 22, begane grond
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0023%
{
	Send Vluchtplan 23, begane grond
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0024%
{
	Send Vluchtplan 24, begane grond
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0025%
{
	Send Vluchtplan 25, begane grond
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0026%
{
	Send Vluchtplan 26, begane grond
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0027%
{
	Send Vluchtplan 27, begane grond
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0028%
{
	Send Vluchtplan 28, begane grond
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0029%
{
	Send Vluchtplan 29, begane grond
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0030%
{
	Send Vluchtplan 30, begane grond
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0101%
{
	Send Vluchtplan 1, 1e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0102%
{
	Send Vluchtplan 2, 1e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0103%
{
	Send Vluchtplan 3, 1e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0104%
{
	Send Vluchtplan 4, 1e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0105%
{
	Send Vluchtplan 5, 1e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0106%
{
	Send Vluchtplan 6, 1e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0107%
{
	Send Vluchtplan 7, 1e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0108%
{
	Send Vluchtplan 8, 1e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0109%
{
	Send Vluchtplan 9, 1e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0110%
{
	Send Vluchtplan 10, 1e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0111%
{
	Send Vluchtplan 11, 1e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0112%
{
	Send Vluchtplan 12, 1e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0113%
{
	Send Vluchtplan 13, 1e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0114%
{
	Send Vluchtplan 14, 1e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0115%
{
	Send Vluchtplan 15, 1e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0116%
{
	Send Vluchtplan 16, 1e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0117%
{
	Send Vluchtplan 17, 1e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0118%
{
	Send Vluchtplan 18, 1e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0119%
{
	Send Vluchtplan 19, 1e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0120%
{
	Send Vluchtplan 20, 1e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0121%
{
	Send Vluchtplan 21, 1e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0122%
{
	Send Vluchtplan 22, 1e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0123%
{
	Send Vluchtplan 23, 1e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0124%
{
	Send Vluchtplan 24, 1e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0125%
{
	Send Vluchtplan 25, 1e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0126%
{
	Send Vluchtplan 26, 1e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0127%
{
	Send Vluchtplan 27, 1e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0128%
{
	Send Vluchtplan 28, 1e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0129%
{
	Send Vluchtplan 29, 1e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0130%
{
	Send Vluchtplan 30, 1e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0201%
{
	Send Vluchtplan 1, 2e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0202%
{
	Send Vluchtplan 2, 2e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0203%
{
	Send Vluchtplan 3, 2e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0204%
{
	Send Vluchtplan 4, 2e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0205%
{
	Send Vluchtplan 5, 2e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0206%
{
	Send Vluchtplan 6, 2e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0207%
{
	Send Vluchtplan 7, 2e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0208%
{
	Send Vluchtplan 8, 2e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0209%
{
	Send Vluchtplan 9, 2e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0210%
{
	Send Vluchtplan 10, 2e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0211%
{
	Send Vluchtplan 11, 2e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0212%
{
	Send Vluchtplan 12, 2e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0213%
{
	Send Vluchtplan 13, 2e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0214%
{
	Send Vluchtplan 14, 2e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0215%
{
	Send Vluchtplan 15, 2e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0216%
{
	Send Vluchtplan 16, 2e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0217%
{
	Send Vluchtplan 17, 2e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0218%
{
	Send Vluchtplan 18, 2e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0219%
{
	Send Vluchtplan 19, 2e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0220%
{
	Send Vluchtplan 20, 2e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0221%
{
	Send Vluchtplan 21, 2e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0222%
{
	Send Vluchtplan 22, 2e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0223%
{
	Send Vluchtplan 23, 2e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0224%
{
	Send Vluchtplan 24, 2e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0225%
{
	Send Vluchtplan 25, 2e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0226%
{
	Send Vluchtplan 26, 2e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0227%
{
	Send Vluchtplan 27, 2e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0228%
{
	Send Vluchtplan 28, 2e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0229%
{
	Send Vluchtplan 29, 2e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0230%
{
	Send Vluchtplan 30, 2e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0301%
{
	Send Vluchtplan 1, 3e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0302%
{
	Send Vluchtplan 2, 3e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0303%
{
	Send Vluchtplan 3, 3e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0304%
{
	Send Vluchtplan 4, 3e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0305%
{
	Send Vluchtplan 5, 3e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0306%
{
	Send Vluchtplan 6, 3e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0307%
{
	Send Vluchtplan 7, 3e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0308%
{
	Send Vluchtplan 8, 3e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0309%
{
	Send Vluchtplan 9, 3e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0310%
{
	Send Vluchtplan 10, 3e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0311%
{
	Send Vluchtplan 11, 3e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0312%
{
	Send Vluchtplan 12, 3e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0313%
{
	Send Vluchtplan 13, 3e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0314%
{
	Send Vluchtplan 14, 3e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0315%
{
	Send Vluchtplan 15, 3e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0316%
{
	Send Vluchtplan 16, 3e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0317%
{
	Send Vluchtplan 17, 3e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0318%
{
	Send Vluchtplan 18, 3e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0319%
{
	Send Vluchtplan 19, 3e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0320%
{
	Send Vluchtplan 20, 3e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0321%
{
	Send Vluchtplan 21, 3e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0322%
{
	Send Vluchtplan 22, 3e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0323%
{
	Send Vluchtplan 23, 3e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0324%
{
	Send Vluchtplan 24, 3e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0325%
{
	Send Vluchtplan 25, 3e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0326%
{
	Send Vluchtplan 26, 3e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0327%
{
	Send Vluchtplan 27, 3e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0328%
{
	Send Vluchtplan 28, 3e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0329%
{
	Send Vluchtplan 29, 3e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0330%
{
	Send Vluchtplan 30, 3e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0401%
{
	Send Vluchtplan 1, 4e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0402%
{
	Send Vluchtplan 2, 4e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0403%
{
	Send Vluchtplan 3, 4e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0404%
{
	Send Vluchtplan 4, 4e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0405%
{
	Send Vluchtplan 5, 4e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0406%
{
	Send Vluchtplan 6, 4e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0407%
{
	Send Vluchtplan 7, 4e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0408%
{
	Send Vluchtplan 8, 4e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0409%
{
	Send Vluchtplan 9, 4e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0410%
{
	Send Vluchtplan 10, 4e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0411%
{
	Send Vluchtplan 11, 4e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0412%
{
	Send Vluchtplan 12, 4e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0413%
{
	Send Vluchtplan 13, 4e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0414%
{
	Send Vluchtplan 14, 4e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0415%
{
	Send Vluchtplan 15, 4e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0416%
{
	Send Vluchtplan 16, 4e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0417%
{
	Send Vluchtplan 17, 4e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0418%
{
	Send Vluchtplan 18, 4e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0419%
{
	Send Vluchtplan 19, 4e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0420%
{
	Send Vluchtplan 20, 4e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0421%
{
	Send Vluchtplan 21, 4e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0422%
{
	Send Vluchtplan 22, 4e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0423%
{
	Send Vluchtplan 23, 4e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0424%
{
	Send Vluchtplan 24, 4e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0425%
{
	Send Vluchtplan 25, 4e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0426%
{
	Send Vluchtplan 26, 4e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0427%
{
	Send Vluchtplan 27, 4e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0428%
{
	Send Vluchtplan 28, 4e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0429%
{
	Send Vluchtplan 29, 4e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0430%
{
	Send Vluchtplan 30, 4e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0501%
{
	Send Vluchtplan 1, 5e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0502%
{
	Send Vluchtplan 2, 5e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0503%
{
	Send Vluchtplan 3, 5e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0504%
{
	Send Vluchtplan 4, 5e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0505%
{
	Send Vluchtplan 5, 5e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0506%
{
	Send Vluchtplan 6, 5e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0507%
{
	Send Vluchtplan 7, 5e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0508%
{
	Send Vluchtplan 8, 5e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0509%
{
	Send Vluchtplan 9, 5e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0510%
{
	Send Vluchtplan 10, 5e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0511%
{
	Send Vluchtplan 11, 5e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0512%
{
	Send Vluchtplan 12, 5e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0513%
{
	Send Vluchtplan 13, 5e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0514%
{
	Send Vluchtplan 14, 5e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0515%
{
	Send Vluchtplan 15, 5e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0516%
{
	Send Vluchtplan 16, 5e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0517%
{
	Send Vluchtplan 17, 5e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0518%
{
	Send Vluchtplan 18, 5e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0519%
{
	Send Vluchtplan 19, 5e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0520%
{
	Send Vluchtplan 20, 5e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0521%
{
	Send Vluchtplan 21, 5e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0522%
{
	Send Vluchtplan 22, 5e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0523%
{
	Send Vluchtplan 23, 5e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0524%
{
	Send Vluchtplan 24, 5e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0525%
{
	Send Vluchtplan 25, 5e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0526%
{
	Send Vluchtplan 26, 5e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0527%
{
	Send Vluchtplan 27, 5e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0528%
{
	Send Vluchtplan 28, 5e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0529%
{
	Send Vluchtplan 29, 5e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0530%
{
	Send Vluchtplan 30, 5e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0601%
{
	Send Vluchtplan 1, 6e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0602%
{
	Send Vluchtplan 2, 6e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0603%
{
	Send Vluchtplan 3, 6e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0604%
{
	Send Vluchtplan 4, 6e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0605%
{
	Send Vluchtplan 5, 6e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0606%
{
	Send Vluchtplan 6, 6e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0607%
{
	Send Vluchtplan 7, 6e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0608%
{
	Send Vluchtplan 8, 6e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0609%
{
	Send Vluchtplan 9, 6e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0610%
{
	Send Vluchtplan 10, 6e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0611%
{
	Send Vluchtplan 11, 6e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0612%
{
	Send Vluchtplan 12, 6e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0613%
{
	Send Vluchtplan 13, 6e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0614%
{
	Send Vluchtplan 14, 6e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0615%
{
	Send Vluchtplan 15, 6e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0616%
{
	Send Vluchtplan 16, 6e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0617%
{
	Send Vluchtplan 17, 6e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0618%
{
	Send Vluchtplan 18, 6e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0619%
{
	Send Vluchtplan 19, 6e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0620%
{
	Send Vluchtplan 20, 6e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0621%
{
	Send Vluchtplan 21, 6e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0622%
{
	Send Vluchtplan 22, 6e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0623%
{
	Send Vluchtplan 23, 6e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0624%
{
	Send Vluchtplan 24, 6e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0625%
{
	Send Vluchtplan 25, 6e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0626%
{
	Send Vluchtplan 26, 6e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0627%
{
	Send Vluchtplan 27, 6e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0628%
{
	Send Vluchtplan 28, 6e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0629%
{
	Send Vluchtplan 29, 6e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0630%
{
	Send Vluchtplan 30, 6e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0701%
{
	Send Vluchtplan 1, 7e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0702%
{
	Send Vluchtplan 2, 7e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0703%
{
	Send Vluchtplan 3, 7e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0704%
{
	Send Vluchtplan 4, 7e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0705%
{
	Send Vluchtplan 5, 7e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0706%
{
	Send Vluchtplan 6, 7e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0707%
{
	Send Vluchtplan 7, 7e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0708%
{
	Send Vluchtplan 8, 7e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0709%
{
	Send Vluchtplan 9, 7e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0710%
{
	Send Vluchtplan 10, 7e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0711%
{
	Send Vluchtplan 11, 7e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0712%
{
	Send Vluchtplan 12, 7e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0713%
{
	Send Vluchtplan 13, 7e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0714%
{
	Send Vluchtplan 14, 7e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0715%
{
	Send Vluchtplan 15, 7e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0716%
{
	Send Vluchtplan 16, 7e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0717%
{
	Send Vluchtplan 17, 7e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0718%
{
	Send Vluchtplan 18, 7e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0719%
{
	Send Vluchtplan 19, 7e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0720%
{
	Send Vluchtplan 20, 7e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0721%
{
	Send Vluchtplan 21, 7e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0722%
{
	Send Vluchtplan 22, 7e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0723%
{
	Send Vluchtplan 23, 7e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0724%
{
	Send Vluchtplan 24, 7e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0725%
{
	Send Vluchtplan 25, 7e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0726%
{
	Send Vluchtplan 26, 7e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0727%
{
	Send Vluchtplan 27, 7e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0728%
{
	Send Vluchtplan 28, 7e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0729%
{
	Send Vluchtplan 29, 7e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0730%
{
	Send Vluchtplan 30, 7e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0801%
{
	Send Vluchtplan 1, 8e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0802%
{
	Send Vluchtplan 2, 8e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0803%
{
	Send Vluchtplan 3, 8e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0804%
{
	Send Vluchtplan 4, 8e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0805%
{
	Send Vluchtplan 5, 8e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0806%
{
	Send Vluchtplan 6, 8e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0807%
{
	Send Vluchtplan 7, 8e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0808%
{
	Send Vluchtplan 8, 8e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0809%
{
	Send Vluchtplan 9, 8e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0810%
{
	Send Vluchtplan 10, 8e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0811%
{
	Send Vluchtplan 11, 8e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0812%
{
	Send Vluchtplan 12, 8e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0813%
{
	Send Vluchtplan 13, 8e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0814%
{
	Send Vluchtplan 14, 8e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0815%
{
	Send Vluchtplan 15, 8e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0816%
{
	Send Vluchtplan 16, 8e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0817%
{
	Send Vluchtplan 17, 8e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0818%
{
	Send Vluchtplan 18, 8e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0819%
{
	Send Vluchtplan 19, 8e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0820%
{
	Send Vluchtplan 20, 8e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0821%
{
	Send Vluchtplan 21, 8e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0822%
{
	Send Vluchtplan 22, 8e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0823%
{
	Send Vluchtplan 23, 8e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0824%
{
	Send Vluchtplan 24, 8e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0825%
{
	Send Vluchtplan 25, 8e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0826%
{
	Send Vluchtplan 26, 8e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0827%
{
	Send Vluchtplan 27, 8e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0828%
{
	Send Vluchtplan 28, 8e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0829%
{
	Send Vluchtplan 29, 8e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0830%
{
	Send Vluchtplan 30, 8e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0901%
{
	Send Vluchtplan 1, 9e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0902%
{
	Send Vluchtplan 2, 9e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0903%
{
	Send Vluchtplan 3, 9e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0904%
{
	Send Vluchtplan 4, 9e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0905%
{
	Send Vluchtplan 5, 9e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0906%
{
	Send Vluchtplan 6, 9e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0907%
{
	Send Vluchtplan 7, 9e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0908%
{
	Send Vluchtplan 8, 9e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0909%
{
	Send Vluchtplan 9, 9e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0910%
{
	Send Vluchtplan 10, 9e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0911%
{
	Send Vluchtplan 11, 9e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0912%
{
	Send Vluchtplan 12, 9e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0913%
{
	Send Vluchtplan 13, 9e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0914%
{
	Send Vluchtplan 14, 9e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0915%
{
	Send Vluchtplan 15, 9e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0916%
{
	Send Vluchtplan 16, 9e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0917%
{
	Send Vluchtplan 17, 9e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0918%
{
	Send Vluchtplan 18, 9e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0919%
{
	Send Vluchtplan 19, 9e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0920%
{
	Send Vluchtplan 20, 9e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0921%
{
	Send Vluchtplan 21, 9e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0922%
{
	Send Vluchtplan 22, 9e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0923%
{
	Send Vluchtplan 23, 9e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0924%
{
	Send Vluchtplan 24, 9e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0925%
{
	Send Vluchtplan 25, 9e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0926%
{
	Send Vluchtplan 26, 9e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0927%
{
	Send Vluchtplan 27, 9e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0928%
{
	Send Vluchtplan 28, 9e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0929%
{
	Send Vluchtplan 29, 9e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0930%
{
	Send Vluchtplan 30, 9e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1001%
{
	Send Vluchtplan 1, 10e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1002%
{
	Send Vluchtplan 2, 10e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1003%
{
	Send Vluchtplan 3, 10e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1004%
{
	Send Vluchtplan 4, 10e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1005%
{
	Send Vluchtplan 5, 10e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1006%
{
	Send Vluchtplan 6, 10e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1007%
{
	Send Vluchtplan 7, 10e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1008%
{
	Send Vluchtplan 8, 10e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1009%
{
	Send Vluchtplan 9, 10e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1010%
{
	Send Vluchtplan 10, 10e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1011%
{
	Send Vluchtplan 11, 10e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1012%
{
	Send Vluchtplan 12, 10e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1013%
{
	Send Vluchtplan 13, 10e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1014%
{
	Send Vluchtplan 14, 10e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1015%
{
	Send Vluchtplan 15, 10e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1016%
{
	Send Vluchtplan 16, 10e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1017%
{
	Send Vluchtplan 17, 10e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1018%
{
	Send Vluchtplan 18, 10e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1019%
{
	Send Vluchtplan 19, 10e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1020%
{
	Send Vluchtplan 20, 10e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1021%
{
	Send Vluchtplan 21, 10e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1022%
{
	Send Vluchtplan 22, 10e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1023%
{
	Send Vluchtplan 23, 10e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1024%
{
	Send Vluchtplan 24, 10e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1025%
{
	Send Vluchtplan 25, 10e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1026%
{
	Send Vluchtplan 26, 10e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1027%
{
	Send Vluchtplan 27, 10e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1028%
{
	Send Vluchtplan 28, 10e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1029%
{
	Send Vluchtplan 29, 10e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1030%
{
	Send Vluchtplan 30, 10e verdieping
	Send {tab}A3{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %Beheersplan%
{
	Send Legionella beheersplan t.v.v. Legionella
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %KIWA%
{
	Send KIWA conformiteitsverklaring
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %Service%
{
	Send Service order bon, 
	send {shiftdown}{tab 2}{shiftup}{end}{shiftdown}{left 4}{shiftup}{ctrldown}c{ctrlup}{tab 2}{end}{space}{ctrldown}v{ctrlup}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %keerklep%
{
	Send Kopie logboek keerkleppen, 
	send {shiftdown}{tab 2}{shiftup}{end}{shiftdown}{left 4}{shiftup}{ctrldown}c{ctrlup}{tab 2}{end}{space}{ctrldown}v{ctrlup}
	clipboard = %clipboardold%
	return
}



IfInString, clipboart, %1kwartaal%
{
	send Overzicht kosten + verbruik energie, 1e kwartaal 2012
	send {tab}A3{tab 9}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %2kwartaal%
{
	Send Overzicht kosten + verbruik energie, 2e kwartaal 2012
	send {tab}A3{tab 9}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %3kwartaal%
{
	Send Overzicht kosten + verbruik energie, 3e kwartaal 2012
	send {tab}A3{tab 9}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %4kwartaal%
{
	Send Overzicht kosten + verbruik energie, 4e kwartaal 2012
	send {tab}A3{tab 9}
	clipboard = %clipboardold%
	return
}




/*
=====================================================================================================
=====================================================================================================
=====================================================================================================
=====================================================================================================
=====================================================================================================
LOCATIE GEVOELIGE REPLACEMENTS
=====================================================================================================
=====================================================================================================
=====================================================================================================
=====================================================================================================
=====================================================================================================
=====================================================================================================
=====================================================================================================
*/














IfNotInString, clipboart, %adg%
{
	goto CMMS
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Adegeest, januari 2012
	send {tab}A4{tab 2}01{tab}01{tab 2}31{tab}01{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Adegeest, februari 2012
	send {tab}A4{tab 2}01{tab}02{tab 2}31{tab}02{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Adegeest, maart 2012
	send {tab}A4{tab 2}01{tab}03{tab 2}31{tab}03{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Adegeest, april 2012
	send {tab}A4{tab 2}04{tab}01{tab 2}31{tab}04{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Adegeest, mei 2012
	send {tab}A4{tab 2}01{tab}05{tab 2}31{tab}05{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Adegeest, juni 2012
	send {tab}A4{tab 2}01{tab}06{tab 2}31{tab}06{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Adegeest, juli 2012
	send {tab}A4{tab 2}01{tab}07{tab 2}31{tab}07{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Adegeest, augustus 2012
	send {tab}A4{tab 2}01{tab}08{tab 2}31{tab}08{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Adegeest, september 2012
	send {tab}A4{tab 2}01{tab}09{tab 2}31{tab}09{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Adegeest, oktober 2012
	send {tab}A4{tab 2}01{tab}10{tab 2}31{tab}10{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Adegeest, november 2012
	send {tab}A4{tab 2}01{tab}11{tab 2}31{tab}11{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Adegeest, december 2012
	send {tab}A4{tab 2}01{tab}12{tab 2}31{tab}12{tab 3}
	clipboard = %clipboardold%
	return
}
CMMS:
IfNotInString, clipboart, %CMMS%
{
	goto DST
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht CMMS, januari 2012
	send {tab}A4{tab 2}01{tab}01{tab 2}31{tab}01{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht CMMS, februari 2012
	send {tab}A4{tab 2}01{tab}02{tab 2}28{tab}02{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht CMMS, maart 2012
	send {tab}A4{tab 2}01{tab}03{tab 2}31{tab}03{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht CMMS, april 2012
	send {tab}A4{tab 2}04{tab}01{tab 2}30{tab}04{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht CMMS, mei 2012
	send {tab}A4{tab 2}01{tab}05{tab 2}31{tab}05{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht CMMS, juni 2012
	send {tab}A4{tab 2}01{tab}06{tab 2}31{tab}06{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht CMMS, juli 2012
	send {tab}A4{tab 2}01{tab}07{tab 2}31{tab}07{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht CMMS, augustus 2012
	send {tab}A4{tab 2}01{tab}08{tab 2}31{tab}08{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht CMMS, september 2012
	send {tab}A4{tab 2}01{tab}09{tab 2}31{tab}09{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht CMMS, oktober 2012
	send {tab}A4{tab 2}01{tab}10{tab 2}31{tab}10{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht CMMS, november 2012
	send {tab}A4{tab 2}01{tab}11{tab 2}31{tab}11{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht CMMS, december 2012
	send {tab}A4{tab 2}01{tab}12{tab 2}31{tab}12{tab 3}
	clipboard = %clipboardold%
	return
}
DST:
IfNotInString, clipboart, %DST%
{
	goto MTL
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Duinstede, januari 2012
	
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Duinstede, februari 2012
clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Duinstede, maart 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Duinstede, april 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Duinstede, mei 2012
	send {tab}A4{tab 2}01{tab}05{tab 2}31{tab}05{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Duinstede, juni 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Duinstede, juli 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Duinstede, augustus 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Duinstede, september 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Duinstede, oktober 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Duinstede, november 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Duinstede, december 2012
	clipboard = %clipboardold%
	return
}
MTL:
IfNotInString, clipboart, %MTL%
{
	goto GHS
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht De Mantel, januari 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht De Mantel, februari 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht De Mantel, maart 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht De Mantel, april 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht De Mantel, mei 2012
	send {tab}A4{tab 2}01{tab}05{tab 2}31{tab}05{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht De Mantel, juni 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht De Mantel, juli 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht De Mantel, augustus 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht De Mantel, september 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht De Mantel, oktober 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht De Mantel, november 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht De Mantel, december 2012
	clipboard = %clipboardold%
	return
}
GHS:
IfNotInString, clipboart, %GHS%
{
	goto HHG
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Guldenhuis, januari 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Guldenhuis, februari 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Guldenhuis, maart 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Guldenhuis, april 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Guldenhuis, mei 2012
	send {tab}A4{tab 2}01{tab}05{tab 2}31{tab}05{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Guldenhuis, juni 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Guldenhuis, juli 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Guldenhuis, augustus 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Guldenhuis, september 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Guldenhuis, oktober 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Guldenhuis, november 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Guldenhuis, december 2012
	clipboard = %clipboardold%
	return
}
HHG:
IfNotInString, clipboart, %HHG%
{
	goto JFR
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Houthaghe, januari 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Houthaghe, februari 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Houthaghe, maart 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Houthaghe, april 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Houthaghe, mei 2012
	send {tab}A4{tab 2}01{tab}05{tab 2}31{tab}05{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Houthaghe, juni 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Houthaghe, juli 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Houthaghe, augustus 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Houthaghe, september 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Houthaghe, oktober 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Houthaghe, november 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Houthaghe, december 2012
	clipboard = %clipboardold%
	return
}
JFR:
IfNotInString, clipboart, %JFR%
{
	goto LVS
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Jonker Frans, januari 2012
	
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Jonker Frans, februari 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Jonker Frans, maart 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Jonker Frans, april 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Jonker Frans, mei 2012
	send {tab}A4{tab 2}01{tab}05{tab 2}31{tab}05{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Jonker Frans, juni 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Jonker Frans, juli 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Jonker Frans, augustus 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Jonker Frans, september 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Jonker Frans, oktober 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Jonker Frans, november 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Jonker Frans, december 2012
	clipboard = %clipboardold%
	return
}
LVS:
IfNotInString, clipboart, %LVS%
{
	goto LHF
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Loevenstein, januari 2012
	
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Loevenstein, februari 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Loevenstein, maart 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Loevenstein, april 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Loevenstein, mei 2012
	send {tab}A4{tab 2}01{tab}05{tab 2}31{tab}05{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Loevenstein, juni 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Loevenstein, juli 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Loevenstein, augustus 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Loevenstein, september 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Loevenstein, oktober 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Loevenstein, november 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Loevenstein, december 2012
	clipboard = %clipboardold%
	return
}
LHF:
IfNotInString, clipboart, %LHF%
{
	goto LVV
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Loosduinse Hof, januari 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Loosduinse Hof, februari 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Loosduinse Hof, maart 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Loosduinse Hof, april 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Loosduinse Hof, mei 2012
	send {tab}A4{tab 2}01{tab}05{tab 2}31{tab}05{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Loosduinse Hof, juni 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Loosduinse Hof, juli 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Loosduinse Hof, augustus 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Loosduinse Hof, september 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Loosduinse Hof, oktober 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Loosduinse Hof, november 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Loosduinse Hof, december 2012
	clipboard = %clipboardold%
	return
}
LVV:
IfNotInString, clipboart, %LVV%
{
	goto MHV
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Laan van Vredenoord, januari 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Laan van Vredenoord, februari 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Laan van Vredenoord, maart 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Laan van Vredenoord, april 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Laan van Vredenoord, mei 2012
	send {tab}A4{tab 2}01{tab}05{tab 2}31{tab}05{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Laan van Vredenoord, juni 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Laan van Vredenoord, juli 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Laan van Vredenoord, augustus 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Laan van Vredenoord, september 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Laan van Vredenoord, oktober 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Laan van Vredenoord, november 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Laan van Vredenoord, december 2012
	clipboard = %clipboardold%
	return
}
MHV:
IfNotInString, clipboart, %MHV%
{
	goto MRR
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Mariahoeve, januari 2012
	
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Mariahoeve, februari 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Mariahoeve, maart 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Mariahoeve, april 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Mariahoeve, mei 2012
	send {tab}A4{tab 2}01{tab}05{tab 2}31{tab}05{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Mariahoeve, juni 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Mariahoeve, juli 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Mariahoeve, augustus 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Mariahoeve, september 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Mariahoeve, oktober 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Mariahoeve, november 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Mariahoeve, december 2012
	clipboard = %clipboardold%
	return
}


MRR:
IfNotInString, clipboart, %MRR%
{
	goto OSD
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Marterrade, januari 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Marterrade, februari 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Marterrade, maart 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Marterrade, april 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Marterrade, mei 2012
	send {tab}A4{tab 2}01{tab}05{tab 2}31{tab}05{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Marterrade, juni 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Marterrade, juli 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Marterrade, augustus 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Marterrade, september 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Marterrade, oktober 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Marterrade, november 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Marterrade, december 2012
	clipboard = %clipboardold%
	return
}


OSD:
IfNotInString, clipboart, %OSD%
{
	goto SPT
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Oostduin, januari 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Oostduin, februari 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Oostduin, maart 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Oostduin, april 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Oostduin, mei 2012
	send {tab}A4{tab 2}01{tab}05{tab 2}31{tab}05{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Oostduin, juni 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Oostduin, juli 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Oostduin, augustus 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Oostduin, september 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Oostduin, oktober 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Oostduin, november 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Oostduin, december 2012
	clipboard = %clipboardold%
	return
}




 SPT:
 IfNotInString, clipboart, %SPT%
{
	goto STV
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Schakelpunt, januari 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Schakelpunt, februari 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Schakelpunt, maart 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Schakelpunt, april 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Schakelpunt, mei 2012
	send {tab}A4{tab 2}01{tab}05{tab 2}31{tab}05{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Schakelpunt, juni 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Schakelpunt, juli 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Schakelpunt, augustus 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Schakelpunt, september 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Schakelpunt, oktober 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Schakelpunt, november 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Schakelpunt, december 2012
	clipboard = %clipboardold%
	return
}
 
 
 
 
 
 STV:
 IfNotInString, clipboart, %STV%
{
	goto VBL
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Steenvoorde, januari 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Steenvoorde, februari 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Steenvoorde, maart 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Steenvoorde, april 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Steenvoorde, mei 2012
	send {tab}A4{tab 2}01{tab}05{tab 2}31{tab}05{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Steenvoorde, juni 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Steenvoorde, juli 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Steenvoorde, augustus 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Steenvoorde, september 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Steenvoorde, oktober 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Steenvoorde, november 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Steenvoorde, december 2012
	clipboard = %clipboardold%
	return
}
 
 
 
 
 VBL:
 IfNotInString, clipboart, %VBL%
{
	goto VBH
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Vinckenborglaan, januari 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Vinckenborglaan, februari 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Vinckenborglaan, maart 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Vinckenborglaan, april 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Vinckenborglaan, mei 2012
	send {tab}A4{tab 2}01{tab}05{tab 2}31{tab}05{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Vinckenborglaan, juni 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Vinckenborglaan, juli 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Vinckenborglaan, augustus 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Vinckenborglaan, september 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Vinckenborglaan, oktober 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Vinckenborglaan, november 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Vinckenborglaan, december 2012
	clipboard = %clipboardold%
	return
}
 
 
 VBH:

 
 
 IfNotInString, clipboart, %VBH%
{
	goto WKB
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Vredenburch, januari 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Vredenburch, februari 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Vredenburch, maart 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Vredenburch, april 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Vredenburch, mei 2012
	send {tab}A4{tab 2}01{tab}05{tab 2}31{tab}05{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Vredenburch, juni 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Vredenburch, juli 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Vredenburch, augustus 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Vredenburch, september 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Vredenburch, oktober 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Vredenburch, november 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Vredenburch, december 2012
	clipboard = %clipboardold%
	return
}
 
 
 
 
 
 WKB:
 IfNotInString, clipboart, %WKB%
{
	goto WHF
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Wenckebach, januari 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Wenckebach, februari 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Wenckebach, maart 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Wenckebach, april 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Wenckebach, mei 2012
	send {tab}A4{tab 2}01{tab}05{tab 2}31{tab}05{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Wenckebach, juni 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Wenckebach, juli 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Wenckebach, augustus 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Wenckebach, september 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Wenckebach, oktober 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Wenckebach, november 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Wenckebach, december 2012
	clipboard = %clipboardold%
	return
}
 
 
 
 WHF:
  
 IfNotInString, clipboart, %WHF%
{
	goto WBL
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Westhoff, januari 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Westhoff, februari 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Westhoff, maart 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Westhoff, april 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Westhoff, mei 2012
	send {tab}A4{tab 2}01{tab}05{tab 2}31{tab}05{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Westhoff, juni 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Westhoff, juli 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Westhoff, augustus 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Westhoff, september 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Westhoff, oktober 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Westhoff, november 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Westhoff, december 2012
	clipboard = %clipboardold%
	return
}
 
 
 
 
WBL:
 IfNotInString, clipboart, %WBL%
{
	goto UTZ
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Willem de Bijelaan, januari 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Willem de Bijelaan, februari 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Willem de Bijelaan, maart 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Willem de Bijelaan, april 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Willem de Bijelaan, mei 2012
	send {tab}A4{tab 2}01{tab}05{tab 2}31{tab}05{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Willem de Bijelaan, juni 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Willem de Bijelaan, juli 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Willem de Bijelaan, augustus 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Willem de Bijelaan, september 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Willem de Bijelaan, oktober 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Willem de Bijelaan, november 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Willem de Bijelaan, december 2012
	clipboard = %clipboardold%
	return
}
 
 
 

 
UTZ:
IfNotInString, clipboart, %UTZ%
{
	goto LRS
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Uitzicht, januari 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Uitzicht, februari 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Uitzicht, maart 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Uitzicht, april 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Uitzicht, mei 2012
	send {tab}A4{tab 2}01{tab}05{tab 2}31{tab}05{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Uitzicht, juni 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Uitzicht, juli 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Uitzicht, augustus 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Uitzicht, september 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Uitzicht, oktober 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Uitzicht, november 2012
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Uitzicht, december 2012
	clipboard = %clipboardold%
	return
}

LRS:
IfNotInString, clipboart, %LRS%
{
	goto ODB
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Laurens Reaalstraat, januari 2012
	Send {tab}A3{tab}{space}{tab}01{tab}01{tab}2012{tab 5}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Laurens Reaalstraat, februari 2012
	Send {tab}A3{tab}{space}{tab}01{tab}02{tab}2012{tab 5}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Laurens Reaalstraat, maart 2012
	Send {tab}A3{tab}{space}{tab}01{tab}03{tab}2012{tab 5}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Laurens Reaalstraat, april 2012
	Send {tab}A3{tab}{space}{tab}01{tab}04{tab}2012{tab 5}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Laurens Reaalstraat, mei 2012
	Send {tab}A3{tab}{space}{tab}01{tab}05{tab}2012{tab 5}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Laurens Reaalstraat, juni 2012
	Send {tab}A3{tab}{space}{tab}01{tab}06{tab}2012{tab 5}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Laurens Reaalstraat, juli 2012
	Send {tab}A3{tab}{space}{tab}01{tab}07{tab}2012{tab 5}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Laurens Reaalstraat, augustus 2012
	Send {tab}A3{tab}{space}{tab}01{tab}08{tab}2012{tab 5}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Laurens Reaalstraat, september 2012
	Send {tab}A3{tab}{space}{tab}01{tab}09{tab}2012{tab 5}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Laurens Reaalstraat, oktober 2012
	Send {tab}A3{tab}{space}{tab}01{tab}10{tab}2012{tab 5}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Laurens Reaalstraat, november 2012
	Send {tab}A3{tab}{space}{tab}01{tab}11{tab}2012{tab 5}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Laurens Reaalstraat, december 2012
	Send {tab}A3{tab}{space}{tab}01{tab}12{tab}2012{tab 5}
	clipboard = %clipboardold%
	return
}
ODB:
;IfNotInString, clipboart, %ODB%
;{
;	msgbox Geen locatie gevonden`n voer juiste locatie in s.v.p. 
;	clipboard = %clipboardold%
;}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Over de Boogaard, januari 2012
	Send {tab}A3{tab}{space}{tab}01{tab}01{tab}2012{tab 5}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Over de Boogaard, februari 2012
	Send {tab}A3{tab}{space}{tab}01{tab}02{tab}2012{tab 5}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Over de Boogaard, maart 2012
	Send {tab}A3{tab}{space}{tab}01{tab}03{tab}2012{tab 5}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Over de Boogaard, april 2012
	Send {tab}A3{tab}{space}{tab}01{tab}04{tab}2012{tab 5}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Over de Boogaard, mei 2012
	Send {tab}A3{tab}{space}{tab}01{tab}05{tab}2012{tab 5}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Over de Boogaard, juni 2012
	Send {tab}A3{tab}{space}{tab}01{tab}06{tab}2012{tab 5}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Over de Boogaard, juli 2012
	Send {tab}A3{tab}{space}{tab}01{tab}07{tab}2012{tab 5}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Over de Boogaard, augustus 2012
	Send {tab}A3{tab}{space}{tab}01{tab}08{tab}2012{tab 5}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Over de Boogaard, september 2012
	Send {tab}A3{tab}{space}{tab}01{tab}09{tab}2012{tab 5}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Over de Boogaard, oktober 2012
	Send {tab}A3{tab}{space}{tab}01{tab}10{tab}2012{tab 5}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Over de Boogaard, november 2012
	Send {tab}A3{tab}{space}{tab}01{tab}11{tab}2012{tab 5}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Over de Boogaard, december 2012
	Send {tab}A3{tab}{space}{tab}01{tab}12{tab}2012{tab 5}
	clipboard = %clipboardold%
	return
}



























2011:
IfNotInString, clipboart, %2011%
{
	goto end11 
}
IfInString, clipboart, %1kwartaal%
{
	send Overzicht kosten + verbruik energie, 1e kwartaal 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %2kwartaal%
{
	Send Overzicht kosten + verbruik energie, 2e kwartaal 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %3kwartaal%
{
	Send Overzicht kosten + verbruik energie, 3e kwartaal 2011
	clipboard = %clipboardold%
	return
	}
IfInString, clipboart, %4kwartaal%
{
	Send Overzicht kosten + verbruik energie, 4e kwartaal 2011
	clipboard = %clipboardold%
	return
}
IfNotInString, clipboart, %adg%
{
	goto CMMS11
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Adegeest, januari 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Adegeest, februari 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Adegeest, maart 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Adegeest, april 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Adegeest, mei 2011
	send {tab}A4{tab 2}01{tab}05{tab 2}31{tab}05{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Adegeest, juni 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Adegeest, juli 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Adegeest, augustus 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Adegeest, september 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Adegeest, oktober 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Adegeest, november 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Adegeest, december 2011
	clipboard = %clipboardold%
	return
}
CMMS11:
IfNotInString, clipboart, %CMMS%
{
	goto DST11
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht CMMS, januari 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht CMMS, februari 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht CMMS, maart 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht CMMS, april 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht CMMS, mei 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht CMMS, juni 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht CMMS, juli 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht CMMS, augustus 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht CMMS, september 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht CMMS, oktober 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht CMMS, november 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht CMMS, december 2011
	clipboard = %clipboardold%
	return
}
DST11:
IfNotInString, clipboart, %DST%
{
	goto MTL11
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Duinstede, januari 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Duinstede, februari 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Duinstede, maart 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Duinstede, april 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Duinstede, mei 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Duinstede, juni 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Duinstede, juli 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Duinstede, augustus 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Duinstede, september 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Duinstede, oktober 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Duinstede, november 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Duinstede, december 2011
	clipboard = %clipboardold%
	return
}
MTL11:
IfNotInString, clipboart, %MTL%
{
	goto GHS11
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht De Mantel, januari 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht De Mantel, februari 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht De Mantel, maart 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht De Mantel, april 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht De Mantel, mei 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht De Mantel, juni 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht De Mantel, juli 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht De Mantel, augustus 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht De Mantel, september 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht De Mantel, oktober 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht De Mantel, november 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht De Mantel, december 2011
	clipboard = %clipboardold%
	return
}
GHS11:
IfNotInString, clipboart, %GHS%
{
	goto HHG11
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Guldenhuis, januari 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Guldenhuis, februari 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Guldenhuis, maart 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Guldenhuis, april 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Guldenhuis, mei 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Guldenhuis, juni 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Guldenhuis, juli 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Guldenhuis, augustus 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Guldenhuis, september 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Guldenhuis, oktober 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Guldenhuis, november 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Guldenhuis, december 2011
	clipboard = %clipboardold%
	return
}
HHG11:
IfNotInString, clipboart, %HHG%
{
	goto JFR11
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Houthaghe, januari 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Houthaghe, februari 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Houthaghe, maart 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Houthaghe, april 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Houthaghe, mei 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Houthaghe, juni 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Houthaghe, juli 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Houthaghe, augustus 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Houthaghe, september 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Houthaghe, oktober 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Houthaghe, november 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Houthaghe, december 2011
	clipboard = %clipboardold%
	return
}
JFR11:
IfNotInString, clipboart, %JFR%
{
	goto LVS11
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Jonker Frans, januari 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Jonker Frans, februari 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Jonker Frans, maart 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Jonker Frans, april 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Jonker Frans, mei 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Jonker Frans, juni 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Jonker Frans, juli 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Jonker Frans, augustus 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Jonker Frans, september 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Jonker Frans, oktober 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Jonker Frans, november 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Jonker Frans, december 2011
	clipboard = %clipboardold%
	return
}
LVS11:
IfNotInString, clipboart, %LVS%
{
	goto LHF11
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Loevenstein, januari 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Loevenstein, februari 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Loevenstein, maart 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Loevenstein, april 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Loevenstein, mei 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Loevenstein, juni 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Loevenstein, juli 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Loevenstein, augustus 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Loevenstein, september 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Loevenstein, oktober 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Loevenstein, november 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Loevenstein, december 2011
	clipboard = %clipboardold%
	return
}
LHF11:
IfNotInString, clipboart, %LHF%
{
	goto LVV11
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Loosduinse Hof, januari 2011
	
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Loosduinse Hof, februari 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Loosduinse Hof, maart 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Loosduinse Hof, april 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Loosduinse Hof, mei 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Loosduinse Hof, juni 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Loosduinse Hof, juli 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Loosduinse Hof, augustus 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Loosduinse Hof, september 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Loosduinse Hof, oktober 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Loosduinse Hof, november 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Loosduinse Hof, december 2011
	clipboard = %clipboardold%
	return
}
LVV11:
IfNotInString, clipboart, %LVV%
{
	goto MHV11
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Laan van Vredenoord, januari 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Laan van Vredenoord, februari 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Laan van Vredenoord, maart 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Laan van Vredenoord, april 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Laan van Vredenoord, mei 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Laan van Vredenoord, juni 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Laan van Vredenoord, juli 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Laan van Vredenoord, augustus 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Laan van Vredenoord, september 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Laan van Vredenoord, oktober 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Laan van Vredenoord, november 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Laan van Vredenoord, december 2011
	clipboard = %clipboardold%
	return
}
MHV11:
IfNotInString, clipboart, %MHV%
{
	goto MRR11
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Mariahoeve, januari 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Mariahoeve, februari 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Mariahoeve, maart 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Mariahoeve, april 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Mariahoeve, mei 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Mariahoeve, juni 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Mariahoeve, juli 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Mariahoeve, augustus 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Mariahoeve, september 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Mariahoeve, oktober 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Mariahoeve, november 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Mariahoeve, december 2011
	clipboard = %clipboardold%
	return
}
MRR11:
IfNotInString, clipboart, %MRR%
{
	goto OSD11
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Marterrade, januari 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Marterrade, februari 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Marterrade, maart 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Marterrade, april 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Marterrade, mei 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Marterrade, juni 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Marterrade, juli 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Marterrade, augustus 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Marterrade, september 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Marterrade, oktober 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Marterrade, november 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Marterrade, december 2011
	clipboard = %clipboardold%
	return
}
OSD11:
IfNotInString, clipboart, %OSD%
{
	goto SPT11
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Oostduin, januari 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Oostduin, februari 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Oostduin, maart 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Oostduin, april 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Oostduin, mei 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Oostduin, juni 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Oostduin, juli 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Oostduin, augustus 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Oostduin, september 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Oostduin, oktober 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Oostduin, november 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Oostduin, december 2011
	clipboard = %clipboardold%
	return
}
SPT11:
IfNotInString, clipboart, %SPT%
{
	goto STV11
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Schakelpunt, januari 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Schakelpunt, februari 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Schakelpunt, maart 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Schakelpunt, april 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Schakelpunt, mei 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Schakelpunt, juni 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Schakelpunt, juli 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Schakelpunt, augustus 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Schakelpunt, september 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Schakelpunt, oktober 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Schakelpunt, november 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Schakelpunt, december 2011
	clipboard = %clipboardold%
	return
}
STV11:
IfNotInString, clipboart, %STV%
{
	goto VBL11
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Steenvoorde, januari 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Steenvoorde, februari 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Steenvoorde, maart 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Steenvoorde, april 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Steenvoorde, mei 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Steenvoorde, juni 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Steenvoorde, juli 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Steenvoorde, augustus 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Steenvoorde, september 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Steenvoorde, oktober 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Steenvoorde, november 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Steenvoorde, december 2011
	clipboard = %clipboardold%
	return
}
VBL11:
IfNotInString, clipboart, %VBL%
{
	goto VBH11
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Vinckenborglaan, januari 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Vinckenborglaan, februari 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Vinckenborglaan, maart 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Vinckenborglaan, april 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Vinckenborglaan, mei 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Vinckenborglaan, juni 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Vinckenborglaan, juli 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Vinckenborglaan, augustus 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Vinckenborglaan, september 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Vinckenborglaan, oktober 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Vinckenborglaan, november 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Vinckenborglaan, december 2011
	clipboard = %clipboardold%
	return
}
VBH11:
IfNotInString, clipboart, %VBH%
{
	goto WKB11
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Vredenburch, januari 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Vredenburch, februari 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Vredenburch, maart 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Vredenburch, april 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Vredenburch, mei 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Vredenburch, juni 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Vredenburch, juli 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Vredenburch, augustus 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Vredenburch, september 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Vredenburch, oktober 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Vredenburch, november 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Vredenburch, december 2011
	clipboard = %clipboardold%
	return
}
WKB11:
IfNotInString, clipboart, %WKB%
{
	goto WHF11
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Wenckebach, januari 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Wenckebach, februari 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Wenckebach, maart 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Wenckebach, april 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Wenckebach, mei 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Wenckebach, juni 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Wenckebach, juli 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Wenckebach, augustus 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Wenckebach, september 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Wenckebach, oktober 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Wenckebach, november 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Wenckebach, december 2011
	clipboard = %clipboardold%
	return
}
WHF11:
IfNotInString, clipboart, %WHF%
{
	goto WBL11
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Westhoff, januari 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Westhoff, februari 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Westhoff, maart 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Westhoff, april 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Westhoff, mei 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Westhoff, juni 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Westhoff, juli 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Westhoff, augustus 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Westhoff, september 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Westhoff, oktober 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Westhoff, november 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Westhoff, december 2011
	clipboard = %clipboardold%
	return
}
WBL11:
IfNotInString, clipboart, %WBL%
{
	goto UTZ11
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Willem de Bijelaan, januari 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Willem de Bijelaan, februari 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Willem de Bijelaan, maart 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Willem de Bijelaan, april 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Willem de Bijelaan, mei 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Willem de Bijelaan, juni 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Willem de Bijelaan, juli 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Willem de Bijelaan, augustus 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Willem de Bijelaan, september 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Willem de Bijelaan, oktober 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Willem de Bijelaan, november 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Willem de Bijelaan, december 2011
	clipboard = %clipboardold%
	return
}
UTZ11:
IfNotInString, clipboart, %UTZ%
{
	goto LRS11
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Uitzicht, januari 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Uitzicht, februari 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Uitzicht, maart 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Uitzicht, april 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Uitzicht, mei 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Uitzicht, juni 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Uitzicht, juli 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Uitzicht, augustus 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Uitzicht, september 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Uitzicht, oktober 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Uitzicht, november 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Uitzicht, december 2011
	clipboard = %clipboardold%
	return
}


LRS11:
IfNotInString, clipboart, %LRS%
{
	goto end11
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Laurens Reaalstraat, januari 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Laurens Reaalstraat, februari 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Laurens Reaalstraat, maart 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Laurens Reaalstraat, april 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Laurens Reaalstraat, mei 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Laurens Reaalstraat, juni 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Laurens Reaalstraat, juli 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Laurens Reaalstraat, augustus 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Laurens Reaalstraat, september 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Laurens Reaalstraat, oktober 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Laurens Reaalstraat, november 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Laurens Reaalstraat, december 2011
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Laurens Reaalstraat, december 2011
	clipboard = %clipboardold%
	return
}
else 
msgbox Error 404 - Geen discipline gevonden`nDiscipline behoord als volgt te worden ingevult:`nFLO-ABC-A000 / (Omschrijving)
clipboard = %clipboardold%
return 



end11:
{
Msgbox Error 404, geen discipline gevonden
clipboard = %clipboardold%
return
}












