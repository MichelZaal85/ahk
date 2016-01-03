/*

WinWait, Frontpage - Google Chrome,
IfWinNotActive, Frontpage - Google Chrome, , WinActivate, Frontpage - Google Chrome,
WinWaitActive, Frontpage - Google Chrome,
MouseClick, left,  1182,  401
clipboardold = %clipboardall%

Send {ctrldown}ac{ctrlup}
clipboart = %clipboard%
noclipboart = %clipboard%
yesclipboart = %clipboard% 
noentry = --
first := substr(noclipboart, 1, 3)
cutclipboart := substr(noclipboart, 4, 3)	

	




IfInString, cutclipboart, %noentry%
{
	InputBox, inputclipboart, *error*, Geef gebouwcode in:,,180,120,,,,,
	Stringreplace, completeclipboart, yesclipboart, --, -%inputclipboart%-,
	clipboart = %completeclipboart%
	clipboard = %completeclipboart%
;	Send {ctrldown}av{ctrlup}
}


*/






WinWait, Frontpage - Google Chrome,
IfWinNotActive, Frontpage - Google Chrome, , WinActivate, Frontpage - Google Chrome,
WinWaitActive, Frontpage - Google Chrome,
MouseClick, left,  1182,  401
clipboardold = %clipboardall%

Send {ctrldown}ac{ctrlup}
DocOrigineel = %clipboard%
varC = %clipboard%
varG := SubStr(varC, 5, 3)
varD := SubStr(varC, 9, 10)

FLO = FLO
DPC = DPC
RND = RND
VOH = VOH

IfInString, varC, %FLO%
{
	IfInString, VarG, %B1%{
		DWGFLAG = 1
		}
	send {tab}
	goto labFLO
	Return
}
IfInString, varC, %DPC%
{
	DWGFLAG = 1
	goto labDPC
	Return
}
IfInString, varC, %RND%
{
	goto labRND
	Return
} Else { 
	MouseClick, left,  984,  401 
	Sleep 200
	clipboard = 
	Send {ctrldown}ac{ctrlup}
	varC = %clipboard%
	varG := SubStr(varC, 5, 3)
}
IfInString, varC, %FLO%
{
	IfInString, VarG, %B1%{
		DWGFLAG = 1
		}
	send {tab}
	goto labFLO
	Return
}
IfInString, varC, %DPC%
{
	DWGFLAG = 1
	send {tab}
	goto labDPC
	Return
}
IfInString, varC, %RND%
{
	varC = 1
	send {tab}
	goto labRND
	Return
} else {
	MsgBox, 262192, *error*, Geen Opdrachtgever gevonden :(
	return
} 


labFLO:
ADG = ADG
CMMS = CMMS
MTL = MTL
DST = DST
DKD = DKD
GHS = GHS
HHG = HHG
JFR = JFR
LVS = LVS
LVV = LVV
GBK = GKB
LHF = LHF
LRS = LRS
MHV = MHV
MRR = MRR
OSN = OSN
SPT = SPT
STV = STV
UTZ = UTZ
VBL = VBL
VBH = VBH
WKB = WKB
WHF = WHF
WBL = WBL
ODB = ODB
MRP = MRP

IfInString, varG, %ADG%
{
	Gcode = Adegeest
	goto labD
}
IfInString, varG, %MTL%
{
	Gcode = De Mantel
	goto labD
}
IfInString, varG, %DKD%
{
	Gcode = Dekkersduin
	goto labD
}
IfInString, varG, %DST%
{
	Gcode = Duinstede
	goto labD
}
IfInString, varG, %GHS%
{
	Gcode = GUldenhuis
	goto labD
}
IfInString, varG, %HHG%
{
	Gcode = Houthaghe
	goto labD
}
IfInString, varG, %JFR%
{
	IfInString, varC, %JFR-WZL% {
		Gcode = Jonker Frans WZL
		goto labD
	}
	Gcode = Jonker Frans
	goto labD
}
IfInString, varG, %CMMS%
{
	Gcode = Klopperman
	goto labD
}
IfInString, varG, %LVV%
{
	Gcode = Laan van Vredenoord
	goto labD
}
IfInString, varG, %LRS%
{
	Gcode = Laurens Reaalstraat
	goto labD
}
IfInString, varG, %LVS%
{
	Gcode = Loevestein
	goto labD
}
IfInString, varG, %LHF%
{
	Gcode = Loosduinse Hof
	goto labD
}
IfInString, varG, %MHV%
{
	Gcode = Mariahoeve
	goto labD
}
IfInString, varG, %MRR%
{
	Gcode = Marterade
	goto labD
}
IfInString, varG, %OSN%
{
	Gcode = Oostduin
	goto labD
}
IfInString, varG, %ODB%
{
	Gcode = Over de Boogaard
	goto labD
}
IfInString, varG, %SPT%
{
	Gcode = Schakelpunt
	goto labD
}
IfInString, varG, %STV%
{
	STVWKK = STV-WKK
	IfInString, varC, %STVWKK%
	{
		varDc = WKK
		goto labT
	}
	Gcode = Steenvoorde
	goto labD
}
IfInString, varG, %UTZ%
{
	Gcode = Uitzicht
	goto labD
}
IfInString, varG, %VBL%
{
	Gcode = Vincenborghlaan
	goto labD
}
IfInString, varG, %VBH%
{
	Gcode = Vredenburch
	goto labD
}
IfInString, varG, %WKB%
{
	Gcode = Wenckenbach
	goto labD
}
IfInString, varG, %WHF%
{
	Gcode = Westhoff
	goto labD
}
IfInString, varG, %WBL%
{
	Gcode = Willem de Bijelaan
	goto labD
}
IfInString, varG, %MRP%
{
	Gcode = Marienpark
	goto labD
}
IfInString, varG, %OSD%
{
	MsgBox, 262192, *error*, *OSD* is komen te vervallen!`nNieuwe Gcode is OSN
	; Replace string
	Gcode = Oostduin
	goto labD
} else {
	MsgBox, 262192, *error*, Geen Gebouwcode gevonden`nvarG: %varG%
}

labRND:
AS = AS
BN = BN
KL = KL
RD = RD
RL = RL
VL = VL
WS = WS

IfInString, varG, %AS%
{
	Gcode = 
	goto labD
}
IfInString, varG, %BN%
{
	Gcode = 
	goto labD
}
IfInString, varG, %KL%
{
	Gcode = 
	goto labD
}
IfInString, varG, %RD%
{
	Gcode = 
	goto labD
}
IfInString, varG, %RL%
{
	Gcode = 
	goto labD
}
IfInString, varG, %VL%
{
	Gcode = 
	goto labD
}
IfInString, varG, %WS%
{
	Gcode = 
	goto labD
} else {
	MsgBox, 262192, *error*, Geen geldige RND gebouwcode gevonden!`nVarG: %varG%
}


labRABO:
Benelux = Benelux
Malie-15 = Malie-15
Malie-53 = Malie-53
Seindreef = Seindreef
Clarenburg = Clarenburg
Andesdreef = Andesdreef
Biltstraat = Biltstraat
Doornburg = Doornburg
Godebald = Godebald
Zandveld = Zandveld
Molenpolder = Molenpolder
Muntplein = Muntplein
Radboud = Radboud
Rijnlaan = Rijnlaan
Twijnstr = Twijnstr
Vinkenburg = Vinkenburg
Noortplein = Noortplein
Galecop = Galecop
Liesbosch = Liesbosch
Croeslaan = Croeslaan
Amsterdam = Amsterdam
Hammar = Hammar
Kanaal = Kanaal
Klooster =  Klooster
Vliestraat = Vliestraat
Oranje = Oranje
Schakel = Schakel
Smaragd = Smaragd
Burchten =  Burchten
Heidelberg = Heidelberg
Vaart = Vaart

IfInString, varG, %Benelux%
{
	Gcode = Beneluxlaan
	goto labD
} 
IfInString, varG, %Malie15%
{
	Gcode = Maliebaan 15
	goto labD
} 
IfInString, varG, %Malie53%
{
	Gcode = Maliebaan 53z
	goto labD
} 
IfInString, varG, %Seindreef%
{
	Gcode = Seindreef
	goto labD
} 
IfInString, varG, %Clarenburg%
{
	Gcode = Achter Clarenburg
	goto labD
} 
IfInString, varG, %Andesdreef%
{
	Gcode = Andesdreef
	goto labD
} 
IfInString, varG, %Biltstraat%
{
	Gcode = Biltstraat
	goto labD
} 
IfInString, varG, %Doornburg%
{
	Gcode = Doornburglaan
	goto labD
} 
IfInString, varG, %Godebald%
{
	Gcode = Godebaldkwartier
	goto labD
} 
IfInString, varG, %Zandveld%
{
	Gcode = Hoog Zandveld
	goto labD
} 
IfInString, varG, %Molenpolder%
{
	Gcode = Molenpolder
	goto labD
} 
IfInString, varG, %Muntplein%
{
	Gcode = Muntplein
	goto labD
} 
IfInString, varG, %Radboud%
{
	Gcode = Radboudkwartier
	goto labD
} 
IfInString, varG, %Rijnlaan%
{
	Gcode = Rijnlaan
	goto labD
} 
IfInString, varG, %Twijnstr%
{
	Gcode = Twijnstraat
	goto labD
} 
IfInString, varG, %Vinkenburg%
{
	Gcode = Vinkenburgstraat
	goto labD
} 
IfInString, varG, %Noortplein%
{
	Gcode = Willem van Noortplein
	goto labD
} 
IfInString, varG, %Galecop%
{
	Gcode = Winkelcentrum Galecop
	goto labD
} 
IfInString, varG, %Liesbosch%
{
	Gcode = Lieschbosch
	goto labD
} 
IfInString, varG, %Croeslaan%
{
	Gcode = Croeselaan
	goto labD
} 
IfInString, varG, %Amsterdam%
{
	Gcode = Amsterdamsestraatweg
	goto labD
} 
IfInString, varG, %Hammar%
{
	Gcode = Hammarskjöldhof
	goto labD
} 
IfInString, varG, %Kanaal%
{
	Gcode = Kanaalstraat
	goto labD
} 
IfInString, varG, %Klooster%
{
	Gcode = KLoosterweg
	goto labD
} 
IfInString, varG, %Vliestraat%
{
	Gcode = Lange Vliestraat
	goto labD
} 
IfInString, varG, %Oranje%
{
	Gcode = Oranjelaan
	goto labD
} 
IfInString, varG, %Schakel%
{
	Gcode = Schakelstede
	goto labD
} 
IfInString, varG, %Smaragd%
{
	Gcode = Smaragdplein
	goto labD
} 
IfInString, varG, %Burchten%
{
	Gcode = Voor de Burchten
	goto labD
} 
IfInString, varG, %Heidelberg%
{
	Gcode = Heidelberglaan
	goto labD
} 
IfInString, varG, %Vaart%
{
	Gcode = Nieuwe Vaart
	goto labD
} 




































labD:
;B
B1 = B1
B2 = B2
B3 = B3
B4 = B4
B5 = B5
B6 = B6
B7 = B7
B8 = B8
B9 = B9
B10 = B10
B11 = B11
IfInString, varD, %B1%
{
	Dcode = B1
	goto labV
}
IfInString, varD, %B2%
{
	varD = B2
	goto labV
}
IfInString, varD, %B3%
{
	Dcode = B3
	goto labV
}
IfInString, varD, %B4%
{
	Dcode = B4
	goto labV
}
IfInString, varD, %B5%
{
	Dcode = B5
	goto labV
}
IfInString, varD, %B6%
{
	Dcode = B6
	goto labV	
}
IfInString, varD, %B7%
{
	Dcode = B7
	goto labV
}
IfInString, varD, %B8%
{
	Dcode = B8
	goto labV
}
IfInString, varD, %B9%
{
	Dcode = B9
	goto labV
}
IfInString, varD, %B10%
{
	Dcode = B10
	goto labV	
}
IfInString, varD, %B11%
{
	Dcode = B11
	goto labV
}
;E 
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
	Dcode = E1
	goto labV
}
IfInString, varD, %E2%
{
	Dcode = E2
	goto labV
}
IfInString, varD, %E3%
{
	Dcode = E3
	goto labV
}
IfInString, varD, %E4%
{
	Dcode = E4
	goto labV
}
IfInString, varD, %E5%
{
	Dcode = E5
	goto labV
}
IfInString, varD, %E6%
{
	Dcode = E6
	goto labV
}
IfInString, varD, %E7%
{
	Dcode = E7
	goto labV
}
IfInString, varD, %E8%
{
	Dcode = E8
	goto labV
}
;VP
VP1 = VP1
VP2 = VP2
VP3 = VP3
VP4 = VP4
IfInString, varD, %VP1%
{
	Dcode = VP1
	goto labV	
}
IfInString, varD, %VP2%
{
	Dcode = VP2
	goto labV
}
IfInString, varD, %VP3%
{
	Dcode = VP3
	goto labV
}
IfInString, varD, %VP4%
{
	Dcode = VP4
	goto labV
}
;D
D1 = D1
D2 = D2
D3 = D3
D4 = D4
IfInString, varD, %D1%
{
	Dcode = D1
	goto labV
}
IfInString, varD, %D2%
{
	Dcode = D2
	goto labV
}
IfInString, varD, %D3%
{
	Dcode = D3
	goto labV
}
IfInString, varD, %D4%
{
	Dcode = D4
	goto labV
}
;A
A1 = A1
A2 = A2
A3 = A3
A4 = A4
IfInString, varD, %A1%
{
	Dcode = A1
	goto labV
}
IfInString, varD, %A2%
{
	Dcode = A2
	goto labV
}
IfInString, varD, %A3%
{
	Dcode = A3
	goto labV
}
IfInString, varD, %A4%
{
	Dcode = A4
	goto labV
}	
;W
W1 = W1
W2 = W2
W3 = W3
W4 = W4
W5 = W5
IfInString, varD, %W1%
{
	Dcode = W1
	goto labV
}
IfInString, varD, %W2%
{
	Dcode = W2
	goto labV
}
IfInString, varD, %W3%
{
	Dcode = W3
	goto labV
}
IfInString, varD, %W4%
{
	Dcode = W4
	goto labV
}
IfInString, varD, %W5%
{
	Dcode = W5
	goto labV
}
;S
S1 = S1
S2 = S2
S3 = S3
S4 = S4

IfInString, varD, %S1%
{
	Dcode = S1
	goto labV
}
IfInString, varD, %S2%
{
	Dcode = S2
	goto labV
}
IfInString, varD, %S3%
{
	Dcode = S3
	goto labV
}
IfInString, varD, %S4%
{
	Dcode = S4
	goto labV
}
;BM
BM1 = BM1
BM2 = BM2
BM3 = BM3
BM4 = BM4
IfInString, varD, %BM1%
{
	Dcode = BM1
	goto labV
}
IfInString, varD, %BM2%
{
	Dcode = BM2
	goto labV
}
IfInString, varD, %BM3%
{
	Dcode = BM3
	goto labV
}
IfInString, varD, %BM4%
{
	Dcode = BM4
	goto labV
}
;T
T1 = T1
T2 = T2
T3 = T3
T4 = T4

IfInString, varD, %T1%
{
	Dcode = T1
	goto labV
}
IfInString, varD, %T2%
{
	Dcode = T2
	goto labV
}
IfInString, varD, %T3%
{
	Dcode = T3
	goto labV
}
IfInString, varD, %T4%
{
	Dcode = T4
	goto labV
}
;V
V00 = V00
V01 = V01
V02 = V02
V03 = V03
V04 = V04
V05 = V05
V06 = V06
V07 = V07
V08 = V08
V09 = V09
V10 = V10
V11 = V11
V12 = V12
V13 = V13
V14 = V14
V15 = V15

IfInString, varD, %V00%
{
	Dcode = V00
	goto labV
}
IfInString, varD, %V01%
{
	Dcode = V01
	goto labV
}
IfInString, varD, %V02%
{
	Dcode = V02
	goto labV
}
IfInString, varD, %V03%
{
	Dcode = V03
	goto labV
}
IfInString, varD, %V04%
{
	Dcode = V04
	goto labV
}
IfInString, varD, %V05%
{
	Dcode = V05
	goto labV
}
IfInString, varD, %V06%
{
	Dcode = V06
	goto labV
}
IfInString, varD, %V07%
{
	Dcode = V07
	goto labV
}
IfInString, varD, %V08%
{
	Dcode = V08
	goto labV
}
IfInString, varD, %V09%
{
	Dcode = V09
	goto labV
}
IfInString, varD, %V10%
{
	Dcode = V10
	goto labV
}
IfInString, varD, %V11%
{
	Dcode = V11
	goto labV
}
IfInString, varD, %V12%
{
	Dcode = V12
	goto labV
}
IfInString, varD, %V13%
{
	Dcode = V13
	goto labV
}
IfInString, varD, %V14%
{
	 Dcode = V14
	goto labV
}
IfInString, varD, %V15%
{
	Dcode = V15
	goto labV
}
G1 = Gebruiksvergunning
G2 = Gebruiksvergunning gevel
IfInString, varD, %G1%
{
	Dcode = G1
	goto labV
}
IfInString, varD, %G2%
{
	Dcode = G2
	goto labV
}
Else
{
	goto labSubvarD
	;MsgBox, 262192, *error*, Geen correcte varD gevonden
}

;Verdiepingen
labV:
TR = TR
K2 = K2
K1 = K1
0F = 0F
KR = KR
00 = 00
T0 = T0
01 = 01
T1 = T1
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
IfInString, varV, %K2%
{
	Vcode = kelder -2
}
IfInString, varV, %K1%
{
	Vcode = kelder -1
}
IfInString, varV, %00%
{
	Vcode = begane grond
}
IfInString, varV, %T0%
{
	Vcode = tussen verdieping tussen de begane grond en 1e verdieping
}
IfInString, varV, %01%
{
	Vcode = 1e verdieping
}
IfInString, varV, %T1%
{
	Vcode = tussen verdieping tussen 1e en 2e verdieping
}
IfInString, varV, %02%
{
	Vcode = 2e verdieping
}
IfInString, varV, %03%
{
	Vcode = 3e verdieping
}
IfInString, varV, %04%
{
	Vcode = 4e verdieping
}
IfInString, varV, %05%
{
	Vcode = 5e verdieping
}
IfInString, varV, %06%
{
	Vcode = 6e verdieping
}
IfInString, varV, %07%
{
	Vcode = 7e verdieping
}
IfInString, varV, %08%
{
	Vcode = 8e verdieping
}
IfInString, varV, %09%
{
	Vcode = 9e verdieping
}
IfInString, varV, %10%
{
	Vcode = 10e verdieping
}
IfInString, varV, %11%
{
	Vcode = 11e verdieping
}
IfInString, varV, %12%
{
	Vcode = 12e verdieping
}
IfInString, varV, %13%
{
	Vcode = 13e verdieping
}
IfInString, varV, %14%
{
	Vcode = 14e verdieping
}
IfInString, varV, %15%
{
	Vcode = 15e verdieping
}
IfInString, varV, %16%
{
	Vcode = 16e verdieping
}
IfInString, varV, %17%
{
	Vcode = 17e verdieping
}
IfInString, varV, %18%
{
	Vcode = 18e verdieping
}
IfInString, varV, %19%
{
	Vcode = 19e verdieping
}
IfInString, varV, %20%
{
	Vcode = 20e verdieping
}
IfInString, varV, %TR%
{
	Vcode = terrein
}
IfInString, varV, %0F%
{
	Vcode = 0F
}
IfInString, varV, %KR%
{
	Vcode = KR
}
else 
{
	MsgBox, 262192, *error*, Geen correcte verdieping gevonden
}


labSubvarD:

Energiekosten = Energiekosten
IfInString, varD, %Energiekosten%
{
	Dcode = energiekosten
	goto labT
}
Totaaloverzicht = Totaaloverzicht
IfInString, varD, %Totaaloverzicht%
{
	Dcode = totaaloverzicht
	goto labT
}
IfInString, varD, %Koelwater%
{
	Dcode = Koelwater
	goto labT
}
IfInString, varD, %Monstername%
{
	Dcode = Monstername
	goto labT
}
Rondgang = Rondgang
IfInString, varD, %Rondagang%
{
	Dcode = Rondgang
	goto labT
}
Liftkeuring = Liftkeuring
IfInString, varD, %Liftkeuring%
{
	Dcode = Liftkeuring
	goto labT
}
Temp = Temperatuur
IfInString, varD, %Temp%
{
	Dcode = Temperatuur
	goto labT
}
kwartaalrond = kwartaalrondgang
IfInString, varD, %kwartaalrond%
{
	Dcode = 
	goto labT
}
PVE = PVE
IfInString, varD, %PVE%
{
	Dcode = programma van eisen
	goto labT
}
IfInString, varD, %%
{
	Dcode = 
	goto labT
}
IfInString, varD, %%
{
	Dcode = 
	goto labT
}
IfInString, varD, %%
{
	Dcode = 
	goto labT
}
IfInString, varD, %%
{
	Dcode = 
	goto labT
}










labT:
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
Jan = 01
Feb = 02
Mrt = 03
Apr = 04
Mei = 05
Jun = 06
Jul = 07
Aug = 08
Sep = 09
Okt = 10
Nov = 11
Dec = 12

IfInString, varD, %01%
{
	varT = januari
}
IfInString, varD, %02%
{
	varT = februari
}
IfInString, varD, %03%
{
	varT = maart
}
IfInString, varD, %04%
{
	varT = april
}
IfInString, varD, %05%
{
	varT = mei
}
IfInString, varD, %06%
{
	varT = juni
}
IfInString, varD, %07%
{
	varT = juli
}
IfInString, varD, %08%
{
	varT = augustus
}
IfInString, varD, %09%
{
	varT = september
}
IfInString, varD, %10%
{
	varT = oktober
}
IfInString, varD, %11%
{
	varT = november
}
IfInString, varD, %12%
{
	varT = december
}
IfInString, varD, %Jan%
{
	varT = januari
}
IfInString, varD, %Feb%
{
	varT = februari
}
IfInString, varD, %Mrt%
{
	varT = maart
}
IfInString, varD, %Apr%
{
	varT = april
}
IfInString, varD, %Mei%
{
	varT = mei
}
IfInString, varD, %Jun%
{
	varT = juni
}
IfInString, varD, %Jul%
{
	varT = juli
}
IfInString, varD, %Aug%
{
	varT = augustus
}
IfInString, varD, %Sep%
{
	varT = september
}
IfInString, varD, %okt%
{
	varT = oktober
}
IfInString, varD, %Nov%
{
	varT = november
}
IfInString, varD, %Dec%
{
	varT = december
}



labS:
1E = 1e kwartaal
2E = 2e kwartaal
3E = 3e kwartaal
4E = 4e kwartaal
1ekwartaal = 1e kwartaal
2ekwartaal = 2e kwartaal
3ekwartaal = 3e kwartaal
4ekwartaal = 4e kwartaal

IfInString, varD, %1E%
{
	varT = 1e kwartaal
}
IfInString, varD, %2E%
{
	varT = 2e kwartaal
}
IfInString, varD, %3E%
{
	varT = 3e kwartaal
}
IfInString, varD, %4E%
{
	varT = 4e kwartaal
}
IfInString, varD, %1ekwartaal%
{
	varT = 1e kwartaal
}
IfInString, varD, %2ekwartaal%
{
	varT = 2e kwartaal
}
IfInString, varD, %3ekwartaal%
{
	varT = 3e kwartaal
}
IfInString, varD, %4ekwartaal%
{
	varT = 4e kwartaal
}
Else
{
	MsgBox, 262192, *error*, Geen kwartaal Gevonden!`nvarD: %varD%
}



labY:
IfInString, varD, %2011%
{
	varY = 2011
}
IfInString, varD, %2012%
{
	varY = 2012
}
IfInString, varD, %2013%
{
	varY = 2013
}
IfInString, varD, %2014%
{
	varY = 2014
}
Else
{
	MsgBox, 262192, *error*, Geen Jaar gevonden!`nvarD: %varD%
}




























































































;Send {shiftdown}{TAB}{shiftup}{ctrldown}v{ctrlup}{TAB 2}

return

;;;;;;;;;;;;;;;;;;;;
;;variabelen lijst;;
;;;;;;;;;;;;;;;;;;;;




/* 


IfInString, clipboart, %VOH%
{
	Send {shiftdown}{tab 2}{shiftup}{home}{del 8}{tab 2}
	goto opnieuw
}
IfInString, clipboart, %DPC%
{
	Send {shiftdown}{tab}{shiftup}{ctrldown}c{ctrlup}
	send {shiftdown}{tab 2}{shiftup}{enter}
	WinWait, Openen,
	IfWinNotActive, Openen, , WinActivate, Openen,
	WinWaitActive, Openen
	Send {ctrldown}v{ctrlup}{end}
	Send .dwg
	Send {enter}
	WinWaitClose ahk_class #32770
	WinWait, Frontpage - Google Chrome,
	IfWinNotActive, Frontpage - Google Chrome, , WinActivate, Frontpage - Google Chrome,
	WinWaitActive, Frontpage - Google Chrome,
	Send {tab 3}
}

opnieuw:
 
IfInString, clipboart, %variabele%
{
	Send Tekst voor varD
	Send {tab}A3{tab}{space}{tab}{space}{tab}16{tab}05{tab 6}
	clipboard = %clipboardold%
	Return
}




























;Start berekening
totaal:
var0 = %var1%%var2%%var3%%varC%
;msgbox %var0% ;;;; Bug Tracking
IfInString, var0, %DPC%
{
	goto DWG
}
IfInString, var0, %FLOB1%
{
	goto DWG
}
;NoDWG
;msgbox %var0% ;;;; Bug Tracking
clipboard = %var0%
Send {shiftdown}{tab 3}{shiftup}{enter}
WinWait ahk_class #32770
sleep 500
Send {ctrldown}v{ctrlup}.PDF{enter}
WinWaitClose ahk_class #32770
WinWait, Frontpage - Google Chrome,
Sleep 200









; Na plaatsen ga direct naar datum Laatste aanpassing
Send {tab 11}
good:
send {home}
;msgbox %remember% $remember NOT 1 vraag datum
if (Remember <> 1){
	goto question
} else {
	goto vervolg
}
;msgbox %remember%









WinWait, Frontpage - Google Chrome,
IfWinNotActive, Frontpage - Google Chrome, , WinActivate, Frontpage - Google Chrome,
WinWaitActive, Frontpage - Google Chrome,
MouseClick, left,  1054,  701
Sleep 200
if (Dag = 22){
	send 2
	send 2	
}
send %Dag%
send {tab}
send %Maand%
send {tab}
send %Jaar%
send {tab 2}{enter}
clipboard = 
return
;DWG
DWG:
;msgbox %var0% ;;;; Bug Tracking
Send {shiftdown}{tab 3}{shiftup}{enter}
WinWait ahk_class #32770
Send ^v.PDF{enter}
Sleep 200
WinWait, Frontpage - Google Chrome,
Sleep 200
Send {tab}{enter}
WinWait ahk_class #32770
WinWaitActive ahk_class #32770
Send ^v.DWG}{enter}
WinWaitClose ahk_class #32770
WinWait, Frontpage - Google Chrome,
Sleep 200
Send {tab 10}
goto question
;ga naar question
;GUI voor datum invoer
WinMinimize, Frontpage - Google Chrome
question:
FormatTime, datum,, ShortDate
DDD := SubStr(datum, 1, 2)
MMM := SubStr(datum, 4, 2)
JJJ := SubStr(datum, 7, 4)
Gui, Add, Text, x7 y5 w140 h15 , Voer datum in:
Gui, Add, ComboBox, x7 y65 w40 h21 vDag, 01|02|03|04|05|06|07|08|09|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30|31|%DDD%||
Gui, Add, ComboBox, x57 y65 w40 h21 vMaand, 01|02|03|04|05|06|07|08|09|10|11|12|%MMM%||
Gui, Add, ComboBox, x107 y65 w80 h21 vJaar, 2013|2012|2011|2010|%JJJ%||
Gui, Add, Button, x52 y90 w90 h30 , Send
Gui, Add, Checkbox, x7 y25 w140 h30 checked vRemember, Onthoud Datum
Gui, Show, h130 w204, Revisie Datum
Return
ButtonSend:
gui, submit, nohide
gui destroy
goto vervolg
GuiClose:
Reload
return */