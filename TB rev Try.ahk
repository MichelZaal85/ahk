;Update
^!\::


varB = %clipboard%
varD := SubStr(varB, 4, 3)
;-------------------------------------------------------------------------------------------------------------------------;
B1 = B1
B2 = B2
B3 = B3
B4 = B4
B5 = B5
B6 = B6
B7 = B7
B8 = B8

IfInString, varD, %B1%
{
	varD = Bouwkundige plattegrond, 
	goto verdieping
	Return
}
IfInString, varD, %B2%
{
	varD = Bouwkundige gevelaanzichten, 
	goto eindberekening
	Return
}
IfInString, varD, %B3%
{
	varD = Bouwkundige doorsneden, doorsnede 
	goto eindberekening
	Return
}
IfInString, varD, %B4%
{
	varD = Bouwkundige details, detail 
	goto eindberekening
	Return
}
IfInString, varD, %B5%
{
	varD = Bouwkundige plattegrond, interieur 
	goto verdieping
	Return
}
IfInString, varD, %B6%
{
	varD = Bouwkundige sparingen, 
	goto verdieping
	Return
}
IfInString, varD, %B7%
{
	varD = Bouwkundige constructie, 
	goto verdieping
	Return
}
IfInString, varD, %B8%
{
	varD = Bouwkundige plattegrond, plafond 
	goto verdieping
	Return
}
A1 = A1
A2 = A2
A3 = A3
A4 = A4
IfInString, varD, %A1%
{
	varD = Bliksem/Aardingsinstallatie, plattegrond 
	goto verdieping
	Return
}
IfInString, varD, %A2%
{
	varD = Bliksem/Aardingsinstallatie, blokschema 
	goto verdieping
	Return
}
IfInString, varD, %A3%
{
	varD = Bliksem/Aardingsinstallatie, principeschema 
	goto verdieping
	Return
}
IfInString, varD, %A4%
{
	varD = Bliksem/Aardingsinstallatie, details 
	goto verdieping
	Return
}
E1 = E1
E2 = E2
E3 = E3
E4 = E4
E5 = E5
E6 = E6
E7 = E7
E8 = E8
IfInString, varD, %E1%
{
	varD = Elektrotechnische installatie t.b.v. licht en krachtinstallatie, plattegrond 
	goto verdieping
	Return
}
IfInString, varD, %E2%
{
	varD = Elektrotechnische installatie t.b.v. zwakstroominstallatie plattegrond 
	goto verdieping
	Return
}
IfInString, varD, %E3%
{
	varD = Elektrotechnische installatie, installatieschema verdeelkast 
	goto verdieping
	Return
}
IfInString, varD, %E4%
{
	varD = Elektrotechnische installatie, groepenverklaring verdeelkast 
	goto verdieping
	Return
}
IfInString, varD, %E5%
{
	varD = Elektrotechnische installatie, blokschema 
	goto verdieping
	Return
}
IfInString, varD, %E6%
{
	varD = Elektrotechnische installatie, stuurstroomschema verdeelkast 
	goto verdieping
	Return
}
IfInString, varD, %E7%
{
	varD = Elektrotechnische installatie, principeschema 
	goto verdieping
	Return
}
IfInString, varD, %E8%
{
	varD = Elektrotechnische installatie, detail 
	goto verdieping
	Return
}
D1 = D1
D2 = D2
D3 = D3
D4 = D4
IfInString, varD, %D1%
{
	varD = Data installatie, plattegrond 
	goto verdieping
	Return
}
IfInString, varD, %D2%
{
	varD = Data installatie, blokschema 
	goto verdieping
	Return
}
IfInString, varD, %D3%
{
	varD = Data installatie, principeschema 
	goto verdieping
	Return
}
IfInString, varD, %D4%
{
	varD = Data installatie, detail 
	goto verdieping
	Return
}
W1 = W1
W2 = W2
W3 = W3
W4 = W4
W5 = W5
IfInString, varD, %W1%
{
	varD = Werktuigbouwkundige installatie t.b.v. klimaat installatie, plattegrond 
	goto verdieping
	Return
}
IfInString, varD, %W2%
{
	varD = Werktuigbouwkundige installatie t.b.v. sanitair installatie, plattegrond 
	goto verdieping
	Return
}
IfInString, varD, %W3%
{
	varD = Werktuigbouwkundige gasinstallatie, 
	goto verdieping
	Return
}
IfInString, varD, %W4%
{
	varD = Werktuigbouwkundige installatie, principeschema 
	goto verdieping
	Return
}
VP1 = VP1
VP2 = VP2
VP3 = VP3
VP4 = VP4
IfInString, varD, %VP1%
{
	varD = Verpleegkundig oproepsysteem, plattegrond 
	goto verdieping
	Return
}
IfInString, varD, %VP2%
{
	varD = Verpleegkundig oproepsysteem, blokschema 
	goto verdieping
	Return
}
IfInString, varD, %VP3%
{
	varD = Verpleegkundig oproepsysteem, principeschema 
	goto verdieping
	Return
}
IfInString, varD, %VP4%
{
	varD = Verpleegkundig oproepsysteem, detail 
	goto verdieping
	Return
}
BM1 = BM1
BM2 = BM2
BM3 = BM3
BM4 = BM4
IfInString, varD, %BM1%
{
	varD = Brandmeldinstallatie, plattegrond 
	goto verdieping
	Return
}
IfInString, varD, %BM2%
{
	varD = Brandmeldinstallatie, blokschema 
	goto verdieping
	Return
}
IfInString, varD, %BM3%
{
	varD = Brandmeldinstallatie, principeschema 
	goto verdieping
	Return
}
IfInString, varD, %BM4%
{
	varD = Brandmeldinstallatie, detail 
	goto verdieping
	Return
}
V = V
IfInString, varD, %V%
{
	varD = Vluchtplan 
	setdwg = 0
	goto verdieping
	Return
}


; ------------------- Verdieping ---------------------------;
verdieping:

K1 = K1
K2 = K2
0F = 0F
KR = KR
00 = 00
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

varT := SubStr(varB, 5, 4)

IfInString, varT, %K2%
{
	varF = kelder -2
	goto eindberekening
	Return
}
IfInString, varT, %K1%
{
	varF = kelder -1
	goto eindberekening
	Return
}
IfInString, varT, %0F%
{
	varF = fundering
	goto eindberekening
	Return
}IfInString, varT, %KR%
{
	varF = kruipruimte
	goto eindberekening
	Return
}IfInString, varT, %00%
{
	varF = begane grond
	goto eindberekening
	Return
}IfInString, varT, %01%
{
	varF = 1e verdieping
	goto eindberekening
	Return
}IfInString, varT, %02%
{
	varF = 2e verdieping
	goto eindberekening
	Return
}IfInString, varT, %03%
{
	varF = 3e verdieping
	goto eindberekening
	Return
}IfInString, varT, %04%
{
	varF = 4e verdieping
	goto eindberekening
	Return
}IfInString, varT, %05%
{
	varF = 5e verdieping
	goto eindberekening
	Return
}IfInString, varT, %06%
{
	varF = 6e verdieping
	goto eindberekening
	Return
}IfInString, varT, %07%
{
	varF = 7e verdieping
	goto eindberekening
	Return
}IfInString, varT, %08%
{
	varF = 8e verdieping
	goto eindberekening
	Return
}IfInString, varT, %09%
{
	varF = 9e verdieping
	goto eindberekening
	Return
}IfInString, varT, %10%
{
	varF = 10e verdieping
	goto eindberekening
	Return
}IfInString, varT, %11%
{
	varF = 11e verdieping
	goto eindberekening
	Return
}IfInString, varT, %12%
{
	varF = 12e verdieping
	goto eindberekening
	Return
}IfInString, varT, %13%
{
	varF = 13e verdieping
	goto eindberekening
	Return
}IfInString, varT, %14%
{
	varF = 14e verdieping
	goto eindberekening
	Return
}IfInString, varT, %15%
{
	varF = 15e verdieping
	goto eindberekening
	Return
}IfInString, varT, %16%
{
	varF = 16e verdieping
	goto eindberekening
	Return
}IfInString, varT, %17%
{
	varF = 17e verdieping
	goto eindberekening
	Return
}IfInString, varT, %18%
{
	varF = 18e verdieping
	goto eindberekening
	Return
}IfInString, varT, %19%
{
	varF = 19e verdieping
	goto eindberekening
	Return
}IfInString, varT, %20%
{
	varF = 20e verdieping
	goto eindberekening
	Return
}IfInString, varT, %21%
{
	varF = 21e verdieping
	goto eindberekening
	Return
}IfInString, varT, %22%
{
	varF = 22e verdieping
	goto eindberekening
	Return
}IfInString, varT, %23%
{
	varF = 23e verdieping
	goto eindberekening
	Return
}IfInString, varT, %24%
{
	varF = 24e verdieping
	goto eindberekening
	Return
}IfInString, varT, %25%
{
	varF = 25e verdieping
	goto eindberekening
	Return
}IfInString, varT, %T0%
{
	varF = tussen verdieping BG en 1e verdieping
	goto eindberekening
	Return
}IfInString, varT, %T1%
{
	varF = tussen verdieping 1e en 2e verdieping
	goto eindberekening
	Return
}IfInString, varT, %TR%
{
	varF = terrein
	goto eindberekening
	Return
}

;Start berekening
eindberekening:
varE = %varD%%varF%
msgbox, 16, Bugtracking, Berekende waarde is:`n %varE% 




