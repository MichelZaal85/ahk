;───────────────────────────────────────────────────────────────────────────────; 
;Test 
/*
	FLO-AAA-B100
	E102
	W500
	BM200
*/
;───────────────────────────────────────────────────────────────────────────────; 
clipboart = %clipboard%
ClipWait
{
	msgbox Clipboard bevat geen informatie
	exitapp 
}
if clipboard > 5
{
	clipboart := SubStr(clipboart, 8, 5)
}
;───────────────────────────────────────────────────────────────────────────────; 
B1 = B1
B2 = B2
B3 = B3
B4 = B4
B5 = B5
B6 = B6
B7 = B7
B8 = B8
B9 = B9
if clipboart <> ""
{
	IfInString, clipboart, %B1%
	{
		discipline = Bouwkundige plattegrond, 
		goto verdieping
	}
	IfInString, clipboart, %B2%
	{
		send Bouwkundige gevelaanzichten, 
		clipboard = %clipboardold%
		return
	}
	IfInString, clipboart, %B3%
	{
		send Bouwkundige doorsneden, doorsnede
		clipboard = %clipboardold%
		return
	}
	IfInString, clipboart, %B4%
	{
		send Bouwkundige details, detail
		clipboard = %clipboardold%
		return
	}
	IfInString, clipboart, %B5%
	{
		discipline = Bouwkundige plattegrond, interieur
		goto verdieping
	}
	IfInString, clipboart, %B6%
	{
		send Bouwkundige sparingen,
		clipboard = %clipboardold%
		return
	}
	IfInString, clipboart, %B7%
	{
		send Bouwkundige constructie,
		clipboard = %clipboardold%
		return
	}
	IfInString, clipboart, %B8%
	{
		discipline = Bouwkundige plattegrond, plafond 
		goto verdieping
	}
	IfInString, clipboart, %B9%
	{
		discipline = Brandcompartimentering, plattegrond 
		goto verdieping
	}
	;───────────────────────────────────────────────────────────────────────────────; 
	A1 = A1
	A2 = A2
	A3 = A3
	A4 = A4
	IfInString, clipboart, %A1%
	{
		discipline = Bliksem/Aardingsinstallatie, plattegrond 
		goto verdieping
	}
	IfInString, clipboart, %A2%
	{
		send Bliksem/Aardingsinstallatie, blokschema
		clipboard = %clipboardold%
		return
	}
	IfInString, clipboart, %A3%
	{
		send Bliksem/Aardingsinstallatie, principeschema
		clipboard = %clipboardold%
		return
	}
	IfInString, clipboart, %A4%
	{
		send Bliksem/Aardingsinstallatie, detail
		clipboard = %clipboardold%
		return
	}
	;───────────────────────────────────────────────────────────────────────────────; 
	E1 = E1
	E2 = E2
	E3 = E3
	E4 = E4
	E5 = E5
	E6 = E6
	E7 = E7
	E8 = E8
	IfInString, clipboart, %E1%
	{
		discipline = Elektrotechnische installatie t.b.v. licht en krachtinstallatie, plattegrond 
		goto verdieping
	}
	IfInString, clipboart, %E2%
	{
		discipline = Elektrotechnische installatie t.b.v. zwakstroominstallatie plattegrond 
		goto verdieping
	}
	IfInString, clipboart, %E3%
	{
		send Elektrotechnische installatie, installatieschema verdeelkast
		Send {shiftdown}{tab 2}{shiftup}{home}{right 11}{shiftdown}{right 5}{shiftup}{ctrldown}c{ctrlup}{tab 2}{end}{space}{ctrldown}v{ctrlup}
		clipboard = %clipboardold%
		Return
	}
	IfInString, clipboart, %E4%
	{
		send Elektrotechnische installatie, groepenverklaring verdeelkast
		Send {shiftdown}{tab 2}{shiftup}{home}{right 11}{shiftdown}{right 5}{shiftup}{ctrldown}c{ctrlup}{tab 2}{end}{space}{ctrldown}v{ctrlup}
		clipboard = %clipboardold%
		Return
	}
	IfInString, clipboart, %E5%
	{
		send Elektrotechnische installatie, blokschema
		clipboard = %clipboardold%
		return
	}
	IfInString, clipboart, %E6%
	{
		send Elektrotechnische installatie, stuurstroomschema verdeelkast
		clipboard = %clipboardold%
		return
	}
	IfInString, clipboart, %E7%
	{
		send Elektrotechnische installatie, principeschema
		clipboard = %clipboardold%
		return
	}
	IfInString, clipboart, %E8%
	{
		send Elektrotechnische installatie, detail
		clipboard = %clipboardold%
		return
	}
	;───────────────────────────────────────────────────────────────────────────────; 
	D1 = D1
	D2 = D2
	D3 = D3
	D4 = D4
	IfInString, clipboart, %D1%
	{
		discipline = Data installatie, 
		goto verdieping
	}
	IfInString, clipboart, %D2%
	{
		send Data installatie, blokschema
		clipboard = %clipboardold%
		return
	}
	IfInString, clipboart, %D3%
	{
		send Data installatie, principeschema
		clipboard = %clipboardold%
		return 
	}
	IfInString, clipboart, %D4%
	{
		send Data installatie, detail
		clipboard = %clipboardold%
		return 
	}
	;───────────────────────────────────────────────────────────────────────────────; 
	W1 = W1
	W2 = W2
	W3 = W3
	W4 = W4
	W5 = W5
	IfInString, clipboart, %W1%
	{
		discipline = Werktuigbouwkundige installatie t.b.v. klimaat installatie, plattegrond
		goto verdieping
	}
	IfInString, clipboart, %W2%
	{
		discipline = Werktuigbouwkundige installatie t.b.v. sanitair installatie, plattegrond 
		goto verdieping
	}
	IfInString, clipboart, %W3%
	{
		send Werktuigbouwkundige gasinstallatie,
		clipboard = %clipboardold%
		return
	}
	IfInString, clipboart, %W4%
	{
		send Werktuigbouwkundige installatie, principeschema
		clipboard = %clipboardold%
		return
	}
	IfInString, clipboart, %W5%
	{
		send Werktuigbouwkundige installatie, detail
		clipboard = %clipboardold%
		return
	}
	;───────────────────────────────────────────────────────────────────────────────; 
	VP1 = VP1
	VP2 = VP2
	VP3 = VP3
	VP4 = VP4
	IfInString, clipboart, %VP1%
	{
		discipline = Verpleegkundig oproepsysteem, plattegrond 
		goto verdieping
	}
	IfInString, clipboart, %VP2%
	{
		send Verpleegkundig oproepsysteem, blokschema
		clipboard = %clipboardold%
		return
	}
	IfInString, clipboart, %VP3%
	{
		send Verpleegkundig oproepsysteem, principeschema
		clipboard = %clipboardold%
		return
	}
	IfInString, clipboart, %VP4%
	{
		send Verpleegkundig oproepsysteem, detail
		clipboard = %clipboardold%
		return
	}
	;───────────────────────────────────────────────────────────────────────────────; 
	BM1 = BM1
	BM2 = BM2
	BM3 = BM3
	BM4 = BM4
	IfInString, clipboart, %BM1%
	{
		discipline = Brandmeldinstallatie, plattegrond 
		goto verdieping
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
	;───────────────────────────────────────────────────────────────────────────────; 
	L1 = L1
	IfInString, clipboart, %L1%
	{
		discipline = Werktuigbouwkundige plattegrond t.b.v. Legionella, 
		goto verdieping
	}
	;───────────────────────────────────────────────────────────────────────────────; 
	S1 = S1
	S2 = S2
	S3 = S3
	S4 = S4
	IfInString, clipboart, %S1%
	{
		discipline = Sprinkerinstallatie, plattegrond 
		goto verdieping
	}
	IfInString, clipboart, %S2%
	{
		Send Sprinkerinstallatie, blokschema
		clipboard = %clipboardold%
		return
	}
	IfInString, clipboart, %S3%
	{
		Send Sprinkerinstallatie, principeschema
		clipboard = %clipboardold%
		return
	}
	IfInString, clipboart, %S4%
	{
		Send Sprinkerinstallatie, detail
		clipboard = %clipboardold%
		return
	}
	;───────────────────────────────────────────────────────────────────────────────; 
	G1 = G1
	ifinstring, clipboart, %G1%
	{
		discipline = Gebruiksvergunning, plattegrond
		goto verdieping
	}
	;───────────────────────────────────────────────────────────────────────────────; 
/* 	
IfInString, clipboart, %T1%
	{
		msgbox %clipboart%
		discipline = Transportinstallatie, plattegrond
		goto verdieping
	}
	IfInString, clipboart, %T2%
	{
		Send Transportinstallatie, blokschema
		clipboard = %clipboardold%
		return
	}
	IfInString, clipboart, %T3%
	{
		Send Transportinstallatie, principeschema
		clipboard = %clipboardold%
		return
	}
	IfInString, clipboart, %T4%
	{
		Send Transportinstallatie, detail
		clipboard = %clipboardold%
		return
	} 
*/
	;───────────────────────────────────────────────────────────────────────────────; 
	V = V
	IfnotInString, clipboart, %V%
	{
		goto end
	}
	;───────────────────────────────────────────────────────────────────────────────; 
	discipline = Vluchtplan 
	IfInString, Vnumber, %01%
	{
		Vnumber = 1,
		goto Vfloor
	}
	IfInString, Vnumber, %02%
	{
		Vnumber = 2,
		goto Vfloor
	}
	IfInString, Vnumber, %03%
	{
		Vnumber = 3,
		goto Vfloor
	}
	IfInString, Vnumber, %04%
	{
		Vnumber = 4,
		goto Vfloor
	}
	IfInString, Vnumber, %05%
	{
		Vnumber = 5,
		goto Vfloor
	}
	IfInString, Vnumber, %06%
	{
		Vnumber = 6,
		goto Vfloor
	}
	IfInString, Vnumber, %07%
	{
		Vnumber = 7,
		goto Vfloor
	}
	IfInString, Vnumber, %08%
	{
		Vnumber = 8,
		goto Vfloor
	}
	IfInString, Vnumber, %09%
	{
		Vnumber = 9,
		goto Vfloor
	}
	IfInString, Vnumber, %10%
	{
		Vnumber = 10,
		goto Vfloor
	}
	IfInString, Vnumber, %11%
	{
		Vnumber = 11,
		goto Vfloor
	}
	IfInString, Vnumber, %12%
	{
		Vnumber = 12,
		goto Vfloor
	}
	IfInString, Vnumber, %13%
	{
		Vnumber = 13,
		goto Vfloor
	}
	IfInString, Vnumber, %14%
	{
		Vnumber = 14,
		goto Vfloor
	}
	IfInString, Vnumber, %15%
	{
		Vnumber = 15,
		goto Vfloor
	}
	IfInString, Vnumber, %16%
	{
		Vnumber = 16,
		goto Vfloor
	}
	IfInString, Vnumber, %17%
	{
		Vnumber = 17,
		goto Vfloor
	}
	IfInString, Vnumber, %18%
	{
		Vnumber = 18,
		goto Vfloor
	}
	IfInString, Vnumber, %19%
	{
		Vnumber = 19,
		goto Vfloor
	}
	IfInString, Vnumber, %20%
	{
		Vnumber = 20,
		goto Vfloor
	}
	IfInString, Vnumber, %21%
	{
		Vnumber = 21,
		goto Vfloor
	}
	IfInString, Vnumber, %22%
	{
		Vnumber = 22,
		goto Vfloor
	}
	IfInString, Vnumber, %23%
	{
		Vnumber = 23,
		goto Vfloor
	}
	IfInString, Vnumber, %24%
	{
		Vnumber = 24,
		goto Vfloor
	}
	IfInString, Vnumber, %25%
	{
		Vnumber = 25,
		goto Vfloor
	}
	IfInString, Vnumber, %26%
	{
		Vnumber = 26,
		goto Vfloor
	}
	IfInString, Vnumber, %27%
	{
		Vnumber = 27,
		goto Vfloor
	}
	IfInString, Vnumber, %28%
	{
		Vnumber = 28,
		goto Vfloor
	}
	IfInString, Vnumber, %29%
	{
		Vnumber = 29,
		goto Vfloor
	}
	IfInString, Vnumber, %30%
	{
		Vnumber = 30,
		goto Vfloor
	}
	;───────────────────────────────────────────────────────────────────────────────; 
	Vfloor:
	IfInString, Vfloor, %V01%
	{
		Vfloor = 1e verdieping	
		goto Vvlucht
	}
	IfInString, Vfloor, %V02%
	{
		Vfloor = 2e verdieping	
		goto Vvlucht
	}
	IfInString, Vfloor, %V03%
	{
		Vfloor = 3e verdieping	
		goto Vvlucht
	}
	IfInString, Vfloor, %V04%
	{
		Vfloor = 4e verdieping	
		goto Vvlucht
	}
	IfInString, Vfloor, %V05%
	{
		Vfloor = 5e verdieping	
		goto Vvlucht
	}
	IfInString, Vfloor, %V06%
	{
		Vfloor = 6e verdieping	
		goto Vvlucht
	}
	IfInString, Vfloor, %V07%
	{
		Vfloor = 7e verdieping	
		goto Vvlucht
	}
	IfInString, Vfloor, %V08%
	{
		Vfloor = 8e verdieping	
		goto Vvlucht
	}
	IfInString, Vfloor, %V09%
	{
		Vfloor = 9e verdieping	
		goto Vvlucht
	}
	IfInString, Vfloor, %V10%
	{
		Vfloor = 10e verdieping	
		goto Vvlucht
	}
	IfInString, Vfloor, %V11%
	{
		Vfloor = 11e verdieping	
		goto Vvlucht
	}
	IfInString, Vfloor, %V12%
	{
		Vfloor = 12e verdieping	
		goto Vvlucht
	}
	IfInString, Vfloor, %V13%
	{
		Vfloor = 13e verdieping	
		goto Vvlucht
	}
	IfInString, Vfloor, %V14%
	{
		Vfloor = 14e verdieping	
		goto Vvlucht
	}
	IfInString, Vfloor, %V15%
	{
		Vfloor = 15e verdieping	
		goto Vvlucht
	}
	IfInString, Vfloor, %V16%
	{
		Vfloor = 16e verdieping	
		goto Vvlucht
	}
	IfInString, Vfloor, %V17%
	{
		Vfloor = 17e verdieping	
		goto Vvlucht
	}
	IfInString, Vfloor, %V18%
	{
		Vfloor = 18e verdieping	
		goto Vvlucht
	}
	IfInString, Vfloor, %V19%
	{
		Vfloor = 19e verdieping	
		goto Vvlucht
	}
	IfInString, Vfloor, %V20%
	{
		Vfloor = 20e verdieping	
		goto Vvlucht
	}
	;───────────────────────────────────────────────────────────────────────────────; 
	Vvlucht:
	Veinde = %discipline% %Vnumber% %Vfloor%
	send %Veinde%
	send {tab}A3{tab}{space}{tab}{space}{tab}
	return
	;───────────────────────────────────────────────────────────────────────────────; 
}
else 
{
	msgbox Geen Correcte Invoer Ontvangen...
	return
}
;───────────────────────────────────────────────────────────────────────────────; 
verdieping:
K1 = K1
0F = 0F
1 = 1
2 = 2
01 = 01
02 = 02
03 = 03
04 = 04
05 = 05
06 = 06
07 = 07
08 = 08
09 = 09
10 = 10
11 = 11
12 = 12
13 = 13
14 = 14
15 = 15
16 = 16
17 = 17
18 = 18
19 = 19
20 = 20
21 = 21
22 = 22
23 = 23
24 = 24
25 = 25
IfInString, clipboart, %00%
{
	verdieping = begane grond
	goto eind
}
IfInString, clipboart, %01%
{
	verdieping = 1e verdieping
	goto eind
}
IfInString, clipboart, %02%
{
	verdieping = 2e verdieping
	goto eind
}
IfInString, clipboart, %03%
{
	verdieping = 3e verdieping
	goto eind
}
IfInString, clipboart, %04%
{
	verdieping = 4e verdieping
	goto eind
}
IfInString, clipboart, %05%
{
	verdieping = 5e verdieping
	goto eind
}
IfInString, clipboart, %06%
{
	verdieping = 6e verdieping
	goto eind
}
IfInString, clipboart, %07%
{
	verdieping = 7e verdieping
	goto eind
}
IfInString, clipboart, %08%
{
	verdieping = 8e verdieping
	goto eind
}
IfInString, clipboart, %09%
{
	verdieping = 9e verdieping
	goto eind
}
IfInString, clipboart, %10%
{
	verdieping = 10e verdieping
	goto eind
}
IfInString, clipboart, %11%
{
	verdieping = 11e verdieping
	goto eind
}
IfInString, clipboart, %12%
{
	verdieping = 12e verdieping
	goto eind
}
IfInString, clipboart, %13%
{
	verdieping = 13e verdieping
	goto eind
}
IfInString, clipboart, %14%
{
	verdieping = 14e verdieping
	goto eind
}
IfInString, clipboart, %15%
{
	verdieping = 15e verdieping
	goto eind
}
IfInString, clipboart, %16%
{
	verdieping = 16e verdieping
	goto eind
}
IfInString, clipboart, %17%
{
	verdieping = 17e verdieping
	goto eind
}
IfInString, clipboart, %18%
{
	verdieping = 18e verdieping
	goto eind
}
IfInString, clipboart, %19%
{
	verdieping = 19e verdieping
	goto eind
}
IfInString, clipboart, %20%
{
	verdieping = 20e verdieping
	goto eind
}
;───────────────────────────────────────────────────────────────────────────────; 
maand:
Jan = Jan
Feb = Feb
Mrt = Mrt
Apr = Apr
Mei = Mei
Jun = Jun
Jul = Jul
Aug = Aug
Sep = Sep
Okt = Okt
Nov = Nov
Dec = Dec
01 = Jan
02 = Feb
03 = Mrt
04 = Apr
05 = Mei
06 = Jun
07 = Jul
08 = Aug
09 = Sep
10 = Okt
11 = Nov
12 = Dec
IfInString, clipboart, %Jan%
{
	month = januari
	return
}
; X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X ;
else 
{ 
	Msgbox *Error*`nEinde berekening?!
}
; X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X ;
;───────────────────────────────────────────────────────────────────────────────; 
;───────────────────────────────────────────────────────────────────────────────; 
eind:
x = %discipline% %verdieping%
msgbox %x%
;send %x%
return 
;───────────────────────────────────────────────────────────────────────────────; 
end:
Msgbox Geen invoer gevonden: `n %clipboard%
exitapp
;───────────────────────────────────────────────────────────────────────────────; 
