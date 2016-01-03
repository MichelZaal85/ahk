Tl := SubStr(Tinput, 5, 3)


ifinstring, clipboart, %ADG%
{
	Tl = Adegeest
	goto Tdiscipline
}
ifinstring, clipboart, %CHC%
{
	Tl = Coornhertcentrum
	goto Tdiscipline
}
ifinstring, clipboart, %GLT%
{
	Tl = Gewoon Lekker Thuis
	goto Tdiscipline
}
ifinstring, clipboart, %MTL%
{
	Tl = De Mantel
	goto Tdiscipline
}
ifinstring, clipboart, %DST%
{
	Tl = Duinstede
	goto Tdiscipline
}
ifinstring, clipboart, %GHS%
{
	Tl = Guldenhuis
	goto Tdiscipline
}
ifinstring, clipboart, %HRW%
{
	Tl = Hereweg
	goto Tdiscipline
}
ifinstring, clipboart, %HHG%
{
	Tl = Houthaghe
	goto Tdiscipline
}
ifinstring, clipboart, %JFR%
{
	Tl = Jonker Frans
	goto Tdiscipline
}
ifinstring, clipboart, %LVV%
{
	Tl = Laan van Vredenoord
	goto Tdiscipline
}
ifinstring, clipboart, %LVS%
{
	Tl = Loevestein
	goto Tdiscipline
}
ifinstring, clipboart, %LHF%
{
	Tl = Loosduinse Hof
	goto Tdiscipline
}
ifinstring, clipboart, %MHV%
{
	Tl = Mariahoeve
	goto Tdiscipline
}
ifinstring, clipboart, %MRR%
{
	Tl = Marterade
	goto Tdiscipline
}
ifinstring, clipboart, %MRP%
{
	Tl = Marienpark
	goto Tdiscipline
}
ifinstring, clipboart, %OSN%
{
	Tl = Oostduin
	goto Tdiscipline
}
ifinstring, clipboart, %ODB%
{
	Tl = Over de Boogaard
	goto Tdiscipline
}
ifinstring, clipboart, %SPT%
{
	Tl = Schakelpunt
	goto Tdiscipline
}
ifinstring, clipboart, %STV%
{
	Tl = Steenvoorde
	goto Tdiscipline
}
ifinstring, clipboart, %HHS%
{
	Tl = 't Hoflants Huys
	goto Tdiscipline
}
ifinstring, clipboart, %VBL%
{
	Tl = Vickenborglaan
	goto Tdiscipline
}
ifinstring, clipboart, %VBH%
{
	Tl = Vredenburch
	goto Tdiscipline
}
ifinstring, clipboart, %WKB%
{
	Tl = Wenckenbach
	goto Tdiscipline
}
ifinstring, clipboart, %WHF%
{
	Tl = Westhoff
	goto Tdiscipline
}
ifinstring, clipboart, %WDC%
{
	Tl = Wijdaelercentrum
	goto Tdiscipline
}
ifinstring, clipboart, %WBL%
{
	Tl = Willem de Bijelaan
	goto Tdiscipline
}
ifinstring, clipboart, %UTZ%
{
	Tl = Uitzicht
	goto Tdiscipline
}


IfNotInString, clipboart, %ADG%
{
	goto GLT
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Adegeest, januari 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}{end}{tab}01{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Adegeest, februari 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Adegeest, maart 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Adegeest, april 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Adegeest, mei 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Adegeest, juni 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Adegeest, juli 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Adegeest, augustus 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Adegeest, september 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Adegeest, oktober 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Adegeest, november 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Adegeest, december 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
GLT:
IfNotInString, clipboart, %GLT%
{
	goto DST
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht GLT, januari 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht GLT, februari 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht GLT, maart 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht GLT, april 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht GLT, mei 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht GLT, juni 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht GLT, juli 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht GLT, augustus 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht GLT, september 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht GLT, oktober 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht GLT, november 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht GLT, december 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
DST:
IfNotInString, clipboart, %DST%
{
	goto DKD
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Duinstede, januari 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Duinstede, februari 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Duinstede, maart 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Duinstede, april 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Duinstede, mei 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Duinstede, juni 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Duinstede, juli 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Duinstede, augustus 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Duinstede, september 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Duinstede, oktober 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Duinstede, november 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Duinstede, december 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
DKD:
IfNotInString, clipboart, %DKD%
{
	goto MTL
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Dekkersduin, januari 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Dekkersduin, februari 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Dekkersduin, maart 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Dekkersduin, april 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Dekkersduin, mei 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Dekkersduin, juni 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Dekkersduin, juli 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Dekkersduin, augustus 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Dekkersduin, september 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Dekkersduin, oktober 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Dekkersduin, november 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Dekkersduin, december 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
MTL:
IfNotInString, clipboart, %MTL%
{
	goto GHS
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht De Mantel, januari 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht De Mantel, februari 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht De Mantel, maart 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht De Mantel, april 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht De Mantel, mei 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht De Mantel, juni 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht De Mantel, juli 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht De Mantel, augustus 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht De Mantel, september 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht De Mantel, oktober 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht De Mantel, november 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht De Mantel, december 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
GHS:
IfNotInString, clipboart, %GHS%
{
	goto HHG
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Guldenhuis, januari 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Guldenhuis, februari 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Guldenhuis, maart 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Guldenhuis, april 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Guldenhuis, mei 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Guldenhuis, juni 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Guldenhuis, juli 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Guldenhuis, augustus 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Guldenhuis, september 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Guldenhuis, oktober 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Guldenhuis, november 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Guldenhuis, december 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
HHG:
IfNotInString, clipboart, %HHG%
{
	goto JFR
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Houthaghe, januari 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}{end}{tab}01{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Houthaghe, februari 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Houthaghe, maart 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Houthaghe, april 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Houthaghe, mei 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Houthaghe, juni 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Houthaghe, juli 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Houthaghe, augustus 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Houthaghe, september 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Houthaghe, oktober 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Houthaghe, november 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Houthaghe, december 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
JFR:
IfNotInString, clipboart, %JFR%
{
	goto LVS
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Jonker Frans, januari 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2014{tab 2}
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Jonker Frans, februari 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Jonker Frans, maart 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Jonker Frans, april 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Jonker Frans, mei 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Jonker Frans, juni 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Jonker Frans, juli 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Jonker Frans, augustus 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Jonker Frans, september 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Jonker Frans, oktober 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Jonker Frans, november 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Jonker Frans, december 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
LVS:
IfNotInString, clipboart, %LVS%
{
	goto LHF
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Loevenstein, januari 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2014{tab 2}
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Loevenstein, februari 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Loevenstein, maart 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Loevenstein, april 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Loevenstein, mei 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Loevenstein, juni 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Loevenstein, juli 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Loevenstein, augustus 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Loevenstein, september 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Loevenstein, oktober 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Loevenstein, november 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Loevenstein, december 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
LHF:
IfNotInString, clipboart, %LHF%
{
	goto LVV
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Loosduinsehof Hof, januari 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Loosduinsehof Hof, februari 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Loosduinse  Hof, maart 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Loosduinse Hof, april 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Loosduinse Hof, mei 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Loosduinse Hof, juni 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Loosduinse Hof, juli 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Loosduinse Hof, augustus 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Loosduinse Hof, september 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Loosduinse Hof, oktober 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Loosduinse Hof, november 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Loosduinse Hof, december 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
LVV:
IfNotInString, clipboart, %LVV%
{
	goto MHV
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Laan van Vredenoord, januari 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Laan van Vredenoord, februari 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Laan van Vredenoord, maart 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Laan van Vredenoord, april 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Laan van Vredenoord, mei 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Laan van Vredenoord, juni 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Laan van Vredenoord, juli 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Laan van Vredenoord, augustus 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Laan van Vredenoord, september 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Laan van Vredenoord, oktober 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Laan van Vredenoord, november 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Laan van Vredenoord, december 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
MHV:
IfNotInString, clipboart, %MHV%
{
	goto MRR
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Mariahoeve, januari 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2014{tab 2}
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Mariahoeve, februari 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Mariahoeve, maart 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Mariahoeve, april 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Mariahoeve, mei 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Mariahoeve, juni 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Mariahoeve, juli 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Mariahoeve, augustus 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Mariahoeve, september 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Mariahoeve, oktober 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Mariahoeve, november 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Mariahoeve, december 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
MRR:
IfNotInString, clipboart, %MRR%
{
	goto OSN
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Marterrade, januari 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Marterrade, februari 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Marterrade, maart 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Marterrade, april 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Marterrade, mei 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Marterrade, juni 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Marterrade, juli 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Marterrade, augustus 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Marterrade, september 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Marterrade, oktober 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Marterrade, november 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Marterrade, december 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
OSN:
IfNotInString, clipboart, %OSN%
{
	goto SPT
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Oostduin, januari 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Oostduin, februari 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Oostduin, maart 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Oostduin, april 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Oostduin, mei 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Oostduin, juni 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Oostduin, juli 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Oostduin, augustus 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Oostduin, september 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Oostduin, oktober 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Oostduin, november 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Oostduin, december 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
SPT:
IfNotInString, clipboart, %SPT%
{
	goto STV
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Schakelpunt, januari 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Schakelpunt, februari 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Schakelpunt, maart 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Schakelpunt, april 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Schakelpunt, mei 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Schakelpunt, juni 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Schakelpunt, juli 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Schakelpunt, augustus 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Schakelpunt, september 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Schakelpunt, oktober 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Schakelpunt, november 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Schakelpunt, december 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
STV:
IfNotInString, clipboart, %STV%
{
	goto STVWKK
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Steenvoorde, januari 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Steenvoorde, februari 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Steenvoorde, maart 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Steenvoorde, april 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Steenvoorde, mei 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Steenvoorde, juni 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Steenvoorde, juli 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Steenvoorde, augustus 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Steenvoorde, september 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Steenvoorde, oktober 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Steenvoorde, november 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Steenvoorde, december 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
STVWKK:
IfInString, clipboart, %WKKJAN%
{
	Send Overzicht functioneren en milieuvoordeel warmtekrachtinstallatie, januari 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %WKKFEB%
{
	Send Overzicht functioneren en milieuvoordeel warmtekrachtinstallatie, februari 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %WKKMRT%
{
	Send Overzicht functioneren en milieuvoordeel warmtekrachtinstallatie, maart 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %WKKAPR%
{
	Send Overzicht functioneren en milieuvoordeel warmtekrachtinstallatie, april 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %WKKMEI%
{
	Send Overzicht functioneren en milieuvoordeel warmtekrachtinstallatie, mei 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %WKKJUN%
{
	Send Overzicht functioneren en milieuvoordeel warmtekrachtinstallatie, juni 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %WKKJUL%
{
	Send Overzicht functioneren en milieuvoordeel warmtekrachtinstallatie, juli 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %WKKAUG%
{
	Send Overzicht functioneren en milieuvoordeel warmtekrachtinstallatie, augustus 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %WKKSEP%
{
	Send Overzicht functioneren en milieuvoordeel warmtekrachtinstallatie, september 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %WKKOKT%
{
	Send Overzicht functioneren en milieuvoordeel warmtekrachtinstallatie, oktober 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %WKKNOV%
{
	Send Overzicht functioneren en milieuvoordeel warmtekrachtinstallatie, november 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %WKKDEC%
{
	Send Overzicht functioneren en milieuvoordeel warmtekrachtinstallatie, 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
VBL:
IfNotInString, clipboart, %VBL%
{
	goto VBH
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Vinckenborglaan, januari 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Vinckenborglaan, februari 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Vinckenborglaan, maart 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Vinckenborglaan, april 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Vinckenborglaan, mei 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Vinckenborglaan, juni 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Vinckenborglaan, juli 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Vinckenborglaan, augustus 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Vinckenborglaan, september 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Vinckenborglaan, oktober 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Vinckenborglaan, november 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Vinckenborglaan, december 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
VBH:
IfNotInString, clipboart, %VBH%
{
	goto WKB
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Vredenburch, januari 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Vredenburch, februari 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Vredenburch, maart 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Vredenburch, april 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Vredenburch, mei 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Vredenburch, juni 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Vredenburch, juli 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Vredenburch, augustus 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Vredenburch, september 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Vredenburch, oktober 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Vredenburch, november 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Vredenburch, december 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
WKB:
IfNotInString, clipboart, %WKB%
{
	goto WHF
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Wenckebach, januari 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Wenckebach, februari 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Wenckebach, maart 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Wenckebach, april 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Wenckebach, mei 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Wenckebach, juni 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Wenckebach, juli 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Wenckebach, augustus 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Wenckebach, september 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Wenckebach, oktober 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Wenckebach, november 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Wenckebach, december 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
WHF:
IfNotInString, clipboart, %WHF%
{
	goto WBL
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Westhoff, januari 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Westhoff, februari 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Westhoff, maart 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Westhoff, april 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Westhoff, mei 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Westhoff, juni 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Westhoff, juli 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Westhoff, augustus 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Westhoff, september 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Westhoff, oktober 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Westhoff, november 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Westhoff, december 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
WBL:
IfNotInString, clipboart, %WBL%
{
	goto UTZ
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Willem de Bijelaan, januari 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Willem de Bijelaan, februari 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Willem de Bijelaan, maart 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Willem de Bijelaan, april 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Willem de Bijelaan, mei 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Willem de Bijelaan, juni 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Willem de Bijelaan, juli 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Willem de Bijelaan, augustus 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Willem de Bijelaan, september 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Willem de Bijelaan, oktober 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Willem de Bijelaan, november 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Willem de Bijelaan, december 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
UTZ:
IfNotInString, clipboart, %UTZ%
{
	goto LRS
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Uitzicht, januari 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Uitzicht, februari 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Uitzicht, maart 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Uitzicht, april 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Uitzicht, mei 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Uitzicht, juni 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Uitzicht, juli 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Uitzicht, augustus 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Uitzicht, september 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Uitzicht, oktober 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Uitzicht, november 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Uitzicht, december 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
LRS:
IfNotInString, clipboart, %LRS%
{
	goto ODB
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Laurens Reaalstraat, januari 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Laurens Reaalstraat, februari 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Laurens Reaalstraat, maart 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Laurens Reaalstraat, april 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Laurens Reaalstraat, mei 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Laurens Reaalstraat, juni 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Laurens Reaalstraat, juli 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Laurens Reaalstraat, augustus 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Laurens Reaalstraat, september 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Laurens Reaalstraat, oktober 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Laurens Reaalstraat, november 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Laurens Reaalstraat, december 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
ODB:
IfNotInString, clipboart, %ODB%
{
	goto HHS
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Over de Boogaard, januari 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Over de Boogaard, februari 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Over de Boogaard, maart 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Over de Boogaard, april 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Over de Boogaard, mei 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Over de Boogaard, juni 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Over de Boogaard, juli 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Over de Boogaard, augustus 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Over de Boogaard, september 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Over de Boogaard, oktober 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Over de Boogaard, november 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Over de Boogaard, december 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
HHS:
IfNotInString, clipboart, %HHS%
{
		goto Skiped
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht 't Hoflants Huys, januari 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht 't Hoflants Huys, februari 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht 't Hoflants Huys, maart 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht 't Hoflants Huys, april 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht 't Hoflants Huys, mei 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht 't Hoflants Huys, juni 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht 't Hoflants Huys, juli 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht 't Hoflants Huys, augustus 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht 't Hoflants Huys, september 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht 't Hoflants Huys, oktober 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht 't Hoflants Huys, november 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht 't Hoflants Huys, december 2014
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2014{tab 2}
	clipboard = %clipboardold%
	Return
}