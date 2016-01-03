; Update
^!u::
program:




clipboard = 
Send {f2}{ctrldown}ac{ctrlup}
var4 = %clipboard%
;StringLeft, VarX, var4, 3
varX := SubStr(var4, 4, 3)


FLO = FLO


IfInString, var4, %FLO%
{
	var1 = K:\Tekeningenbeheer\FLO\
	goto gebouwcodeflo
	Return
}


gebouwcodeflo:

ADG = ADG
CMMS = CMMS
MTL = MTL
DST = DST
DKD = DKD
GHS = GHS
HHG = HHG
HHS = HHS
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



IfInString, var4, %ADG%
{
	var2 = Adegeest (ADG)\
	goto discipline
	Return
}

IfInString, var4, %CMMS%
{
	var2 = CMMS\
	goto discipline
	Return
}

IfInString, var4, %MTL%
{
	var2 = De Mantel (MTL)\
	goto discipline
	Return
}

IfInString, var4, %DKD%
{
	var2 = Dekkersduin (DKD)\
	goto discipline
	Return
}

IfInString, var4, %DST%
{
	var2 = Duinstede (DST)\
	goto discipline
	Return
}

IfInString, var4, %GBK%
{
	var2 = Geestbrugkade (GBK) Tijdelijk\
	goto discipline
	Return
}

IfInString, var4, %GHS%
{
	var2 = Guldenhuis (GHS)\
	goto discipline
	Return
}

IfInString, var4, %HHG%
{
	var2 = Houthaghe (HHG)\
	goto discipline
	Return
}

IfInString, var4, %JFR%
{
	var2 = Jonker Frans (JFR)\
	goto discipline
	Return
}

IfInString, var4, %LVV%
{
	var2 = Laan van Vredenoord (LVV)\
	goto discipline
	Return
}

IfInString, var4, %LRS%
{
	var2 = Laurens Reaelstraat (LRS)\
	goto discipline
	Return
}

IfInString, var4, %LVS%
{
	var2 = Loevestein (LVS)\
	goto discipline
	Return
}

IfInString, var4, %LHF%
{
	var2 = LoOSNuinse Hof (LHF)\
	goto discipline
	Return
}

IfInString, var4, %MHV%
{
	var2 = Mariahoeve (MHV)\
	goto discipline
	Return
}

IfInString, var4, %MRR%
{
	var2 = Marterade (MRR)\
	goto discipline
	Return
}

IfInString, var4, %OSN%
{
	var2 = Oostduin (OSN)\
	goto discipline
	Return
}

IfInString, var4, %ODB%
{
	var2 = Over de Boogaard (ODB)\
	goto discipline
	Return
}

IfInString, var4, %SPT%
{
	var2 = Schakelpunt (SPT)\
	goto discipline
	Return
}

IfInString, var4, %STV%
{
	var2 = Steenvoorde (STV)\
	goto discipline
	Return
}

IfInString, var4, %HHS%
{
	var2 = 't Hoflants Huys (HHS)\
	goto discipline
	Return
}

IfInString, var4, %VBL%
{
	var2 = Vickenborglaan (VBL)\
	goto discipline
	Return
}

IfInString, var4, %VBH%
{
	var2 = Vredenburch (VBH)\
	goto discipline
	Return
}

IfInString, var4, %WKB%
{
	var2 = Wenckenbach (WKB)\
	goto discipline
	Return
}

IfInString, var4, %WHF%
{
	var2 = Westhoff (WHF)\
	goto discipline
	Return
}

IfInString, var4, %WBL%
{
	var2 = Willem de Bijelaan (WBL)
	goto discipline
	Return
}

IfInString, var4, %UTZ%
{
	var2 = Uitzicht (UTZ)\
	goto discipline
	Return
}


eerste = Energiekosten 
tweede = totaal


IfInString, var4, %eerste%
{
	var3 = Energie\Maand rapportage\2013\
	goto totaal
	Return
}
IfInString, var4, %tweede%
{
	var3 = Energie\Totaalrapportages\2013\
	goto totaal
	Return
}





IfInString, var4, %%
{
	var3 = Installaties\Brandmeldinsinstallatie\
	goto totaal
	Return
}

IfInString, var4, %BM4%
{
	var3 = Installaties\Brandmeldinstallatie\Details\
	goto totaal
	Return
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;EIND Berekening ;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
totaal:
var0 = %var1%%var2%%var3%%var4%

;msgbox %var0% ;;;; Bug Tracking
IfInString, var0, %FLO%
{
	goto NODWG
	Return
}

;msgbox %var0% ;;;; Bug Tracking
clipboard = %var0%
Send {shiftdown}{tab 3}{shiftup}{enter}
WinWait ahk_class #32770
Send ^v.PDF{enter}
sleep 200
WinWait, Frontpage - Google Chrome,
sleep 200
Send {tab}{enter}
WinWait ahk_class #32770
WinWaitActive ahk_class #32770
Send ^v.DWG}{enter}
WinWait, Frontpage - Google Chrome,
sleep 200
Send {tab 10}
;Test fase
;TESTFASE
;UPDATE DATUM
send {home}
FormatTime, datum,, ShortDate
dag := SubStr(datum, 1, 2)
maand := SubStr(datum, 4, 2)
send %dag%
send {tab}
send %maand%
send {tab 3}


clipboard =
Return

NODWG:
;msgbox %var0% ;;;; Bug Tracking
Send {shiftdown}{tab 3}{shiftup}{enter}
WinWait ahk_class #32770
Send ^v.PDF{enter}
sleep 200
WinWait, Frontpage - Google Chrome,
sleep 200
Send {tab 11}
/*
FormatTime, datum,, ShortDate
dag := SubStr(datum, 1, 2)
maand := SubStr(datum, 4, 2)
*/
clipboard =
Return
Return






;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;**************;;;;;;;;;;**************;;;;;;;;;;;;;;;;;;;***************;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;****************;;;;;;;;;***************;;;;;;;;;;;;;;********************;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;****;;;;;;;;;;;****;;;;;;;*****;;;;;;;****;;;;;;;;;;;****************;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;****;;;;;;;;;;;****;;;;;;;*****;;;;;;;*****;;;;;;;;;***************;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;****;;;;;;;;;;;****;;;;;;;*****;;;;;;;*****;;;;;;;;********;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;****;;;;;;;;;;;****;;;;;;;*****;;;;;;;*****;;;;;;;;********;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;****;;;;;;;;;;;****;;;;;;;***************;;;;;;;;;;*****;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;**
;;;;;****;;;;;;;;;;;****;;;;;;;**************;;;;;;;;;;;*****;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;****;;;;;;;;;;;****;;;;;;;***************;;;;;;;;;;*****;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;****;;;;;;;;;;;****;;;;;;;*****;;;;;;;*****;;;;;;;;*****;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;*******************;;;;;;;*****;;;;;;;*****;;;;;;;;*****;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;*******************;;;;;;;*****;;;;;;;*****;;;;;;;;;*****;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;****;;;;;;;;;;;****;;;;;;;*****;;;;;;;*****;;;;;;;;;;*****;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;****;;;;;;;;;;;****;;;;;;;*****;;;;;;;*****;;;;;;;;;;;******;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;****;;;;;;;;;;;****;;;;;;;***************;;;;;;;;;;;;;***********;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;****;;;;;;;;;;;****;;;;;;;***************;;;;;;;;;;;;;;;;;*******;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




+^ins::
Send {tab}{space}
winwaitactive, ahk_class #32770
Send {shiftdown}{tab 2}{shiftup}
WinWaitActive, Frontpage - Google Chrome,


!+LButton::
^!C::
database:
WinWait, Frontpage - Google Chrome,
IfWinNotActive, Frontpage - Google Chrome, , WinActivate, Frontpage - Google Chrome,
WinWaitActive, Frontpage - Google Chrome,
MouseClick, left,  1182,  401
clipboardold = %clipboardall%
Send {ctrldown}ac{ctrlup}
clipboart = %clipboard%







; testinput voor -- lege geboucodes


noclipboart = %clipboard%
yesclipboart = %clipboard% 
noentry = --

cutclipboart := substr(noclipboart, 4, 3)	

; eFLO 
; --
; FLO--

IfInString, cutclipboart, %noentry%
{
	InputBox, inputclipboart, *error*, Geef gebouwcode in:,,180,120,,,,,
	Stringreplace, completeclipboart, yesclipboart, --, -%inputclipboart%-,
	clipboart = %completeclipboart%
	clipboard = %completeclipboart%
	Send {ctrldown}av{ctrlup}
	;goto opnieuw
}





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

/*
; test section
::testinput::
noclipboart = %clipboard%
noentry = --
cutclipboart := substr(noclipboart, 4, 3)	

IfInString, cutclipboart, %noentry%
{
	InputBox, newclipboart, Geen Gebouwcode gevonden!, Geef gebouwcode in:,,240,120,,,,,
if ErrorLevel
    goto opnieuw
else
	Stringreplace, completeclipboart, clipboart, --, -%newclipboart%-,
	clipboart = %completeclipboart%
	msgbox %completeclipboart%
	goto opnieuw
}
*/




Send {shiftdown}{TAB}{shiftup}{ctrldown}v{ctrlup}{TAB 2}

; Begin Werking


; Variablen

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

JAN = JAN
FEB = FEB
MRT = MRT
APR = APR
MEI = MEI
JUN = JUN
JUL = JUL
AUG = AUG
SEP = SEP
OKT = OKT
NOV = NOV
DEC = DEC

1kwartaal = 1e kwartaal
2kwartaal = 2e Kwartaal
3kwartaal = 3e kwartaal
4kwartaal = 4e kwartaal

2013 = 2013
2011 = 2011
2010 = 2010
2009 = 2009
2008 = 2008
2007 = 2007
2006 = 2006
2005 = 2005
2004 = 2004
2003 = 2003
2002 = 2002
2001 = 2001
2000 = 2000

FLO = FLO
DPC = DPC
RND = RND
SZR = SZR
VOH = VOH

beheersplan = beheersplan
kiwa = kiwa
keerklep = keerkleppen
service = service
serviceReparatie = Service Reparatie
Keuringslijst = Keuringslijst

MonsternameJAN = Monstername 01
MonsternameFEB = Monstername 02
MonsternameMRT = Monstername 03
MonsternameAPR = Monstername 04
MonsternameMEI = Monstername 05
MonsternameJUN = Monstername 06
MonsternameJUL = Monstername 07
MonsternameAUG = Monstername 08
MonsternameSEP = Monstername 09
MonsternameOKT = Monstername 10
MonsternameNOV = Monstername 11
MonsternameDEC = Monstername 12

Temperatuurlijst = Temperatuurlijst

RABO = RABO
Analyse = Analyse
AnalyseJAN = Analyse Jan
AnalyseFEB = Analyse Feb
AnalyseMRT = Analyse Mrt
AnalyseAPR = Analyse Apr
AnalyseMEI = Analyse Mei
AnalyseJUN = Analyse Jun
AnalyseJUL = Analyse Jul
AnalyseAUG = Analyse Aug
AnalyseSEP = Analyse Sep
AnalyseOKT = Analyse Okt
AnalyseNOV = Analyse Nov
AnalyseDEC = Analyse Dec



E10F = E10F
E1K2 = E1K2
E1K1 = E1K1
E1KR = E1KR
E1TR = E1TR
E100 = E100
E1T0 = E1T0
E101 = E101
E1T1 = E1T1
E102 = E102
E103 = E103
E104 = E104
E105 = E105
E106 = E106
E107 = E107
E108 = E108
E109 = E109
E110 = E110

E20F = E20F
E2K2 = E2K2
E2K1 = E2K1
E2KR = E2KR
E2TR = E2TR
E200 = E200
E2T0 = E2T0
E201 = E201
E2T1 = E2T1
E202 = E202
E203 = E203
E204 = E204
E205 = E205
E206 = E206
E207 = E207
E208 = E208
E209 = E209
E210 = E210

E3 = E3
E4 = E4
E5 = E5
E6 = E6
E7 = E7
E8 = E8

W10F = W10F
W1K2 = W1K2
W1K1 = W1K1
W1KR = W1KR
W1TR = W1TR
W100 = W100
W1T0 = W1T0
W101 = W101
W1T1 = W1T1
W102 = W102
W103 = W103
W104 = W104
W105 = W105
W106 = W106
W107 = W107
W108 = W108
W109 = W109
W110 = W110

W20F = W20F
W2K2 = W2K2
W2K1 = W2K1
W2KR = W2KR
W2TR = W2TR
W200 = W200
W2T0 = W2T0
W201 = W201
W2T1 = W2T1
W202 = W202
W203 = W203
W204 = W204
W205 = W205
W206 = W206
W207 = W207
W208 = W208
W209 = W209
W210 = W210

W3 = W3
W4 = W4
W5 = W5

B10K = B10K
B001 = B001
B10F = B10F
B1K2 = B1K2
B1K1 = B1K1
B1KR = B1KR
B1TR = B1TR
B100 = B100
B1T0 = B1T0
B101 = B101
B1T1 = B1T1
B102 = B102
B103 = B103
B104 = B104
B105 = B105
B106 = B106
B107 = B107
B108 = B108
B109 = B109
B110 = B110

B2 = B2
B3 = B3
B4 = B4

B5K1 = B5K1
B500 = B500
B5T0 = B5T0
B501 = B501
B5T1 = B5T1
B502 = B502
B503 = B503
B504 = B504
B505 = B505
B506 = B506
B507 = B507
B508 = B508
B509 = B509
B510 = B510

B6 = B6
B7 = B7

B8K1 = B8K1
B800 = B800
B801 = B801
B802 = B802
B803 = B803
B804 = B804
B805 = B805

B9K1 = B9K1
B900 = B900
B901 = B901
B902 = B902
B903 = B903
B904 = B904
B905 = B905
B906 = B906
B907 = B907
B908 = B908
B909 = B909
B910 = B910

B10 = B10


B11K1 = B11K1
B1100 = B1100
B1101 = B1101
B1102 = B1102
B1103 = B1103
B1104 = B1104
B1105 = B1105
B1106 = B1106
B1107 = B1107
B1108 = B1108
B1109 = B1109

L10F = L10F
L1KR = L1KR
L1K1 = L1K1
L100 = L100
L1T1 = L1T1
L101 = L101
L1T2 = L1T2
L102 = L102
L103 = L103
L104 = L104
l105 = L105
L106 = L106
L107 = L107
L108 = L108
L109 = L109
L110 = L110



VP100 = VP100
VP1T0 = VP1T0
VP101 = VP101
VP1T1 = VP1T1
VP102 = VP102
VP103 = VP103
VP104 = VP104
VP105 = VP105
VP106 = VP106
VP107 = VP107
VP108 = VP108
VP109 = VP109
VP110 = VP110

VP2 = VP2
VP3 = VP3
VP4 = VP4

D1TR = D1TR
D1K2 = D1K2
D1K1 = D1K1
D100 = D100
D1T0 = D1T0
D101 = D101
D1T1 = D1T1
D102 = D102
D103 = D103
D104 = D104
D105 = D105
D106 = D106
D107 = D107
D108 = D108
D109 = D109
D110 = D110

D1 = D1
D2 = D2
D3 = D3
D4 = D4

A10F = A10F
A1K1 = A1K1
A1K2 = A1K2
A1KR = A1KR
A100 = A100
A1T0 = A1T0
A101 = A101
A1T1 = A1T1
A102 = A102
A103 = A103
A104 = A104
A105 = A105
A106 = A106
A107 = A107
A108 = A108
A109 = A109
A110 = A110

A200 = A200
A201 = A201
A202 = A202
A203 = A203
A204 = A204
A205 = A205
A206 = A206
A207 = A207
A208 = A208
A209 = A209
A210 = A210

A300 = A300
A301 = A301
A302 = A302
A303 = A303
A304 = A304
A305 = A305
A306 = A306
A307 = A307
A308 = A308
A309 = A309
A310 = A310

A4 = A4


BM1K2 = BM1K2
BM1K1 = BM1K1
BM1TR = BM1TR
BM100 = BM100
BM1T0 = BM1T0
BM101 = BM101
BM1T1 = BM1T1
BM102 = BM102
BM103 = BM103
BM104 = BM104
BM105 = BM105
BM106 = BM106
BM107 = BM107
BM108 = BM108
BM109 = BM109
BM110 = BM110

BM2 = BM2
BM3 = BM3
BM4 = BM4

G100 = G100
G1T0 = G1T0
G101 = G101
G1T1 = G1T1
G102 = G102
G103 = G103
G104 = G104
G105 = G105
G106 = G106
G107 = G107
G108 = G108
G109 = G109
G110 = G110
G1TR = G1TR
G1K1 = G1K1
G1K2 = G1K2

V0000 = V0000
V0100 = V0100
V0200 = V0200
V0300 = V0300
V0400 = V0400
V0500 = V0500
V0600 = V0600
V0700 = V0700
V0800 = V0800
V0900 = V0900
V1000 = V1000

VK101 = VK101
VK102 = VK102
VK103 = VK103
VK104 = VK104
VK105 = VK105
VK106 = VK106
VK107 = VK107
VK108 = VK108
VK109 = VK109
VK110 = VK110

V0001 = V0001
V0002 = V0002
V0003 = V0003
V0004 = V0004
V0005 = V0005
V0006 = V0006
V0007 = V0007
V0008 = V0008
V0009 = V0009
V0010 = V0010
V0011 = V0011
V0012 = V0012
V0013 = V0013
V0014 = V0014
V0015 = V0015
V0016 = V0016
V0017 = V0017
V0018 = V0018
V0019 = V0019
V0020 = V0020
V0021 = V0021
V0022 = V0022
V0023 = V0023
V0024 = V0024
V0025 = V0025
V0026 = V0026
V0027 = V0027
V0028 = V0028
V0029 = V0029
V0030 = V0030



V0101 = V0101
V0102 = V0102
V0103 = V0103
V0104 = V0104
V0105 = V0105
V0106 = V0106
V0107 = V0107
V0108 = V0108
V0109 = V0109
V0110 = V0110
V0111 = V0111
V0112 = V0112
V0113 = V0113
V0114 = V0114
V0115 = V0115
V0116 = V0116
V0117 = V0117
V0118 = V0118
V0119 = V0119
V0120 = V0120
V0121 = V0121
V0122 = V0122
V0123 = V0123
V0124 = V0124
V0125 = V0125
V0126 = V0126
V0127 = V0127
V0128 = V0128
V0129 = V0129
V0130 = V0130


V0201 = V0201
V0202 = V0202
V0203 = V0203
V0204 = V0204
V0205 = V0205
V0206 = V0206
V0207 = V0207
V0208 = V0208
V0209 = V0209
V0210 = V0210
V0211 = V0211
V0212 = V0212
V0213 = V0213
V0214 = V0214
V0215 = V0215
V0216 = V0216
V0217 = V0217
V0218 = V0218
V0219 = V0219
V0220 = V0220
V0221 = V0221
V0222 = V0222
V0223 = V0223
V0224 = V0224
V0225 = V0225
V0226 = V0226
V0227 = V0227
V0228 = V0228
V0229 = V0229
V0230 = V0230



V0301 = V0301
V0302 = V0302
V0303 = V0303
V0304 = V0304
V0305 = V0305
V0306 = V0306
V0307 = V0307
V0308 = V0308
V0309 = V0309
V0310 = V0310
V0311 = V0311
V0312 = V0312
V0313 = V0313
V0314 = V0314
V0315 = V0315
V0316 = V0316
V0317 = V0317
V0318 = V0318
V0319 = V0319
V0320 = V0320
V0321 = V0321
V0322 = V0322
V0323 = V0323
V0324 = V0324
V0325 = V0325
V0326 = V0326
V0327 = V0327
V0328 = V0328
V0329 = V0329
V0330 = V0330



V0401 = V0401
V0402 = V0402
V0403 = V0403
V0404 = V0404
V0405 = V0405
V0406 = V0406
V0407 = V0407
V0408 = V0408
V0409 = V0409
V0410 = V0410
V0411 = V0411
V0412 = V0412
V0413 = V0413
V0414 = V0414
V0415 = V0415
V0416 = V0416
V0417 = V0417
V0418 = V0418
V0419 = V0419
V0420 = V0420
V0421 = V0421
V0422 = V0422
V0423 = V0423
V0424 = V0424
V0425 = V0425
V0426 = V0426
V0427 = V0427
V0428 = V0428
V0429 = V0429
V0430 = V0430



V0501 = V0501
V0502 = V0502
V0503 = V0503
V0504 = V0504
V0505 = V0505
V0506 = V0506
V0507 = V0507
V0508 = V0508
V0509 = V0509
V0510 = V0510
V0511 = V0511
V0512 = V0512
V0513 = V0513
V0514 = V0514
V0515 = V0515
V0516 = V0516
V0517 = V0517
V0518 = V0518
V0519 = V0519
V0520 = V0520
V0521 = V0521
V0522 = V0522
V0523 = V0523
V0524 = V0524
V0525 = V0525
V0526 = V0526
V0527 = V0527
V0528 = V0528
V0529 = V0529
V0530 = V0530



V0601 = V0601
V0602 = V0602
V0603 = V0603
V0604 = V0604
V0605 = V0605
V0606 = V0606
V0607 = V0607
V0608 = V0608
V0609 = V0609
V0610 = V0610
V0611 = V0611
V0612 = V0612
V0613 = V0613
V0614 = V0614
V0615 = V0615
V0616 = V0616
V0617 = V0617
V0618 = V0618
V0619 = V0619
V0620 = V0620
V0621 = V0621
V0622 = V0622
V0623 = V0623
V0624 = V0624
V0625 = V0625
V0626 = V0626
V0627 = V0627
V0628 = V0628
V0629 = V0629
V0630 = V0630




V0701 = V0701
V0702 = V0702
V0703 = V0703
V0704 = V0704
V0705 = V0705
V0706 = V0706
V0707 = V0707
V0708 = V0708
V0709 = V0709
V0710 = V0710
V0711 = V0711
V0712 = V0712
V0713 = V0713
V0714 = V0714
V0715 = V0715
V0716 = V0716
V0717 = V0717
V0718 = V0718
V0719 = V0719
V0720 = V0720
V0721 = V0721
V0722 = V0722
V0723 = V0723
V0724 = V0724
V0725 = V0725
V0726 = V0726
V0727 = V0727
V0728 = V0728
V0729 = V0729
V0730 = V0730



V0801 = V0801
V0802 = V0802
V0803 = V0803
V0804 = V0804
V0805 = V0805
V0806 = V0806
V0807 = V0807
V0808 = V0808
V0809 = V0809
V0810 = V0810
V0811 = V0811
V0812 = V0812
V0813 = V0813
V0814 = V0814
V0815 = V0815
V0816 = V0816
V0817 = V0817
V0818 = V0818
V0819 = V0819
V0820 = V0820
V0821 = V0821
V0822 = V0822
V0823 = V0823
V0824 = V0824
V0825 = V0825
V0826 = V0826
V0827 = V0827
V0828 = V0828
V0829 = V0829
V0830 = V0830


V0901 = V0901
V0902 = V0902
V0903 = V0903
V0904 = V0904
V0905 = V0905
V0906 = V0906
V0907 = V0907
V0908 = V0908
V0909 = V0909
V0910 = V0910
V0911 = V0911
V0912 = V0912
V0913 = V0913
V0914 = V0914
V0915 = V0915
V0916 = V0916
V0917 = V0917
V0918 = V0918
V0919 = V0919
V0920 = V0920
V0921 = V0921
V0922 = V0922
V0923 = V0923
V0924 = V0924
V0925 = V0925
V0926 = V0926
V0927 = V0927
V0928 = V0928
V0929 = V0929
V0930 = V0930


V1001 = V1001
V1002 = V1002
V1003 = V1003
V1004 = V1004
V1005 = V1005
V1006 = V1006
V1007 = V1007
V1008 = V1008
V1009 = V1009
V1010 = V1010
V1011 = V1011
V1012 = V1012
V1013 = V1013
V1014 = V1014
V1015 = V1015
V1016 = V1016
V1017 = V1017
V1018 = V1018
V1019 = V1019
V1020 = V1020
V1021 = V1021
V1022 = V1022
V1023 = V1023
V1024 = V1024
V1025 = V1025
V1026 = V1026
V1027 = V1027
V1028 = V1028
V1029 = V1029
V1030 = V1030




S1K1 = S1K1
S1K2 = S1K2
S1KR = S1KR
S100 = S100
S1T0 = S1T0
S101 = S101
S1T1 = S1T1
S102 = S102
S103 = S103
S104 = S104
S105 = S105
S106 = S106
S107 = S107
S108 = S108
S109 = S109
S110 = S110
S2 = S2
S3 = S3
S4 = S4

00 = begane grond
01 = 1e verdieping
02 = 2e verdieping
03 = 3e verdieping
04 = 4e verdieping
05 = 5e verdieping
06 = 6e verdieping
07 = 7e verdieping
08 = 8e verdieping
09 = 9e verdieping
10 = 10e verdieping
11 = 11e verdieping
12 = 12e verdieping
13 = 13e verdieping
14 = 14e verdieping
15 = 15e verdieping
16 = 16e verdieping
17 = 17e verdieping
18 = 18e verdieping
19 = 19e verdieping
20 = 20e verdieping
21 = 21e verdieping
22 = 22e verdieping
23 = 23e verdieping
24 = 24e verdieping
25 = 25e verdieping
26 = 26e verdieping
27 = 27e verdieping
28 = 28e verdieping
29 = 29e verdieping
30 = 30e verdieping
31 = 31e verdieping
32 = 32e verdieping
33 = 33e verdieping
34 = 34e verdieping
35 = 35e verdieping
36 = 36e verdieping
37 = 37e verdieping
38 = 38e verdieping
39 = 39e verdieping
40 = 40e verdieping

EnergiekostenJAN = Energiekosten 01
EnergiekostenFEB = Energiekosten 02
EnergiekostenMRT = Energiekosten 03
EnergiekostenAPR = Energiekosten 04
EnergiekostenMEI = Energiekosten 05
EnergiekostenJUN = Energiekosten 06
EnergiekostenJUL = Energiekosten 07
EnergiekostenAUG = Energiekosten 08
EnergiekostenSEP = Energiekosten 09
EnergiekostenOKT = Energiekosten 10
EnergiekostenNOV = Energiekosten 11
EnergiekostenDEC = Energiekosten 12

; WKK STV
WKKJAN = WKK-01
WKKFEB = WKK-02
WKKMRT = WKK-03
WKKAPR = WKK-04
WKKMEI = WKK-05
WKKJUN = WKK-06
WKKJUL = WKK-07
WKKAUG = WKK-08
WKKSEP = WKK-09
WKKOKT = WKK-10
WKKNOV = WKK-11
WKKDEC = WKK-12


TotaaloverzichtJan = Totaal 01
TotaaloverzichtFeb = Totaal 02
TotaaloverzichtMrt = Totaal 03
TotaaloverzichtApr = Totaal 04
TotaaloverzichtMei = Totaal 05
TotaaloverzichtJun = Totaal 06
TotaaloverzichtJul = Totaal 07
TotaaloverzichtAug = Totaal 08
TotaaloverzichtSep = Totaal 09
TotaaloverzichtOkt = Totaal 10
TotaaloverzichtNov = Totaal 11
TotaaloverzichtDec = Totaal 12
T100 = T100

1ekwart = 1e Kwartaal
2ekwart = 2e Kwartaal
3ekwart = 3e Kwartaal
4ekwart = 4e Kwartaal
		
Veilig = Veilig Feest

vergunning = Vergunningen
energie = energiekosten
Werkzaam = Werkzaamheden V&F
DOS = DOS

stapplanJan = Stappenplan 01
stapplanFeb = Stappenplan 02
stapplanMrt = Stappenplan 03
stapplanApr = Stappenplan 04
stapplanMei = Stappenplan 05
stapplanJun = Stappenplan 06
stapplanJul = Stappenplan 07
stapplanAug = Stappenplan 08
stapplanSep = Stappenplan 09
stapplanOkt = Stappenplan 10
stapplanNov = Stappenplan 11
stapplanDec = Stappenplan 12

Liftkeuring = Keuring Lift
BliksemInspectie = Bliksem Inspectie

Temp01 = Temperatuur 01
Temp02 = Temperatuur 02
Temp03 = Temperatuur 03
Temp04 = Temperatuur 04
Temp05 = Temperatuur 05
Temp06 = Temperatuur 06
Temp07 = Temperatuur 07
Temp08 = Temperatuur 08
Temp09 = Temperatuur 09
Temp10 = Temperatuur 10
Temp11 = Temperatuur 11
Temp12 = Temperatuur 12

PVE = PVE

eFLO = FLO--
STD = STD

Kwartaalrondgang = Kwartaalrondgang

MeldingLegionella = Melding Legionella

kadastrale = Kadastrale Kaart
pva = Plan Van Aanpak

; overige Variabelen
Risicoanalyse = Risicoanalyse
DPC = DPC
Spoellijst = Spoellijst
Risicoanalyse = Risicoanalyse


2013 = 2013
2013 = 2013

;brandv 	= Brandveiligheidscan
Totaalscan = Totaal Scan 1e
;checkl	= Checklist
;WBtoF	= WB2E



/*

BEGIN CODE BIBLIOTHEEK::

*/




IfInString, clipboart, %VOH%
{
	Send {shiftdown}{tab 2}{shiftup}{home}{del 8}{tab 2}
	goto opnieuw
}

IfInString, clipboart, %STD%
{
goto STDstring
}

IfInString, clipboart, %DPC%
{
	Send {shiftdown}{tab}{shiftup}{ctrldown}c{ctrlup}{shiftdown}{tab 2}{shiftup}{enter}
	WinWait, Openen,
	IfWinNotActive, Openen, , WinActivate, Openen,
	WinWaitActive, Openen
	Send {ctrldown}v{ctrlup}{end}
	Send .dwg
	Send {enter}
	ifwinactive ahk_class #32770
	{
	ifwinnotactive ahk_class #32770
	winwaitactive ahk_class #32770
	Send {enter}
	sleep 10
	Send {esc}
	}
	WinWait, Frontpage - Google Chrome,
	IfWinNotActive, Frontpage - Google Chrome, , WinActivate, Frontpage - Google Chrome,
	WinWaitActive, Frontpage - Google Chrome,
	Send {tab 3}
	WinWait, Frontpage - Google Chrome,
	IfWinNotActive, Frontpage - Google Chrome, , WinActivate, Frontpage - Google Chrome,
	WinWaitActive, Frontpage - Google Chrome,
}




opnieuw:




/*
IfInString, clipboart, %brandv%
{
	Send Brandveiligheidscan,{space}
	Send {tab}A4{tab}{space}{tab}{space}{tab}{shiftdown}{tab 4}{shiftup}{end}
	clipboard = %clipboardold%
	Return
}

*/




 


IfInString, clipboart, %Totaalscan%
{
	Send Brandveiligheiscan 1e kwartaal, Florence geheel
	Send {tab}A3{tab}{space}{tab}{space}{tab}16{tab}05{tab 6}
	clipboard = %clipboardold%
	Return
}


IfInString, clipboart, %Kwartaalrondgang%
{
	Send Kwartaalrondgang,{space}
	Send {tab}A4{tab}{space}{tab}{space}{shiftdown}{tab 3}{shiftup}{end} 
	clipboard = %clipboardold%
	Return
}



; Bouwkundige Disciplines
IfInString, clipboart, %B2%
{
	Send Bouwkundige gevelaanzichten,
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B3%
{
	Send Bouwkundige doorsneden, doorsnede
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B4%
{
	Send Bouwkundige details, detail
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B5K1%
{
	Send Bouwkundige plattegrond, interieur kelder -1
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B500%
{
	Send Bouwkundige plattegrond, interieur begane grond
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B5T0%
{
	Send Bouwkundige plattegrond, interieur tussenverdieping tussen bg en 1e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B501%
{
	Send Bouwkundige plattegrond, interieur 1e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B5T1%
{
	Send Bouwkundige plattegrond, interieur tussenverdieping tussen 1e en 2e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B502%
{
	Send Bouwkundige plattegrond, interieur 2e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B503%
{
	Send Bouwkundige plattegrond, interieur 3e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B504%
{
	Send Bouwkundige plattegrond, interieur 4e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B505%
{
	Send Bouwkundige plattegrond, interieur 5e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B506%
{
	Send Bouwkundige plattegrond, interieur 6e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B507%
{
	Send Bouwkundige plattegrond, interieur 7e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B508%
{
	Send Bouwkundige plattegrond, interieur 8e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B509%
{
	Send Bouwkundige plattegrond, interieur 9e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B510%
{
	Send Bouwkundige plattegrond, interieur 10e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B6%
{
	Send Bouwkundige sparingen,
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B7%
{
	Send Bouwkundige constructie,
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B8K1%
{
	Send Bouwkundige plattegrond, plafond kelder -1
	clipboard = %clipboardold%
	Return
}

IfInString, clipboart, %B800%
{
	Send Bouwkundige plattegrond, plafond begane grond
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B801%
{
	Send Bouwkundige plattegrond, plafond 1e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B802%
{
	Send Bouwkundige plattegrond, plafond 2e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B803%
{
	Send Bouwkundige plattegrond, plafond 3e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B804%
{
	Send Bouwkundige plattegrond, plafond 4e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B805%
{
	Send Bouwkundige plattegrond, plafond 5e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B001%
{
	Send Bouwkundige situatie,
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B1TR%
{
	Send Bouwkundige plattegrond, terrein
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B10F%
{
	Send Bouwkundige plattegrond, fundering
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B1KR%
{
	Send Bouwkundige plattegrond, kruipruimte
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B10K%
{
	msgbox *ERROR*\nB10K is geen geldige verdieping!
	Send Bouwkundige plattegrond,  kelder -1
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B1K1%
{
	Send Bouwkundige plattegrond,  kelder -1
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B1K2%
{
	Send Bouwkundige plattegrond,  kelder -2
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B100%
{
	Send Bouwkundige plattegrond, begane grond
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B1T0%
{
	Send Bouwkundige plattegrond, tussenverdieping tussen bg en 1e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B101%
{
	Send Bouwkundige plattegrond, 1e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B1T1%
{
	Send Bouwkundige plattegrond, tussenverdieping tussen 1e en 2e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B102%
{
	Send Bouwkundige plattegrond, 2e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B103%
{
	Send Bouwkundige plattegrond, 3e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B104%
{
	Send Bouwkundige plattegrond, 4e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B105%
{
	Send Bouwkundige plattegrond, 5e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B106%
{
	Send Bouwkundige plattegrond, 6e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B107%
{
	Send Bouwkundige plattegrond, 7e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B108%
{
	Send Bouwkundige plattegrond, 8e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B109%
{
	Send Bouwkundige plattegrond, 9e verdieping
	clipboard = %clipboardold%
	Return
}
/*
IfInString, clipboart, %B110%
{
	Send Bouwkundige plattegrond, 10e verdieping
	clipboard = %clipboardold%
	Return
}
*/
IfInString, clipboart, %B11K1%
{
	Send Oppervlakteberekening, kelder -1
	Send {tab}A3{tab}{space}{shiftdown}{tab 3}{shiftup}
	clipboard = %clipboardold%
	Return
}


IfInString, clipboart, %B1100%
{
	Send Oppervlakteberekening, begane grond
	Send {tab}A3{tab}{space}{shiftdown}{tab 3}{shiftup}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B1101%
{
	Send Oppervlakteberekening, 1e verdieping
	Send {tab}A3{tab}{space}{shiftdown}{tab 3}{shiftup}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B1102%
{
	Send Oppervlakteberekening, 2e verdieping
	Send {tab}A3{tab}{space}{shiftdown}{tab 3}{shiftup}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B1103%
{
	Send Oppervlakteberekening, 3e verdieping
	Send {tab}A3{tab}{space}{shiftdown}{tab 3}{shiftup}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B1104%
{
	Send Oppervlakteberekening, 4e verdieping
	Send {tab}A3{tab}{space}{shiftdown}{tab 3}{shiftup}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B1105%
{
	Send Oppervlakteberekening, 5e verdieping
	Send {tab}A3{tab}{space}{shiftdown}{tab 3}{shiftup}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B1106%
{
	Send Oppervlakteberekening, 6e verdieping
	Send {tab}A3{tab}{space}{shiftdown}{tab 3}{shiftup}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B1107%
{
	Send Oppervlakteberekening, 7e verdieping
	Send {tab}A3{tab}{space}{shiftdown}{tab 3}{shiftup}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B1108%
{
	Send Oppervlakteberekening, 8e verdieping
	Send {tab}A3{tab}{space}{shiftdown}{tab 3}{shiftup}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B1109%
{
	Send Oppervlakteberekening, 9e verdieping
	Send {tab}A3{tab}{space}{shiftdown}{tab 3}{shiftup}
	clipboard = %clipboardold%
	Return
}


rabo:


;E-Installaties licht en kracht

IfInString, clipboart, %E3%
{
	IfInString, clipboart, %DPC%
{
	Send Elektrotechnische installatie, installatieschema verdeelkast
	Send {shiftdown}{tab 2}{shiftup}{home}{right 11}{shiftdown}{right 5}{shiftup}{ctrldown}c{ctrlup}{tab 2}{end}{space}{ctrldown}v{ctrlup}
	clipboard = %clipboardold%
	Return
}
else{
Send Elektrotechnische installatie, installatieschema verdeelkast
	Send {shiftdown}{tab 2}{shiftup}{home}{right 12}{shiftdown}{right 5}{shiftup}{ctrldown}c{ctrlup}{tab 2}{end}{space}{ctrldown}v{ctrlup}
	clipboard = %clipboardold%
	Return
}

}

IfInString, clipboart, %E4%
{
	IfInString, clipboart, %DPC%
{
	Send Elektrotechnische installatie, groepenverklaring verdeelkast
	Send {shiftdown}{tab 2}{shiftup}{home}{right 11}{shiftdown}{right 5}{shiftup}{ctrldown}c{ctrlup}{tab 2}{end}{space}{ctrldown}v{ctrlup}
	clipboard = %clipboardold%
	Return
}
else{
	Send Elektrotechnische installatie, groepenverklaring verdeelkast
	Send {shiftdown}{tab 2}{shiftup}{home}{right 12}{shiftdown}{right 5}{shiftup}{ctrldown}c{ctrlup}{tab 2}{end}{space}{ctrldown}v{ctrlup}
	clipboard = %clipboardold%
	Return
}
}
IfInString, clipboart, %E5%
{
	Send Elektrotechnische installatie, blokschema
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %E6%
{
	IfInString, clipboart, %DPC%
{
	Send Elektrotechnische installatie, stuurstroomschema verdeelkast
	Send {shiftdown}{tab 2}{shiftup}{home}{right 11}{shiftdown}{right 5}{shiftup}{ctrldown}c{ctrlup}{tab 2}{end}{space}{ctrldown}v{ctrlup}
	clipboard = %clipboardold%
	Return
}
else{
	Send Elektrotechnische installatie, stuurstroomschema verdeelkast
	Send {shiftdown}{tab 2}{shiftup}{home}{right 12}{shiftdown}{right 5}{shiftup}{ctrldown}c{ctrlup}{tab 2}{end}{space}{ctrldown}v{ctrlup}
	clipboard = %clipboardold%
	Return
}
}
IfInString, clipboart, %E7%
{
	Send Elektrotechnische installatie, principeschema
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %E8%
{
	Send Elektrotechnische installatie, detail
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %E10F%
{
	Send Elektrotechnische installatie t.b.v. licht en krachtinstallatie, plattegrond fundering
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %E1KR%
{
	Send Elektrotechnische installatie t.b.v. licht en krachtinstallatie, plattegrond kruipruimte
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %E1TR%
{
	Send Elektrotechnische installatie t.b.v. licht en krachtinstallatie, plattegrond terrein
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %E1K1%
{
	Send Elektrotechnische installatie t.b.v. licht en krachtinstallatie, plattegrond kelder -1
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %E1K2%
{
	Send Elektrotechnische installatie t.b.v. licht en krachtinstallatie, plattegrond kelder -2
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %E1T0%
{
	Send Elektrotechnische installatie t.b.v. licht en krachtinstallatie, plattegrond tussenverdieping tussen bg en 1e verdieping
	Send {tab}
	clipboard = %clipboardold%
	Return
}

IfInString, clipboart, %E100%
{
	Send Elektrotechnische installatie t.b.v. licht en krachtinstallatie, plattegrond begane grond
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %E1T1%
{
	Send Elektrotechnische installatie t.b.v. licht en krachtinstallatie, plattegrond tussenverdieping tussen 1e en 2e verdieping
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %E101%
{
	Send Elektrotechnische installatie t.b.v. licht en krachtinstallatie, plattegrond 1e verdieping
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %E102%
{
	Send Elektrotechnische installatie t.b.v. licht en krachtinstallatie, plattegrond 2e verdieping
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %E103%
{
	Send Elektrotechnische installatie t.b.v. licht en krachtinstallatie, plattegrond 3e verdieping
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %E104%
{
	Send Elektrotechnische installatie t.b.v. licht en krachtinstallatie, plattegrond 4e verdieping
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %E105%
{
	Send Elektrotechnische installatie t.b.v. licht en krachtinstallatie, plattegrond 5e verdieping
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %E106%
{
	Send Elektrotechnische installatie t.b.v. licht en krachtinstallatie, plattegrond 6e verdieping
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %E107%
{
	Send Elektrotechnische installatie t.b.v. licht en krachtinstallatie, plattegrond 7e verdieping
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %E108%
{
	Send Elektrotechnische installatie t.b.v. licht en krachtinstallatie, plattegrond 8e verdieping
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %E109%
{
	Send Elektrotechnische installatie t.b.v. licht en krachtinstallatie, plattegrond 9e verdieping
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %E110%
{
	Send Elektrotechnische installatie t.b.v. licht en krachtinstallatie, plattegrond 10e verdieping
	Send {tab}
	clipboard = %clipboardold%
	Return
}

;E-installatie zwakstroom


IfInString, clipboart, %E2K2%
{
	Send Elektrotechnische installatie t.b.v. zwakstroominstallatie plattegrond kelder -2
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %E2K1%
{
	Send Elektrotechnische installatie t.b.v. zwakstroominstallatie plattegrond kelder -1
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %E20F%
{
	Send Elektrotechnische installatie t.b.v. zwakstroominstallatie plattegrond fundering
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %E2KR%
{
	Send Elektrotechnische installatie t.b.v. zwakstroominstallatie plattegrond kruipruimte
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %E2TR%
{
	Send Elektrotechnische installatie t.b.v. zwakstroominstallatie plattegrond terrein
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %E200%
{
	Send Elektrotechnische installatie t.b.v. zwakstroominstallatie plattegrond begane grond
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %E2T0%
{
	Send Elektrotechnische installatie t.b.v. zwakstroominstallatie, plattegrond tussenverdieping tussen bg en 1e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %E201%
{
	Send Elektrotechnische installatie t.b.v. zwakstroominstallatie plattegrond 1e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %E2T1%
{
	Send Elektrotechnische installatie t.b.v. zwakstroominstallatie, plattegrond tussenverdieping tussen 1e en 2e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %E202%
{
	Send Elektrotechnische installatie t.b.v. zwakstroominstallatie plattegrond 2e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %E203%
{
	Send Elektrotechnische installatie t.b.v. zwakstroominstallatie plattegrond 3e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %E204%
{
	Send Elektrotechnische installatie t.b.v. zwakstroominstallatie plattegrond 4e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %E205%
{
	Send Elektrotechnische installatie t.b.v. zwakstroominstallatie plattegrond 5e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %E206%
{
	Send Elektrotechnische installatie t.b.v. zwakstroominstallatie plattegrond 6e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %E207%
{
	Send Elektrotechnische installatie t.b.v. zwakstroominstallatie plattegrond 7e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %E208%
{
	Send Elektrotechnische installatie t.b.v. zwakstroominstallatie plattegrond 8e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %E209%
{
	Send Elektrotechnische installatie t.b.v. zwakstroominstallatie plattegrond 9e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %E210%
{
	Send Elektrotechnische installatie t.b.v. zwakstroominstallatie plattegrond 10e verdieping
	clipboard = %clipboardold%
	Return
}




;W-installatie t.b.v. klimaat

IfInString, clipboart, %W10F%
{
	Send Werktuigbouwkundige installatie t.b.v. klimaat installatie, plattegrond fundering
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %W1K2%
{
	Send Werktuigbouwkundige installatie t.b.v. klimaat installatie, plattegrond kelder -2
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %W1K1%
{
	Send Werktuigbouwkundige installatie t.b.v. klimaat installatie, plattegrond kelder -1
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %W1KR%
{
	Send Werktuigbouwkundige installatie t.b.v. klimaat installatie, plattegrond kruipruimte
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %W100%
{
	Send Werktuigbouwkundige installatie t.b.v. klimaat installatie, plattegrond begane grond
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %W1T0%
{
	Send Werktuigbouwkundige installatie t.b.v. klimaat installatie, plattegrond tussenverdieping tussen bg en 1e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %W101%
{
	Send Werktuigbouwkundige installatie t.b.v. klimaat installatie, plattegrond 1e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %W1T1%
{
	Send Werktuigbouwkundige installatie t.b.v. klimaat installatie, plattegrond tussenverdieping tussen 1e en 2e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %W102%
{
	Send Werktuigbouwkundige installatie t.b.v. klimaat installatie, plattegrond 2e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %W103%
{
	Send Werktuigbouwkundige installatie t.b.v. klimaat installatie, plattegrond 3e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %W104%
{
	Send Werktuigbouwkundige installatie t.b.v. klimaat installatie, plattegrond 4e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %W105%
{
	Send Werktuigbouwkundige installatie t.b.v. klimaat installatie, plattegrond 5e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %W106%
{
	Send Werktuigbouwkundige installatie t.b.v. klimaat installatie, plattegrond 6e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %W107%
{
	Send Werktuigbouwkundige installatie t.b.v. klimaat installatie, plattegrond 7e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %W108%
{
	Send Werktuigbouwkundige installatie t.b.v. klimaat installatie, plattegrond 8e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %W109%
{
	Send Werktuigbouwkundige installatie t.b.v. klimaat installatie, plattegrond 9e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %W110%
{
	Send Werktuigbouwkundige installatie t.b.v. klimaat installatie, plattegrond 10e verdieping
	clipboard = %clipboardold%
	Return
}
;W-Installatie t.b.v. santiair
IfInString, clipboart, %W20F%
{
	Send Werktuigbouwkundige installatie t.b.v. sanitair installatie, plattegrond fundering
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %W2K1%
{
	Send Werktuigbouwkundige installatie t.b.v. sanitair installatie, plattegrond kelder -1
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %W2K2%
{
	Send Werktuigbouwkundige installatie t.b.v. sanitair installatie, plattegrond kelder -2
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %W2KR%
{
	Send Werktuigbouwkundige installatie t.b.v. sanitair installatie, plattegrond kruipruimte
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %W2TR%
{
	Send Werktuigbouwkundige installatie t.b.v. sanitair installatie, plattegrond terrein
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %W200%
{
	Send Werktuigbouwkundige installatie t.b.v. sanitair installatie, plattegrond begane grond
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %W2T0%
{
	Send Werktuigbouwkundige installatie t.b.v. sanitair installatie, plattegrond tussenverdieping tussen bg en 1e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %W201%
{
	Send Werktuigbouwkundige installatie t.b.v. sanitair installatie, plattegrond 1e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %W2T1%
{
	Send Werktuigbouwkundige installatie t.b.v. sanitair installatie, plattegrond tussenverdieping tussen 1e en 2e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %W202%
{
	Send Werktuigbouwkundige installatie t.b.v. sanitair installatie, plattegrond 2e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %W203%
{
	Send Werktuigbouwkundige installatie t.b.v. sanitair installatie, plattegrond 3e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %W204%
{
	Send Werktuigbouwkundige installatie t.b.v. sanitair installatie, plattegrond 4e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %W205%
{
	Send Werktuigbouwkundige installatie t.b.v. sanitair installatie, plattegrond 5e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %W206%
{
	Send Werktuigbouwkundige installatie t.b.v. sanitair installatie, plattegrond 6e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %W207%
{
	Send Werktuigbouwkundige installatie t.b.v. sanitair installatie, plattegrond 7e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %W208%
{
	Send Werktuigbouwkundige installatie t.b.v. sanitair installatie, plattegrond 8e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %W209%
{
	Send Werktuigbouwkundige installatie t.b.v. sanitair installatie, plattegrond 9e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %W210%
{
	Send Werktuigbouwkundige installatie t.b.v. sanitair installatie, plattegrond 10e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %W3%
{
	Send Werktuigbouwkundige installatie, gas
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %W4%
{
	Send Werktuigbouwkundige installatie, principeschema
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %W5%
{
	Send Werktuigbouwkundige installatie, detail
	clipboard = %clipboardold%
	Return
}


IfInString, clipboart, %PVE%
{
	Send Programma van eisen, 
	clipboard = %clipboardold%
	Return
}








; Verpleegkundige Installaties

IfInString, clipboart, %VP100%
{
	Send Verpleegkundig oproepsysteem, plattegrond begane grond
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %VP1T0%
{
	Send Verpleegkundig oproepsysteem, plattegrond tussenverdieping tussen bg en 1e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %VP101%
{
	Send Verpleegkundig oproepsysteem, plattegrond 1e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %VP1T1%
{
	Send Verpleegkundig oproepsysteem, plattegrond tussenverdieping tussen 1e en 2e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %VP102%
{
	Send Verpleegkundig oproepsysteem, plattegrond 2e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %VP103%
{
	Send Verpleegkundig oproepsysteem, plattegrond 3e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %VP104%
{
	Send Verpleegkundig oproepsysteem, plattegrond 4e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %VP105%
{
	Send Verpleegkundig oproepsysteem, plattegrond 5e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %VP106%
{
	Send Verpleegkundig oproepsysteem, plattegrond 6e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %VP107%
{
	Send Verpleegkundig oproepsysteem, plattegrond 7e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %VP108%
{
	Send Verpleegkundig oproepsysteem, plattegrond 8e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %VP109%
{
	Send Verpleegkundig oproepsysteem, plattegrond 9e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %VP110%
{
	Send Verpleegkundig oproepsysteem, plattegrond 9e verdieping
	clipboard = %clipboardold%
	Return
}



;Bliksem/Aardinginstallatie


IfInString, clipboart, %BliksemInspectie%
{
	Send Inspectiecertificaat bliksembeveiliging,
	Send {shiftdown}{tab 2}{shiftup}{end}{shiftdown}{left 4}{shiftup}{ctrldown}c{ctrlup}{tab 2}{end}{space}{ctrldown}v{ctrlup}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %A10F%
{
	Send Bliksem/Aardingsinstallatie, plattegrond fundering
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %VP2%
{
	Send Verpleegkundig oproepsysteem, blokschema
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %VP3%
{
	Send Verpleegkundig oproepsysteem, principeschema
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %VP4%
{
	Send Verpleegkundig oproepsysteem, detail
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %A100%
{
	Send Bliksem/Aardingsinstallatie, plattegrond begane grond
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %A1T0%
{
	Send Bliksem/Aardingsinstallatie, plattegrond tussenverdieping tussen bg en 1e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %A101%
{
	Send Bliksem/Aardingsinstallatie, plattegrond 1e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %A1T1%
{
	Send Bliksem/Aardingsinstallatie, plattegrond tussenverdieping tussen 1e en 2e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %A102%
{
	Send Bliksem/Aardingsinstallatie, plattegrond 2e verdieping
	clipboard = %clipboardold%z
	Return
}
IfInString, clipboart, %A103%
{
	Send Bliksem/Aardingsinstallatie, plattegrond 3e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %A104%
{
	Send Bliksem/Aardingsinstallatie, plattegrond 4e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %A105%
{
	Send Bliksem/Aardingsinstallatie, plattegrond 5e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %A106%
{
	Send Bliksem/Aardingsinstallatie, plattegrond 6e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %A107%
{
	Send Bliksem/Aardingsinstallatie, plattegrond 7e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %A108%
{
	Send Bliksem/Aardingsinstallatie, plattegrond 8e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %A109%
{
	Send Bliksem/Aardingsinstallatie, plattegrond 9e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %A110%
{
	Send Bliksem/Aardingsinstallatie, plattegrond 10e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %A200%
{
	Send Bliksem/Aardingsinstallatie, blokschema
	clipboard = %clipboardold%
	Return
}



;Data Installatie

IfInString, clipboart, %D2%
{
	Send Data installatie, blokschema
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %D1TR%
{
	Send Data installatie, terrein
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %D1K2%
{
	Send Data installatie, plattegrond kelder -2
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %D1K1%
{
	Send Data installatie, plattegrond kelder -1
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %D100%
{
	Send Data installatie, plattegrond begane grond
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %D1T0%
{
	Send Data installatie, plattegrond tussenverdieping tussen bg en 1e verdieping
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %D101%
{
	Send Data installatie, plattegrond 1e verdieping
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %D1T1%
{
	Send Data installatie, plattegrond tussenverdieping tussen 1e en 2e verdieping
	Send {tab}
	clipboard = %clipboardold%
	Return
}

IfInString, clipboart, %D102%
{
	Send Data installatie, plattegrond 2e verdieping
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %D103%
{
	Send Data installatie, plattegrond 3e verdieping
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %D104%
{
	Send Data installatie, plattegrond 4e verdieping
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %D105%
{
	Send Data installatie, plattegrond 5e verdieping
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %D106%
{
	Send Data installatie, plattegrond 6e verdieping
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %D107%
{
	Send Data installatie, plattegrond 7e verdieping
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %D108%
{
	Send Data installatie, plattegrond 8e verdieping
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %D109%
{
	Send Data installatie, plattegrond 9e verdieping
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %D110%
{
	Send Data installatie, plattegrond 10e verdieping
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %D2%
{
	Send Data installatie, blokschema
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %D3%
{
	Send Data installatie, principeschema
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %D4%
{
	Send Data installatie, detail
	clipboard = %clipboardold%
	Return
}



;Gebruiksvergunning

IfInString, clipboart, %G100%
{
	Send Gebruiksvergunning, plattegrond begane grond
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %G1T0%
{
	Send Gebruiksvergunning, plattegrond tussenverdieping tussen bg en 1e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %G101%
{
	Send Gebruiksvergunning, plattegrond 1e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %G1T1%
{
	Send Gebruiksvergunning, plattegrond tussen verdieping tussen 1e en 2e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %G102%
{
	Send Gebruiksvergunning, plattegrond 2 verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %G103%
{
	Send Gebruiksvergunning, plattegrond 3e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %G104%
{
	Send Gebruiksvergunning, plattegrond 4e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %G105%
{
	Send Gebruiksvergunning, plattegrond 5e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %G106%
{
	Send Gebruiksvergunning, plattegrond 6e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %G107%
{
	Send Gebruiksvergunning, plattegrond 7e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %G108%
{
	Send Gebruiksvergunning, plattegrond 8e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %G109%
{
	Send Gebruiksvergunning, plattegrond 9e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %G110%
{
	Send Gebruiksvergunning, plattegrond 10e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %G1K1%
{
	Send Gebruiksvergunning, plattegrond kelder -1
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %G1K2%
{
	Send Gebruiksvergunning, plattegrond kelder -2
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %G1TR%
{
	Send Gebruiksvergunning, plattegrond terrein
	clipboard = %clipboardold%
	Return
}


;Brandmeldinstallatie


IfInString, clipboart, %BM1TR%
{
	Send Brandmeldinstallatie, plattegrond terrein
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %BM1K1%
{
	Send Brandmeldinstallatie, plattegrond kelder -1
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %BM100%
{
	Send Brandmeldinstallatie, plattegrond begane grond
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %BM101%
{
	Send Brandmeldinstallatie, plattegrond 1e verdieping
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %BM102%
{
	Send Brandmeldinstallatie, plattegrond 2e verdieping
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %BM103%
{
	Send Brandmeldinstallatie, plattegrond 3e verdieping
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %BM104%
{
	Send Brandmeldinstallatie, plattegrond 4e verdieping
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %BM105%
{
	Send Brandmeldinstallatie, plattegrond 5e verdieping
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %BM106%
{
	Send Brandmeldinstallatie, plattegrond 6e verdieping
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %BM107%
{
	Send Brandmeldinstallatie, plattegrond 7e verdieping
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %BM108%
{
	Send Brandmeldinstallatie, plattegrond 8e verdieping
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %BM109%
{
	Send Brandmeldinstallatie, plattegrond 9e verdieping
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %BM110%
{
	Send Brandmeldinstallatie, plattegrond 10e verdieping
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %BM2%
{
	Send Brandmeldinstallatie, blokschema
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %BM3%
{
	Send Brandmeldinstallatie, principeschema
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %BM4%
{
	Send Brandmeldinstallatie, detail
	clipboard = %clipboardold%
	Return
}





; BRANDCOMPARTIMENTEN
IfInString, clipboart, %B9K1%
{
	Send Brandcompartimentering, plattegrond kelder -1
	Send {tab}A3{tab}{space}{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B900%
{
	Send Brandcompartimentering, plattegrond begane grond
	Send {tab}A3{tab}{space}{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B901%
{
	Send Brandcompartimentering, plattegrond 1e verdieping
	Send {tab}A3{tab}{space}{tab 2}
	clipboard = %clipboardold%
	Return
}IfInString, clipboart, %B902%
{
	Send Brandcompartimentering, plattegrond 2e verdieping
	Send {tab}A3{tab}{space}{tab 2}
	clipboard = %clipboardold%
	Return
}IfInString, clipboart, %B903%
{
	Send Brandcompartimentering, plattegrond 3e verdieping
	Send {tab}A3{tab}{space}{tab 2}
	clipboard = %clipboardold%
	Return
}IfInString, clipboart, %B904%
{
	Send Brandcompartimentering, plattegrond 4e verdieping
	Send {tab}A3{tab}{space}{tab 2}
	clipboard = %clipboardold%
	Return
}IfInString, clipboart, %B905%
{
	Send Brandcompartimentering, plattegrond 5e verdieping
	Send {tab}A3{tab}{space}{tab 2}
	clipboard = %clipboardold%
	Return
}IfInString, clipboart, %B906%
{
	Send Brandcompartimentering, plattegrond 6e verdieping
	Send {tab}A3{tab}{space}{tab 2}
	clipboard = %clipboardold%
	Return
}IfInString, clipboart, %B907%
{
	Send Brandcompartimentering, plattegrond 7e verdieping
	Send {tab}A3{tab}{space}{tab 2}
	clipboard = %clipboardold%
	Return
}IfInString, clipboart, %B908%
{
	Send Brandcompartimentering, plattegrond 8e verdieping
	Send {tab}A3{tab}{space}{tab 2}
	clipboard = %clipboardold%
	Return
}IfInString, clipboart, %B909%
{
	Send Brandcompartimentering, plattegrond 9e verdieping
	Send {tab}A3{tab}{space}{tab 2}
	clipboard = %clipboardold%
	Return
}IfInString, clipboart, %B910%
{
	Send Brandcompartimentering, plattegrond 10e verdieping
	Send {tab}A3{tab}{space}{tab 2}
	clipboard = %clipboardold%
	Return
}









; VLUCHTPLANNEN

IfInString, clipboart, %VK101%
{
	Send Vluchtplan 1, kelder -1
	Send {tab}A3{tab}{space}{tab}{space}{tab}25{tab}07{tab}2013{tab 5}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %VK102%
{
	Send Vluchtplan 2, kelder -1
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %VK103%
{
	Send Vluchtplan 3, kelder -1
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %VK104%
{
	Send Vluchtplan 4, kelder -1
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %VK105%
{
	Send Vluchtplan 5, kelder -1
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %VK106%
{
	Send Vluchtplan 6, kelder -1
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %VK107%
{
	Send Vluchtplan 7, kelder -1
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %VK108%
{
	Send Vluchtplan 8, kelder -1
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %VK109%
{
	Send Vluchtplan 9, kelder -1
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %VK110%
{
	Send Vluchtplan 10, kelder -1
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}




;Begane grond
IfInString, clipboart, %V0001%
{
	Send Vluchtplan 1, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0002%
{
	Send Vluchtplan 2, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0003%
{
	Send Vluchtplan 3, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0004%
{
	Send Vluchtplan 4, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0005%
{
	Send Vluchtplan 5, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0006%
{
	Send Vluchtplan 6, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0007%
{
	Send Vluchtplan 7, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0008%
{
	Send Vluchtplan 8, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0009%
{
	Send Vluchtplan 9, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0010%
{
	Send Vluchtplan 10, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0011%
{
	Send Vluchtplan 11, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0012%
{
	Send Vluchtplan 12, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0013%
{
	Send Vluchtplan 13, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0014%
{
	Send Vluchtplan 14, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%z
	Return
}
IfInString, clipboart, %V0015%
{
	Send Vluchtplan 15, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%z
	Return
}
IfInString, clipboart, %V0016%
{
	Send Vluchtplan 16, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0017%
{
	Send Vluchtplan 17, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0018%
{
	Send Vluchtplan 18, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0019%
{
	Send Vluchtplan 19, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0020%
{
	Send Vluchtplan 20, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0021%
{
	Send Vluchtplan 21, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0022%
{
	Send Vluchtplan 22, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0023%
{
	Send Vluchtplan 23, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0024%
{
	Send Vluchtplan 24, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0025%
{
	Send Vluchtplan 25, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0026%
{
	Send Vluchtplan 26, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0027%
{
	Send Vluchtplan 27, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0028%
{
	Send Vluchtplan 28, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0029%
{
	Send Vluchtplan 29, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0030%
{
	Send Vluchtplan 30, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0101%
{
	Send Vluchtplan 1, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0102%
{
	Send Vluchtplan 2, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0103%
{
	Send Vluchtplan 3, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0104%
{
	Send Vluchtplan 4, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0105%
{
	Send Vluchtplan 5, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0106%
{
	Send Vluchtplan 6, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0107%
{
	Send Vluchtplan 7, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0108%
{
	Send Vluchtplan 8, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0109%
{
	Send Vluchtplan 9, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0110%
{
	Send Vluchtplan 10, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0111%
{
	Send Vluchtplan 11, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0112%
{
	Send Vluchtplan 12, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0113%
{
	Send Vluchtplan 13, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0114%
{
	Send Vluchtplan 14, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0115%
{
	Send Vluchtplan 15, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0116%
{
	Send Vluchtplan 16, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0117%
{
	Send Vluchtplan 17, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0118%
{
	Send Vluchtplan 18, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0119%
{
	Send Vluchtplan 19, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0120%
{
	Send Vluchtplan 20, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0121%
{
	Send Vluchtplan 21, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0122%
{
	Send Vluchtplan 22, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0123%
{
	Send Vluchtplan 23, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0124%
{
	Send Vluchtplan 24, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0125%
{
	Send Vluchtplan 25, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0126%
{
	Send Vluchtplan 26, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0127%
{
	Send Vluchtplan 27, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0128%
{
	Send Vluchtplan 28, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0129%
{
	Send Vluchtplan 29, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0130%
{
	Send Vluchtplan 30, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0201%
{
	Send Vluchtplan 1, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0202%
{
	Send Vluchtplan 2, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0203%
{
	Send Vluchtplan 3, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0204%
{
	Send Vluchtplan 4, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0205%
{
	Send Vluchtplan 5, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0206%
{
	Send Vluchtplan 6, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0207%
{
	Send Vluchtplan 7, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0208%
{
	Send Vluchtplan 8, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0209%
{
	Send Vluchtplan 9, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0210%
{
	Send Vluchtplan 10, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0211%
{
	Send Vluchtplan 11, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0212%
{
	Send Vluchtplan 12, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0213%
{
	Send Vluchtplan 13, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0214%
{
	Send Vluchtplan 14, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0215%
{
	Send Vluchtplan 15, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0216%
{
	Send Vluchtplan 16, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0217%
{
	Send Vluchtplan 17, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0218%
{
	Send Vluchtplan 18, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0219%
{
	Send Vluchtplan 19, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0220%
{
	Send Vluchtplan 20, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0221%
{
	Send Vluchtplan 21, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0222%
{
	Send Vluchtplan 22, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0223%
{
	Send Vluchtplan 23, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0224%
{
	Send Vluchtplan 24, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0225%
{
	Send Vluchtplan 25, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0226%
{
	Send Vluchtplan 26, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0227%
{
	Send Vluchtplan 27, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0228%
{
	Send Vluchtplan 28, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0229%
{
	Send Vluchtplan 29, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0230%
{
	Send Vluchtplan 30, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0301%
{
	Send Vluchtplan 1, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0302%
{
	Send Vluchtplan 2, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0303%
{
	Send Vluchtplan 3, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0304%
{
	Send Vluchtplan 4, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0305%
{
	Send Vluchtplan 5, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0306%
{
	Send Vluchtplan 6, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0307%
{
	Send Vluchtplan 7, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0308%
{
	Send Vluchtplan 8, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0309%
{
	Send Vluchtplan 9, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0310%
{
	Send Vluchtplan 10, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0311%
{
	Send Vluchtplan 11, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0312%
{
	Send Vluchtplan 12, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0313%
{
	Send Vluchtplan 13, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0314%
{
	Send Vluchtplan 14, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0315%
{
	Send Vluchtplan 15, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0316%
{
	Send Vluchtplan 16, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0317%
{
	Send Vluchtplan 17, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0318%
{
	Send Vluchtplan 18, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0319%
{
	Send Vluchtplan 19, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0320%
{
	Send Vluchtplan 20, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0321%
{
	Send Vluchtplan 21, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0322%
{
	Send Vluchtplan 22, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0323%
{
	Send Vluchtplan 23, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0324%
{
	Send Vluchtplan 24, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0325%
{
	Send Vluchtplan 25, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0326%
{
	Send Vluchtplan 26, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0327%
{
	Send Vluchtplan 27, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0328%
{
	Send Vluchtplan 28, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0329%
{
	Send Vluchtplan 29, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0330%
{
	Send Vluchtplan 30, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0401%
{
	Send Vluchtplan 1, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0402%
{
	Send Vluchtplan 2, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0403%
{
	Send Vluchtplan 3, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0404%
{
	Send Vluchtplan 4, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0405%
{
	Send Vluchtplan 5, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0406%
{
	Send Vluchtplan 6, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0407%
{
	Send Vluchtplan 7, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0408%
{
	Send Vluchtplan 8, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0409%
{
	Send Vluchtplan 9, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0410%
{
	Send Vluchtplan 10, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0411%
{
	Send Vluchtplan 11, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0412%
{
	Send Vluchtplan 12, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0413%
{
	Send Vluchtplan 13, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0414%
{
	Send Vluchtplan 14, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0415%
{
	Send Vluchtplan 15, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0416%
{
	Send Vluchtplan 16, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0417%
{
	Send Vluchtplan 17, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0418%
{
	Send Vluchtplan 18, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0419%
{
	Send Vluchtplan 19, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0420%
{
	Send Vluchtplan 20, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0421%
{
	Send Vluchtplan 21, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0422%
{
	Send Vluchtplan 22, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0423%
{
	Send Vluchtplan 23, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0424%
{
	Send Vluchtplan 24, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0425%
{
	Send Vluchtplan 25, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0426%
{
	Send Vluchtplan 26, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0427%
{
	Send Vluchtplan 27, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0428%
{
	Send Vluchtplan 28, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0429%
{
	Send Vluchtplan 29, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0430%
{
	Send Vluchtplan 30, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0501%
{
	Send Vluchtplan 1, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0502%
{
	Send Vluchtplan 2, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0503%
{
	Send Vluchtplan 3, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0504%
{
	Send Vluchtplan 4, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0505%
{
	Send Vluchtplan 5, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0506%
{
	Send Vluchtplan 6, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0507%
{
	Send Vluchtplan 7, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0508%
{
	Send Vluchtplan 8, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0509%
{
	Send Vluchtplan 9, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0510%
{
	Send Vluchtplan 10, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0511%
{
	Send Vluchtplan 11, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0512%
{
	Send Vluchtplan 12, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0513%
{
	Send Vluchtplan 13, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0514%
{
	Send Vluchtplan 14, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0515%
{
	Send Vluchtplan 15, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0516%
{
	Send Vluchtplan 16, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0517%
{
	Send Vluchtplan 17, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0518%
{
	Send Vluchtplan 18, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0519%
{
	Send Vluchtplan 19, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0520%
{
	Send Vluchtplan 20, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0521%
{
	Send Vluchtplan 21, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0522%
{
	Send Vluchtplan 22, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0523%
{
	Send Vluchtplan 23, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0524%
{
	Send Vluchtplan 24, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0525%
{
	Send Vluchtplan 25, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0526%
{
	Send Vluchtplan 26, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0527%
{
	Send Vluchtplan 27, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0528%
{
	Send Vluchtplan 28, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0529%
{
	Send Vluchtplan 29, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0530%
{
	Send Vluchtplan 30, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0601%
{
	Send Vluchtplan 1, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0602%
{
	Send Vluchtplan 2, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0603%
{
	Send Vluchtplan 3, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0604%
{
	Send Vluchtplan 4, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0605%
{
	Send Vluchtplan 5, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0606%
{
	Send Vluchtplan 6, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0607%
{
	Send Vluchtplan 7, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0608%
{
	Send Vluchtplan 8, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0609%
{
	Send Vluchtplan 9, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0610%
{
	Send Vluchtplan 10, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0611%
{
	Send Vluchtplan 11, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0612%
{
	Send Vluchtplan 12, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0613%
{
	Send Vluchtplan 13, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0614%
{
	Send Vluchtplan 14, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0615%
{
	Send Vluchtplan 15, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0616%
{
	Send Vluchtplan 16, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0617%
{
	Send Vluchtplan 17, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0618%
{
	Send Vluchtplan 18, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0619%
{
	Send Vluchtplan 19, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0620%
{
	Send Vluchtplan 20, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0621%
{
	Send Vluchtplan 21, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0622%
{
	Send Vluchtplan 22, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0623%
{
	Send Vluchtplan 23, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0624%
{
	Send Vluchtplan 24, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0625%
{
	Send Vluchtplan 25, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0626%
{
	Send Vluchtplan 26, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0627%
{
	Send Vluchtplan 27, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0628%
{
	Send Vluchtplan 28, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0629%
{
	Send Vluchtplan 29, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0630%
{
	Send Vluchtplan 30, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0701%
{
	Send Vluchtplan 1, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0702%
{
	Send Vluchtplan 2, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0703%
{
	Send Vluchtplan 3, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0704%
{
	Send Vluchtplan 4, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0705%
{
	Send Vluchtplan 5, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0706%
{
	Send Vluchtplan 6, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0707%
{
	Send Vluchtplan 7, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0708%
{
	Send Vluchtplan 8, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0709%
{
	Send Vluchtplan 9, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0710%
{
	Send Vluchtplan 10, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0711%
{
	Send Vluchtplan 11, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0712%
{
	Send Vluchtplan 12, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0713%
{
	Send Vluchtplan 13, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0714%
{
	Send Vluchtplan 14, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0715%
{
	Send Vluchtplan 15, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0716%
{
	Send Vluchtplan 16, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0717%
{
	Send Vluchtplan 17, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0718%
{
	Send Vluchtplan 18, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0719%
{
	Send Vluchtplan 19, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0720%
{
	Send Vluchtplan 20, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0721%
{
	Send Vluchtplan 21, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0722%
{
	Send Vluchtplan 22, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0723%
{
	Send Vluchtplan 23, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0724%
{
	Send Vluchtplan 24, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0725%
{
	Send Vluchtplan 25, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0726%
{
	Send Vluchtplan 26, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0727%
{
	Send Vluchtplan 27, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0728%
{
	Send Vluchtplan 28, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0729%
{
	Send Vluchtplan 29, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0730%
{
	Send Vluchtplan 30, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0801%
{
	Send Vluchtplan 1, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0802%
{
	Send Vluchtplan 2, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0803%
{
	Send Vluchtplan 3, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0804%
{
	Send Vluchtplan 4, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0805%
{
	Send Vluchtplan 5, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0806%
{
	Send Vluchtplan 6, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0807%
{
	Send Vluchtplan 7, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0808%
{
	Send Vluchtplan 8, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0809%
{
	Send Vluchtplan 9, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0810%
{
	Send Vluchtplan 10, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0811%
{
	Send Vluchtplan 11, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0812%
{
	Send Vluchtplan 12, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0813%
{
	Send Vluchtplan 13, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0814%
{
	Send Vluchtplan 14, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0815%
{
	Send Vluchtplan 15, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0816%
{
	Send Vluchtplan 16, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0817%
{
	Send Vluchtplan 17, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0818%
{
	Send Vluchtplan 18, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0819%
{
	Send Vluchtplan 19, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0820%
{
	Send Vluchtplan 20, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0821%
{
	Send Vluchtplan 21, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0822%
{
	Send Vluchtplan 22, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0823%
{
	Send Vluchtplan 23, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0824%
{
	Send Vluchtplan 24, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0825%
{
	Send Vluchtplan 25, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0826%
{
	Send Vluchtplan 26, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0827%
{
	Send Vluchtplan 27, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0828%
{
	Send Vluchtplan 28, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0829%
{
	Send Vluchtplan 29, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0830%
{
	Send Vluchtplan 30, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0901%
{
	Send Vluchtplan 1, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0902%
{
	Send Vluchtplan 2, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0903%
{
	Send Vluchtplan 3, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0904%
{
	Send Vluchtplan 4, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0905%
{
	Send Vluchtplan 5, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0906%
{
	Send Vluchtplan 6, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0907%
{
	Send Vluchtplan 7, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0908%
{
	Send Vluchtplan 8, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0909%
{
	Send Vluchtplan 9, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0910%
{
	Send Vluchtplan 10, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0911%
{
	Send Vluchtplan 11, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0912%
{
	Send Vluchtplan 12, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0913%
{
	Send Vluchtplan 13, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0914%
{
	Send Vluchtplan 14, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0915%
{
	Send Vluchtplan 15, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0916%
{
	Send Vluchtplan 16, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0917%
{
	Send Vluchtplan 17, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0918%
{
	Send Vluchtplan 18, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0919%
{
	Send Vluchtplan 19, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0920%
{
	Send Vluchtplan 20, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0921%
{
	Send Vluchtplan 21, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0922%
{
	Send Vluchtplan 22, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0923%
{
	Send Vluchtplan 23, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0924%
{
	Send Vluchtplan 24, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0925%
{
	Send Vluchtplan 25, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0926%
{
	Send Vluchtplan 26, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0927%
{
	Send Vluchtplan 27, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0928%
{
	Send Vluchtplan 28, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0929%
{
	Send Vluchtplan 29, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0930%
{
	Send Vluchtplan 30, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V1001%
{
	Send Vluchtplan 1, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V1002%
{
	Send Vluchtplan 2, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V1003%
{
	Send Vluchtplan 3, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V1004%
{
	Send Vluchtplan 4, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V1005%
{
	Send Vluchtplan 5, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V1006%
{
	Send Vluchtplan 6, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V1007%
{
	Send Vluchtplan 7, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V1008%
{
	Send Vluchtplan 8, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V1009%
{
	Send Vluchtplan 9, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V1010%
{
	Send Vluchtplan 10, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V1011%
{
	Send Vluchtplan 11, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V1012%
{
	Send Vluchtplan 12, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V1013%
{
	Send Vluchtplan 13, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V1014%
{
	Send Vluchtplan 14, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V1015%
{
	Send Vluchtplan 15, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V1016%
{
	Send Vluchtplan 16, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V1017%
{
	Send Vluchtplan 17, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V1018%
{
	Send Vluchtplan 18, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V1019%
{
	Send Vluchtplan 19, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V1020%
{
	Send Vluchtplan 20, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V1021%
{
	Send Vluchtplan 21, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V1022%
{
	Send Vluchtplan 22, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V1023%
{
	Send Vluchtplan 23, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V1024%
{
	Send Vluchtplan 24, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V1025%
{
	Send Vluchtplan 25, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V1026%
{
	Send Vluchtplan 26, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V1027%
{
	Send Vluchtplan 27, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V1028%
{
	Send Vluchtplan 28, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V1029%
{
	Send Vluchtplan 29, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V1030%
{
	Send Vluchtplan 30, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}





;Sprinkler Installaties

IfInString, clipboart, %S1KR%
{
	Send Sprinklerinstallatie, plattegrond kruipruimte / fundering
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %S100%
{
	Send Sprinklerinstallatie, plattegrond begane grond
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %S101%
{
	Send Sprinklerinstallatie, plattegrond 1e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %S102%
{
	Send Sprinklerinstallatie, plattegrond 2e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %S103%
{
	Send Sprinklerinstallatie, plattegrond 3e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %S104%
{
	Send Sprinklerinstallatie, plattegrond 4e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %S105%
{
	Send Sprinklerinstallatie, plattegrond 5e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %S106%
{
	Send Sprinklerinstallatie, plattegrond 6e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %S107%
{
	Send Sprinklerinstallatie, plattegrond 7e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %S108%
{
	Send Sprinklerinstallatie, plattegrond 8e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %S109%
{
	Send Sprinklerinstallatie, plattegrond 9e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %S110%
{
	Send Sprinklerinstallatie, plattegrond 10e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %S2%
{
	Send Sprinklerinstallatie, blokschema
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %S3%
{
	Send Sprinklerinstallatie, principeschema
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %S4%
{
	Send Sprinklerinstallatie, detail
	clipboard = %clipboardold%
	Return
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

; Oppervlakteberekeningen



IfInString, clipboart, %B1100%
{
	Send Oppervlakteberekening, begane grond
	Send {tab}A3{tab}{space}{shiftdown}{tab 3}{shiftup}OPP-
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B1101%
{
	Send Oppervlakteberekening, 1e verdieping
	Send {tab}A3{tab}{space}{shiftdown}{tab 3}{shiftup}OPP-
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B1102%
{
	Send Oppervlakteberekening, 2e verdieping
	Send {tab}A3{tab}{space}{shiftdown}{tab 3}{shiftup}OPP-
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B1103%
{
	Send Oppervlakteberekening, 3e verdieping
	Send {tab}A3{tab}{space}{shiftdown}{tab 3}{shiftup}OPP-
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B1104%
{
	Send Oppervlakteberekening, 4e verdieping
	Send {tab}A3{tab}{space}{shiftdown}{tab 3}{shiftup}OPP-
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B1105%
{
	Send Oppervlakteberekening, 5e verdieping
	Send {tab}A3{tab}{space}{shiftdown}{tab 3}{shiftup}OPP-
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B1106%
{
	Send Oppervlakteberekening, 6e verdieping
	Send {tab}A3{tab}{space}{shiftdown}{tab 3}{shiftup}OPP-
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B1107%
{
	Send Oppervlakteberekening, 7e verdieping
	Send {tab}A3{tab}{space}{shiftdown}{tab 3}{shiftup}OPP-
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B1108%
{
	Send Oppervlakteberekening, 8e verdieping
	Send {tab}A3{tab}{space}{shiftdown}{tab 3}{shiftup}OPP-
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %B1109%
{
	Send Oppervlakteberekening, 9e verdieping
	Send {tab}A3{tab}{space}{shiftdown}{tab 3}{shiftup}OPP-
	clipboard = %clipboardold%
	Return
}





; Stappenplannen Documenten

/*
IfInString, clipboart, %MeldingLegionella%
{
	Send Melding Legionella,{space} 
	Send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}

IfInString, clipboart, %stapplan%
{
	clipboard = 
	Send Stappenplan Legionella 2013
	Send {tab}A4{tab}{space}{tab}{space}{tab}
	send {home}{tab 7}
	clipboard = %clipboardold%
	Return
}
*/
IfInString, clipboart, %stapplanJan%
{
	Send Stappenplan bij Legionella, januari 2013
	Send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}

IfInString, clipboart, %stapplanFeb%
{
	Send Stappenplan bij Legionella, februari 2013
	Send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}

IfInString, clipboart, %stapplanMrt%
{
	Send Stappenplan bij Legionella, maart 2013
	Send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}

IfInString, clipboart, %stapplanApr%
{
	Send Stappenplan bij Legionella, april 2013
	Send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}

IfInString, clipboart, %stapplanMei%
{
	Send Stappenplan bij Legionella, mei 2013
	Send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}

IfInString, clipboart, %stapplanJun%
{
	Send Stappenplan bij Legionella, juni 2013
	Send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}

IfInString, clipboart, %stapplanJul%
{
	Send Stappenplan bij Legionella, juli 2013
	Send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}


IfInString, clipboart, %stapplanAug%
{
	Send Stappenplan bij Legionella, augustus 2013
	Send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}


IfInString, clipboart, %stapplanSep%
{
	Send Stappenplan bij Legionella, september 2013
	Send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}

IfInString, clipboart, %stapplanOkt%
{
	Send Stappenplan bij Legionella, oktober 2013
	Send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}


IfInString, clipboart, %stapplanNov%
{
	Send Stappenplan bij Legionella, november 2013
	Send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}


IfInString, clipboart, %stapplanDec%
{
	Send Stappenplan bij Legionella, december 2013
	Send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}






; Monstername Documenten
MonsternameJAN = Monstername 01

IfInString, clipboart, %MonsternameJAN%
{
	Send Analyse certificaat, januari
	Send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %MonsternameFEB%
{
	Send Analyse certificaat, februari
	Send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %MonsternameMRT%
{
	Send Analyse certificaat, maart*
	Send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %MonsternameAPR%
{
	Send Analyse certificaat, april
	Send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %MonsternameMEI%
{
	Send Analyse certificaat, mei
	Send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %MonsternameJUN%
{
	Send Analyse certificaat, juni
	Send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %MonsternameJUL%
{
	Send Analyse certificaat, juli
	Send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %MonsternameAUG%
{
	Send Analyse certificaat, augustus
	Send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %MonsternameSEP%
{
	Send Analyse certificaat, september
	Send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %MonsternameOKT%
{
	Send Analyse certificaat, oktober
	Send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %MonsternameNOV%
{
	Send Analyse certificaat, november
	Send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %MonsternameDEC%
{
	Send Analyse certificaat, december
	Send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}









IfInString, clipboart, %Temperatuurlijst%
{
	Send Temperatuurlijst,
	Send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}

IfInString, clipboart, %Beheersplan%
{
	Send Legionella beheersplan t.v.v. Legionella
	Send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %Risicoanalyse%
{
	Send Risicoanalyse t.v.v. Legionellabesmetting
	Send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}



IfInString, clipboart, %KIWA%
{
	Send KIWA conformiteitsverklaring
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %ServiceReparatie%
{
	Send Service order bon (reparatie),
	Send {shiftdown}{tab 2}{shiftup}{end}{shiftdown}{left 4}{shiftup}{ctrldown}c{ctrlup}{tab 2}{end}{space}{ctrldown}v{ctrlup}{tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %Service%
{
	Send Service order bon,
	Send {shiftdown}{tab 2}{shiftup}{end}{shiftdown}{left 4}{shiftup}{ctrldown}c{ctrlup}{tab 2}{end}{space}{ctrldown}v{ctrlup}{tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %keerklep%
{
	Send Kopie logboek keerkleppen,
	Send {shiftdown}{tab 2}{shiftup}{end}{shiftdown}{left 4}{shiftup}{ctrldown}c{ctrlup}{tab 2}{end}{space}{ctrldown}v{ctrlup}
	Send {tab}A4}{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %Keuringslijst%
{
	Send Keuringslijst
	Send {shiftdown}{tab 2}{shiftup}{end}{shiftdown}{left 4}{shiftup}{ctrldown}c{ctrlup}{tab 2}{end}{space}{ctrldown}v{ctrlup}{tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}


; 




/*
IfInString, clipboart, %1kwartaal%
{
	Send Overzicht kosten en verbruik energie, 1e kwartaal 2013
	Send {tab}A3{tab}{space}{tab 2}{home}{tab}01{tab 2}{end}{tab}03{tab 3}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %2kwartaal%
{
	Send Overzicht kosten + verbruik energie, 2e kwartaal 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}{end}{tab}06{tab 3}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %3kwartaal%
{
	Send Overzicht kosten + verbruik energie, 3e kwartaal 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}{end}{tab}09{tab 3}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %4kwartaal%
{
	Send Overzicht kosten + verbruik energie, 4e kwartaal 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}{end}{tab}12{tab 3}
	clipboard = %clipboardold%
	Return
}
*/


;*/









; Legionella documenten


IfInString, clipboart, %Temp01%
{
	Send Temperatuur controlelijst, januarie 2013
	Send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %Temp02%
{
	Send Temperatuur controlelijst, februari 2013
	Send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}

IfInString, clipboart, %Temp03%
{
	Send Temperatuur controlelijst, maart 2013
	Send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}

IfInString, clipboart, %Temp04%
{
	Send Temperatuur controlelijst, april 2013
	Send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}

IfInString, clipboart, %Temp05%
{
	Send Temperatuur controlelijst, mei 2013
	Send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}

IfInString, clipboart, %Temp06%
{
	Send Temperatuur controlelijst, juni 2013
	Send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}

IfInString, clipboart, %Temp07%
{
	Send Temperatuur controlelijst, juli 2013
	Send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}

IfInString, clipboart, %Temp08%
{
	Send Temperatuur controlelijst, augustus 2013
	Send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}

IfInString, clipboart, %Temp09%
{
	Send Temperatuur controlelijst, september 2013
	Send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}

IfInString, clipboart, %Temp10%
{
	Send Temperatuur controlelijst, oktober 2013
	Send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}

IfInString, clipboart, %Temp11%
{
	Send Temperatuur controlelijst, november 2013
	Send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}

IfInString, clipboart, %Temp12%
{
	Send Temperatuur controlelijst, december 2013
	Send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %Spoellijst%
{
	Send Spoellijst t.b.v. Legionellapreventie, week{space}
	Send {shiftdown}{tab 2}{shiftup}{end}{shiftdown}{left 2}{shiftup}{ctrldown}c{ctrlup}{tab 2}{end}{ctrldown}v{ctrlup}{tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}


; Totaaloverzichten

IfInString, clipboart, %Liftkeuring%
{
	Send Liftkeuring certificaat, lift{space}
	Send {tab}A4{tab}{space}{tab}{space}{shiftdown}{tab 3}{shiftup}{end}
	clipboard = %clipboardold%
	Return
}

IfInString, clipboart, %T100%
{
	Send Transport installatie, plattegrond liften overzicht
	Send {tab}A0{tab}{space}{tab 8}
	clipboard = %clipboardold%
	Return
}

IfInString, clipboart, %TotaaloverzichtJan%
{
	Send Totaaloverzicht energie, januari 2013
	Send {tab}A2{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab 3}
	clipboard = %clipboardold%
	Return
}

IfInString, clipboart, %TotaaloverzichtFeb%
{
	Send Totaaloverzicht energie, februari 2013
	Send {tab}A2{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab 3}
	clipboard = %clipboardold%
	Return
}

IfInString, clipboart, %TotaaloverzichtMrt%
{
	Send Totaaloverzicht energie, maart 2013
	Send {tab}A2{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab 3}
	clipboard = %clipboardold%
	Return
}

IfInString, clipboart, %TotaaloverzichtApr%
{
	Send Totaaloverzicht energie, april 2013
	Send {tab}A2{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab 3}
	clipboard = %clipboardold%
	Return
}

IfInString, clipboart, %TotaaloverzichtMei%
{
	Send Totaaloverzicht energie, mei 2013
	Send {tab}A2{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab 3}
	clipboard = %clipboardold%
	Return
}

IfInString, clipboart, %TotaaloverzichtJun%
{
	Send Totaaloverzicht energie, juni 2013
	Send {tab}A2{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab 3}
	clipboard = %clipboardold%
	Return
}

IfInString, clipboart, %TotaaloverzichtJul%
{
	Send Totaaloverzicht energie, juli 2013
	Send {tab}A2{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab 3}
	clipboard = %clipboardold%
	Return
}

IfInString, clipboart, %TotaaloverzichtAug%
{
	Send Totaaloverzicht energie, augustus 2013
	Send {tab}A2{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab 3}
	clipboard = %clipboardold%
	Return
}

IfInString, clipboart, %TotaaloverzichtSep%
{
	Send Totaaloverzicht energie, september 2013
	Send {tab}A2{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab 3}
	clipboard = %clipboardold%
	Return
}

IfInString, clipboart, %TotaaloverzichtOkt%
{
	Send Totaaloverzicht energie, oktober 2013
	Send {tab}A2{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab 3}
	clipboard = %clipboardold%
	Return
}

IfInString, clipboart, %TotaaloverzichtNov%
{
	Send Totaaloverzicht energie, november 2013
	Send {tab}A2{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab 3}
	clipboard = %clipboardold%
	Return
}

IfInString, clipboart, %TotaaloverzichtDec%
{
	Send Totaaloverzicht energie, december 2013
	Send {tab}A2{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab 3}
	clipboard = %clipboardold%
	Return
}


































/*

IfInString, clipboart, %Risicoanalyse%
{
	Send Risicoanalyse t.v.v. Legionellapreventie
	Send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}


*/

/*
....................................................................................................
....................................................................................................
....................................................................................................
....................................................................................................
....................................................................................................
....................................................................................................
....................................................................................................
....................................................................................................
....................................................................................................
....................................................................................................
....................................................................................................
....................................................................................................
....................................................................................................

Energiedocumenten

....................................................................................................
....................................................................................................
....................................................................................................
....................................................................................................
....................................................................................................
....................................................................................................
....................................................................................................
....................................................................................................
....................................................................................................
....................................................................................................
....................................................................................................
....................................................................................................
....................................................................................................

*/

; Energiedocumenten Locatie gevoelig

IfNotInString, clipboart, %2013%
{
goto 2013
Return
}

IfNotInString, clipboart, %ADG%
{
	goto CMMS
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Adegeest, januari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Adegeest, februari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Adegeest, maart 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Adegeest, april 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Adegeest, mei 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Adegeest, juni 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Adegeest, juli 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Adegeest, augustus 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Adegeest, september 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Adegeest, oktober 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Adegeest, november 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Adegeest, december 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}


CMMS:
IfNotInString, clipboart, %CMMS%
{
	goto DST
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht CMMS, januari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht CMMS, februari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht CMMS, maart 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht CMMS, april 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht CMMS, mei 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht CMMS, juni 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht CMMS, juli 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht CMMS, augustus 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht CMMS, september 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht CMMS, oktober 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht CMMS, november 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht CMMS, december 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2013{tab 2}
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
	Send Energiekosten overzicht Duinstede, januari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return

}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Duinstede, februari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Duinstede, maart 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Duinstede, april 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Duinstede, mei 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Duinstede, juni 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Duinstede, juli 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Duinstede, augustus 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Duinstede, september 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Duinstede, oktober 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Duinstede, november 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Duinstede, december 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2013{tab 2}
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
	Send Energiekosten overzicht Dekkersduin, januari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return

}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Dekkersduin, februari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Dekkersduin, maart 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Dekkersduin, april 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Dekkersduin, mei 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Dekkersduin, juni 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Dekkersduin, juli 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Dekkersduin, augustus 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Dekkersduin, september 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Dekkersduin, oktober 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Dekkersduin, november 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Dekkersduin, december 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2013{tab 2}
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
	Send Energiekosten overzicht De Mantel, januari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht De Mantel, februari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht De Mantel, maart 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht De Mantel, april 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht De Mantel, mei 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht De Mantel, juni 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht De Mantel, juli 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht De Mantel, augustus 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht De Mantel, september 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht De Mantel, oktober 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht De Mantel, november 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht De Mantel, december 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2013{tab 2}
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
	Send Energiekosten overzicht Guldenhuis, januari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Guldenhuis, februari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Guldenhuis, maart 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Guldenhuis, april 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Guldenhuis, mei 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Guldenhuis, juni 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Guldenhuis, juli 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Guldenhuis, augustus 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Guldenhuis, september 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Guldenhuis, oktober 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Guldenhuis, november 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Guldenhuis, december 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2013{tab 2}
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
	Send Energiekosten overzicht Houthaghe, januari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Houthaghe, februari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Houthaghe, maart 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Houthaghe, april 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Houthaghe, mei 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Houthaghe, juni 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Houthaghe, juli 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Houthaghe, augustus 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Houthaghe, september 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Houthaghe, oktober 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Houthaghe, november 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Houthaghe, december 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2013{tab 2}
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
	Send Energiekosten overzicht Jonker Frans, januari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2013{tab 2}
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Jonker Frans, februari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Jonker Frans, maart 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Jonker Frans, april 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Jonker Frans, mei 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Jonker Frans, juni 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Jonker Frans, juli 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Jonker Frans, augustus 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Jonker Frans, september 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Jonker Frans, oktober 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Jonker Frans, november 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Jonker Frans, december 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2013{tab 2}
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
	Send Energiekosten overzicht Loevenstein, januari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2013{tab 2}
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Loevenstein, februari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Loevenstein, maart 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Loevenstein, april 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Loevenstein, mei 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Loevenstein, juni 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Loevenstein, juli 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Loevenstein, augustus 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Loevenstein, september 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Loevenstein, oktober 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Loevenstein, november 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Loevenstein, december 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2013{tab 2}
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
	Send Energiekosten overzicht LoOSNuinse Hof, januari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht LoOSNuinse Hof, februari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht LoOSNuinse Hof, maart 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht LoOSNuinse Hof, april 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht LoOSNuinse Hof, mei 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht LoOSNuinse Hof, juni 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht LoOSNuinse Hof, juli 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht LoOSNuinse Hof, augustus 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht LoOSNuinse Hof, september 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht LoOSNuinse Hof, oktober 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht LoOSNuinse Hof, november 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht LoOSNuinse Hof, december 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2013{tab 2}
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
	Send Energiekosten overzicht Laan van Vredenoord, januari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Laan van Vredenoord, februari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Laan van Vredenoord, maart 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Laan van Vredenoord, april 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Laan van Vredenoord, mei 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Laan van Vredenoord, juni 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Laan van Vredenoord, juli 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Laan van Vredenoord, augustus 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Laan van Vredenoord, september 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Laan van Vredenoord, oktober 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Laan van Vredenoord, november 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Laan van Vredenoord, december 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2013{tab 2}
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
	Send Energiekosten overzicht Mariahoeve, januari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2013{tab 2}
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Mariahoeve, februari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Mariahoeve, maart 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Mariahoeve, april 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Mariahoeve, mei 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Mariahoeve, juni 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Mariahoeve, juli 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Mariahoeve, augustus 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Mariahoeve, september 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Mariahoeve, oktober 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Mariahoeve, november 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Mariahoeve, december 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2013{tab 2}
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
	Send Energiekosten overzicht Marterrade, januari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Marterrade, februari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Marterrade, maart 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Marterrade, april 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Marterrade, mei 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Marterrade, juni 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Marterrade, juli 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Marterrade, augustus 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Marterrade, september 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Marterrade, oktober 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Marterrade, november 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Marterrade, december 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}

;
OSN:
IfNotInString, clipboart, %OSN%
{
	goto SPT
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Oostduin, januari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Oostduin, februari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Oostduin, maart 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Oostduin, april 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Oostduin, mei 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Oostduin, juni 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Oostduin, juli 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Oostduin, augustus 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Oostduin, september 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Oostduin, oktober 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Oostduin, november 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Oostduin, december 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2013{tab 2}
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
	Send Energiekosten overzicht Schakelpunt, januari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Schakelpunt, februari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Schakelpunt, maart 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Schakelpunt, april 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Schakelpunt, mei 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Schakelpunt, juni 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Schakelpunt, juli 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Schakelpunt, augustus 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Schakelpunt, september 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Schakelpunt, oktober 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Schakelpunt, november 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Schakelpunt, december 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2013{tab 2}
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
	Send Energiekosten overzicht Steenvoorde, januari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Steenvoorde, februari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Steenvoorde, maart 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Steenvoorde, april 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Steenvoorde, mei 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Steenvoorde, juni 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Steenvoorde, juli 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Steenvoorde, augustus 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Steenvoorde, september 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Steenvoorde, oktober 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Steenvoorde, november 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Steenvoorde, december 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}





STVWKK:



IfInString, clipboart, %WKKJAN%
{
	Send Overzicht functioneren en milieuvoordeel warmtekrachtinstallatie, januari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %WKKFEB%
{
	Send Overzicht functioneren en milieuvoordeel warmtekrachtinstallatie, februari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %WKKMRT%
{
	Send Overzicht functioneren en milieuvoordeel warmtekrachtinstallatie, maart 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %WKKAPR%
{
	Send Overzicht functioneren en milieuvoordeel warmtekrachtinstallatie, april 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %WKKMEI%
{
	Send Overzicht functioneren en milieuvoordeel warmtekrachtinstallatie, mei 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %WKKJUN%
{
	Send Overzicht functioneren en milieuvoordeel warmtekrachtinstallatie, juni 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %WKKJUL%
{
	Send Overzicht functioneren en milieuvoordeel warmtekrachtinstallatie, juli 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %WKKAUG%
{
	Send Overzicht functioneren en milieuvoordeel warmtekrachtinstallatie, augustus 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %WKKSEP%
{
	Send Overzicht functioneren en milieuvoordeel warmtekrachtinstallatie, september 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %WKKOKT%
{
	Send Overzicht functioneren en milieuvoordeel warmtekrachtinstallatie, oktober 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %WKKNOV%
{
	Send Overzicht functioneren en milieuvoordeel warmtekrachtinstallatie, november 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %WKKDEC%
{
	Send Overzicht functioneren en milieuvoordeel warmtekrachtinstallatie, 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2013{tab 2}
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
	Send Energiekosten overzicht Vinckenborglaan, januari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Vinckenborglaan, februari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Vinckenborglaan, maart 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Vinckenborglaan, april 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Vinckenborglaan, mei 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Vinckenborglaan, juni 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Vinckenborglaan, juli 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Vinckenborglaan, augustus 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Vinckenborglaan, september 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Vinckenborglaan, oktober 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Vinckenborglaan, november 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Vinckenborglaan, december 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2013{tab 2}
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
	Send Energiekosten overzicht Vredenburch, januari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Vredenburch, februari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Vredenburch, maart 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Vredenburch, april 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Vredenburch, mei 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Vredenburch, juni 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Vredenburch, juli 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Vredenburch, augustus 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Vredenburch, september 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Vredenburch, oktober 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Vredenburch, november 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Vredenburch, december 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2013{tab 2}
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
	Send Energiekosten overzicht Wenckebach, januari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Wenckebach, februari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Wenckebach, maart 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Wenckebach, april 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Wenckebach, mei 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Wenckebach, juni 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Wenckebach, juli 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Wenckebach, augustus 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Wenckebach, september 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Wenckebach, oktober 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Wenckebach, november 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Wenckebach, december 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2013{tab 2}
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
	Send Energiekosten overzicht Westhoff, januari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Westhoff, februari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Westhoff, maart 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Westhoff, april 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Westhoff, mei 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Westhoff, juni 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Westhoff, juli 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Westhoff, augustus 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Westhoff, september 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Westhoff, oktober 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Westhoff, november 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Westhoff, december 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2013{tab 2}
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
	Send Energiekosten overzicht Willem de Bijelaan, januari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Willem de Bijelaan, februari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Willem de Bijelaan, maart 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Willem de Bijelaan, april 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Willem de Bijelaan, mei 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Willem de Bijelaan, juni 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Willem de Bijelaan, juli 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Willem de Bijelaan, augustus 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Willem de Bijelaan, september 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Willem de Bijelaan, oktober 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Willem de Bijelaan, november 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Willem de Bijelaan, december 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2013{tab 2}
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
	Send Energiekosten overzicht Uitzicht, januari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Uitzicht, februari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Uitzicht, maart 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Uitzicht, april 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Uitzicht, mei 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Uitzicht, juni 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Uitzicht, juli 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Uitzicht, augustus 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Uitzicht, september 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Uitzicht, oktober 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Uitzicht, november 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Uitzicht, december 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2013{tab 2}
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
	Send Energiekosten overzicht Laurens Reaalstraat, januari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Laurens Reaalstraat, februari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Laurens Reaalstraat, maart 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Laurens Reaalstraat, april 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Laurens Reaalstraat, mei 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Laurens Reaalstraat, juni 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Laurens Reaalstraat, juli 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Laurens Reaalstraat, augustus 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Laurens Reaalstraat, september 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Laurens Reaalstraat, oktober 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Laurens Reaalstraat, november 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Laurens Reaalstraat, december 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2013{tab 2}
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
	Send Energiekosten overzicht Over de Boogaard, januari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Over de Boogaard, februari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Over de Boogaard, maart 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Over de Boogaard, april 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Over de Boogaard, mei 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Over de Boogaard, juni 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Over de Boogaard, juli 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Over de Boogaard, augustus 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Over de Boogaard, september 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Over de Boogaard, oktober 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Over de Boogaard, november 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Over de Boogaard, december 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2013{tab 2}
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
	Send Energiekosten overzicht 't Hoflants Huys, januari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht 't Hoflants Huys, februari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht 't Hoflants Huys, maart 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht 't Hoflants Huys, april 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht 't Hoflants Huys, mei 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht 't Hoflants Huys, juni 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht 't Hoflants Huys, juli 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht 't Hoflants Huys, augustus 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht 't Hoflants Huys, september 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht 't Hoflants Huys, oktober 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht 't Hoflants Huys, november 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht 't Hoflants Huys, december 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}






2013:

IfNotInString, clipboart, %ADG%
{
	goto CMMS2013
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Adegeest, januari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab}2013{tab}31{tab}01{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Adegeest, februari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab}2013{tab}28{tab}02{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Adegeest, maart 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab}2013{tab}31{tab}03{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Adegeest, april 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab}2013{tab}30{tab}04{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Adegeest, mei 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab}2013{tab}31{tab}05{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Adegeest, juni 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab}2013{tab}30{tab}06{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Adegeest, juli 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab}2013{tab}31{tab}07{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Adegeest, augustus 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab}2013{tab}31{tab}08{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Adegeest, september 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab}2013{tab}30{tab}09{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Adegeest, oktober 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab}2013{tab}31{tab}10{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Adegeest, november 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab}2013{tab}30{tab}11{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Adegeest, december 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab}2013{tab}31{tab}12{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}


CMMS2013:
IfNotInString, clipboart, %CMMS%
{
	goto DST2013
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht CMMS, januari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab}2013{tab}{tab}01{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht CMMS, februari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht CMMS, maart 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab}2013{tab}{tab}03{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht CMMS, april 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab}2013{tab}{tab}04{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht CMMS, mei 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab}2013{tab}{tab}05{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht CMMS, juni 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab}2013{tab}{tab}06{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht CMMS, juli 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab}2013{tab}{tab}07{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht CMMS, augustus 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab}2013{tab}{tab}08{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht CMMS, september 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab}2013{tab}{tab}09{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht CMMS, oktober 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab}2013{tab}{tab}10{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht CMMS, november 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab}2013{tab}{tab}11{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht CMMS, december 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab}2013{tab}{tab}12{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}


DST2013:
IfNotInString, clipboart, %DST%
{
	goto DKD2013
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Duinstede, januari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab}2013{tab}{tab}01{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return

}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Duinstede, februari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Duinstede, maart 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab}2013{tab}{tab}03{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Duinstede, april 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab}2013{tab}{tab}04{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Duinstede, mei 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab}2013{tab}{tab}05{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Duinstede, juni 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab}2013{tab}{tab}06{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Duinstede, juli 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab}2013{tab}{tab}07{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Duinstede, augustus 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab}2013{tab}{tab}08{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Duinstede, september 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab}2013{tab}{tab}09{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Duinstede, oktober 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab}2013{tab}{tab}10{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Duinstede, november 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab}2013{tab}{tab}11{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Duinstede, december 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab}2013{tab}{tab}12{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}



DKD2013:
IfNotInString, clipboart, %DKD%
{
	goto MTL2013
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Dekkersduin, januari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab}2013{tab}{tab}01{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return

}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Dekkersduin, februari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Dekkersduin, maart 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab}2013{tab}{tab}03{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Dekkersduin, april 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab}2013{tab}{tab}04{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Dekkersduin, mei 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab}2013{tab}{tab}05{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Dekkersduin, juni 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab}2013{tab}{tab}06{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Dekkersduin, juli 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab}2013{tab}{tab}07{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Dekkersduin, augustus 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab}2013{tab}{tab}08{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Dekkersduin, september 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab}2013{tab}{tab}09{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Dekkersduin, oktober 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab}2013{tab}{tab}10{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Dekkersduin, november 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab}2013{tab}{tab}11{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Dekkersduin, december 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab}2013{tab}{tab}12{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}

MTL2013:
IfNotInString, clipboart, %MTL%
{
	goto GHS2013
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht De Mantel, januari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab}2013{tab}{tab}01{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht De Mantel, februari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht De Mantel, maart 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab}2013{tab}{tab}03{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht De Mantel, april 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab}2013{tab}{tab}04{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht De Mantel, mei 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab}2013{tab}{tab}05{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht De Mantel, juni 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab}2013{tab}{tab}06{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht De Mantel, juli 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab}2013{tab}{tab}07{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht De Mantel, augustus 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab}2013{tab}{tab}08{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht De Mantel, september 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab}2013{tab}{tab}09{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht De Mantel, oktober 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab}2013{tab}{tab}10{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht De Mantel, november 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab}2013{tab}{tab}11{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht De Mantel, december 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab}2013{tab}{tab}12{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}


GHS2013:
IfNotInString, clipboart, %GHS%
{
	goto HHG2013
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Guldenhuis, januari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab}2013{tab}{tab}01{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Guldenhuis, februari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Guldenhuis, maart 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab}2013{tab}{tab}03{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Guldenhuis, april 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab}2013{tab}{tab}04{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Guldenhuis, mei 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab}2013{tab}{tab}05{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Guldenhuis, juni 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab}2013{tab}{tab}06{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Guldenhuis, juli 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab}2013{tab}{tab}07{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Guldenhuis, augustus 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab}2013{tab}{tab}08{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Guldenhuis, september 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab}2013{tab}{tab}09{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Guldenhuis, oktober 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab}2013{tab}{tab}10{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Guldenhuis, november 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab}2013{tab}{tab}11{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Guldenhuis, december 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab}2013{tab}{tab}12{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}


HHG2013:
IfNotInString, clipboart, %HHG%
{
	goto JFR2013
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Houthaghe, januari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab}2013{tab}{tab}01{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Houthaghe, februari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Houthaghe, maart 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab}2013{tab}{tab}03{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Houthaghe, april 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab}2013{tab}{tab}04{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Houthaghe, mei 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab}2013{tab}{tab}05{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Houthaghe, juni 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab}2013{tab}{tab}06{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Houthaghe, juli 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab}2013{tab}{tab}07{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Houthaghe, augustus 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab}2013{tab}{tab}08{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Houthaghe, september 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab}2013{tab}{tab}09{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Houthaghe, oktober 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab}2013{tab}{tab}10{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Houthaghe, november 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab}2013{tab}{tab}11{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Houthaghe, december 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab}2013{tab}{tab}12{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
JFR2013:
IfNotInString, clipboart, %JFR%
{
	goto LVS2013
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Jonker Frans, januari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab}2013{tab}{tab}01{tab}2013{tab 2}
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Jonker Frans, februari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Jonker Frans, maart 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab}2013{tab}{tab}03{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Jonker Frans, april 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab}2013{tab}{tab}04{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Jonker Frans, mei 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab}2013{tab}{tab}05{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Jonker Frans, juni 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab}2013{tab}{tab}06{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Jonker Frans, juli 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab}2013{tab}{tab}07{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Jonker Frans, augustus 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab}2013{tab}{tab}08{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Jonker Frans, september 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab}2013{tab}{tab}09{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Jonker Frans, oktober 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab}2013{tab}{tab}10{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Jonker Frans, november 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab}2013{tab}{tab}11{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Jonker Frans, december 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab}2013{tab}{tab}12{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}


LVS2013:
IfNotInString, clipboart, %LVS%
{
	goto LHF2013
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Loevenstein, januari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab}2013{tab}{tab}01{tab}2013{tab 2}
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Loevenstein, februari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Loevenstein, maart 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab}2013{tab}{tab}03{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Loevenstein, april 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab}2013{tab}{tab}04{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Loevenstein, mei 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab}2013{tab}{tab}05{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Loevenstein, juni 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab}2013{tab}{tab}06{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Loevenstein, juli 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab}2013{tab}{tab}07{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Loevenstein, augustus 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab}2013{tab}{tab}08{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Loevenstein, september 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab}2013{tab}{tab}09{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Loevenstein, oktober 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab}2013{tab}{tab}10{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Loevenstein, november 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab}2013{tab}{tab}11{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Loevenstein, december 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab}2013{tab}{tab}12{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}


LHF2013:
IfNotInString, clipboart, %LHF%
{
	goto LVV2013
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht LoOSNuinse Hof, januari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab}2013{tab}{tab}01{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht LoOSNuinse Hof, februari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht LoOSNuinse Hof, maart 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab}2013{tab}{tab}03{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht LoOSNuinse Hof, april 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab}2013{tab}{tab}04{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht LoOSNuinse Hof, mei 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab}2013{tab}{tab}05{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht LoOSNuinse Hof, juni 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab}2013{tab}{tab}06{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht LoOSNuinse Hof, juli 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab}2013{tab}{tab}07{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht LoOSNuinse Hof, augustus 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab}2013{tab}{tab}08{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht LoOSNuinse Hof, september 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab}2013{tab}{tab}09{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht LoOSNuinse Hof, oktober 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab}2013{tab}{tab}10{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht LoOSNuinse Hof, november 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab}2013{tab}{tab}11{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht LoOSNuinse Hof, december 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab}2013{tab}{tab}12{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}


LVV2013:
IfNotInString, clipboart, %LVV%
{
	goto MHV2013
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Laan van Vredenoord, januari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab}2013{tab}{tab}01{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Laan van Vredenoord, februari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Laan van Vredenoord, maart 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab}2013{tab}{tab}03{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Laan van Vredenoord, april 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab}2013{tab}{tab}04{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Laan van Vredenoord, mei 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab}2013{tab}{tab}05{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Laan van Vredenoord, juni 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab}2013{tab}{tab}06{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Laan van Vredenoord, juli 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab}2013{tab}{tab}07{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Laan van Vredenoord, augustus 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab}2013{tab}{tab}08{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Laan van Vredenoord, september 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab}2013{tab}{tab}09{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Laan van Vredenoord, oktober 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab}2013{tab}{tab}10{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Laan van Vredenoord, november 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab}2013{tab}{tab}11{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Laan van Vredenoord, december 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab}2013{tab}{tab}12{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}


MHV2013:
IfNotInString, clipboart, %MHV%
{
	goto MRR2013
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Mariahoeve, januari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab}2013{tab}{tab}01{tab}2013{tab 2}
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Mariahoeve, februari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Mariahoeve, maart 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab}2013{tab}{tab}03{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Mariahoeve, april 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab}2013{tab}{tab}04{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Mariahoeve, mei 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab}2013{tab}{tab}05{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Mariahoeve, juni 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab}2013{tab}{tab}06{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Mariahoeve, juli 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab}2013{tab}{tab}07{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Mariahoeve, augustus 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab}2013{tab}{tab}08{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Mariahoeve, september 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab}2013{tab}{tab}09{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Mariahoeve, oktober 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab}2013{tab}{tab}10{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Mariahoeve, november 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab}2013{tab}{tab}11{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Mariahoeve, december 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab}2013{tab}{tab}12{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}


MRR2013:
IfNotInString, clipboart, %MRR%
{
	goto OSN2013
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Marterrade, januari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab}2013{tab}{tab}01{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Marterrade, februari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Marterrade, maart 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab}2013{tab}{tab}03{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Marterrade, april 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab}2013{tab}{tab}04{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Marterrade, mei 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab}2013{tab}{tab}05{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Marterrade, juni 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab}2013{tab}{tab}06{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Marterrade, juli 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab}2013{tab}{tab}07{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Marterrade, augustus 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab}2013{tab}{tab}08{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Marterrade, september 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab}2013{tab}{tab}09{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Marterrade, oktober 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab}2013{tab}{tab}10{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Marterrade, november 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab}2013{tab}{tab}11{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Marterrade, december 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab}2013{tab}{tab}12{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}

;
OSN2013:
IfNotInString, clipboart, %OSN%
{
	goto SPT2013
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Oostduin, januari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab}2013{tab}{tab}01{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Oostduin, februari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Oostduin, maart 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab}2013{tab}{tab}03{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Oostduin, april 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab}2013{tab}{tab}04{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Oostduin, mei 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab}2013{tab}{tab}05{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Oostduin, juni 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab}2013{tab}{tab}06{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Oostduin, juli 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab}2013{tab}{tab}07{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Oostduin, augustus 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab}2013{tab}{tab}08{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Oostduin, september 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab}2013{tab}{tab}09{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Oostduin, oktober 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab}2013{tab}{tab}10{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Oostduin, november 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab}2013{tab}{tab}11{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Oostduin, december 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab}2013{tab}{tab}12{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}


SPT2013:
IfNotInString, clipboart, %SPT%
{
	goto STV2013
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Schakelpunt, januari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab}2013{tab}{tab}01{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Schakelpunt, februari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Schakelpunt, maart 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab}2013{tab}{tab}03{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Schakelpunt, april 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab}2013{tab}{tab}04{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Schakelpunt, mei 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab}2013{tab}{tab}05{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Schakelpunt, juni 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab}2013{tab}{tab}06{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Schakelpunt, juli 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab}2013{tab}{tab}07{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Schakelpunt, augustus 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab}2013{tab}{tab}08{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Schakelpunt, september 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab}2013{tab}{tab}09{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Schakelpunt, oktober 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab}2013{tab}{tab}10{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Schakelpunt, november 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab}2013{tab}{tab}11{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Schakelpunt, december 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab}2013{tab}{tab}12{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}


STV2013:
IfNotInString, clipboart, %STV%
{
	goto VBL2013
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Steenvoorde, januari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab}2013{tab}{tab}01{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Steenvoorde, februari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Steenvoorde, maart 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab}2013{tab}{tab}03{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Steenvoorde, april 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab}2013{tab}{tab}04{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Steenvoorde, mei 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab}2013{tab}{tab}05{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Steenvoorde, juni 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab}2013{tab}{tab}06{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Steenvoorde, juli 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab}2013{tab}{tab}07{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Steenvoorde, augustus 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab}2013{tab}{tab}08{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Steenvoorde, september 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab}2013{tab}{tab}09{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Steenvoorde, oktober 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab}2013{tab}{tab}10{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Steenvoorde, november 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab}2013{tab}{tab}11{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Steenvoorde, december 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab}2013{tab}{tab}12{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}


VBL2013:
IfNotInString, clipboart, %VBL%
{
	goto VBH2013
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Vinckenborglaan, januari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab}2013{tab}{tab}01{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Vinckenborglaan, februari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Vinckenborglaan, maart 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab}2013{tab}{tab}03{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Vinckenborglaan, april 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab}2013{tab}{tab}04{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Vinckenborglaan, mei 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab}2013{tab}{tab}05{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Vinckenborglaan, juni 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab}2013{tab}{tab}06{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Vinckenborglaan, juli 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab}2013{tab}{tab}07{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Vinckenborglaan, augustus 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab}2013{tab}{tab}08{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Vinckenborglaan, september 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab}2013{tab}{tab}09{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Vinckenborglaan, oktober 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab}2013{tab}{tab}10{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Vinckenborglaan, november 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab}2013{tab}{tab}11{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Vinckenborglaan, december 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab}2013{tab}{tab}12{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}


VBH2013:
IfNotInString, clipboart, %VBH%
{
	goto WKB2013
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Vredenburch, januari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab}2013{tab}{tab}01{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Vredenburch, februari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Vredenburch, maart 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab}2013{tab}{tab}03{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Vredenburch, april 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab}2013{tab}{tab}04{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Vredenburch, mei 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab}2013{tab}{tab}05{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Vredenburch, juni 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab}2013{tab}{tab}06{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Vredenburch, juli 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab}2013{tab}{tab}07{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Vredenburch, augustus 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab}2013{tab}{tab}08{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Vredenburch, september 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab}2013{tab}{tab}09{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Vredenburch, oktober 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab}2013{tab}{tab}10{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Vredenburch, november 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab}2013{tab}{tab}11{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Vredenburch, december 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab}2013{tab}{tab}12{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}


WKB2013:
IfNotInString, clipboart, %WKB%
{
	goto WHF2013
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Wenckebach, januari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab}2013{tab}{tab}01{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Wenckebach, februari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Wenckebach, maart 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab}2013{tab}{tab}03{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Wenckebach, april 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab}2013{tab}{tab}04{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Wenckebach, mei 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab}2013{tab}{tab}05{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Wenckebach, juni 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab}2013{tab}{tab}06{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Wenckebach, juli 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab}2013{tab}{tab}07{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Wenckebach, augustus 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab}2013{tab}{tab}08{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Wenckebach, september 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab}2013{tab}{tab}09{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Wenckebach, oktober 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab}2013{tab}{tab}10{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Wenckebach, november 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab}2013{tab}{tab}11{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Wenckebach, december 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab}2013{tab}{tab}12{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}


WHF2013:
IfNotInString, clipboart, %WHF%
{
	goto WBL2013
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Westhoff, januari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab}2013{tab}{tab}01{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Westhoff, februari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Westhoff, maart 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab}2013{tab}{tab}03{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Westhoff, april 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab}2013{tab}{tab}04{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Westhoff, mei 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab}2013{tab}{tab}05{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Westhoff, juni 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab}2013{tab}{tab}06{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Westhoff, juli 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab}2013{tab}{tab}07{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Westhoff, augustus 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab}2013{tab}{tab}08{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Westhoff, september 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab}2013{tab}{tab}09{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Westhoff, oktober 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab}2013{tab}{tab}10{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Westhoff, november 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab}2013{tab}{tab}11{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Westhoff, december 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab}2013{tab}{tab}12{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}


WBL2013:
IfNotInString, clipboart, %WBL%
{
	goto UTZ2013
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Willem de Bijelaan, januari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab}2013{tab}{tab}01{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Willem de Bijelaan, februari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Willem de Bijelaan, maart 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab}2013{tab}{tab}03{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Willem de Bijelaan, april 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab}2013{tab}{tab}04{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Willem de Bijelaan, mei 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab}2013{tab}{tab}05{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Willem de Bijelaan, juni 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab}2013{tab}{tab}06{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Willem de Bijelaan, juli 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab}2013{tab}{tab}07{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Willem de Bijelaan, augustus 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab}2013{tab}{tab}08{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Willem de Bijelaan, september 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab}2013{tab}{tab}09{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Willem de Bijelaan, oktober 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab}2013{tab}{tab}10{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Willem de Bijelaan, november 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab}2013{tab}{tab}11{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Willem de Bijelaan, december 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab}2013{tab}{tab}12{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}


UTZ2013:
IfNotInString, clipboart, %UTZ%
{
	goto LRS2013
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Uitzicht, januari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab}2013{tab}{tab}01{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Uitzicht, februari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Uitzicht, maart 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab}2013{tab}{tab}03{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Uitzicht, april 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab}2013{tab}{tab}04{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Uitzicht, mei 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab}2013{tab}{tab}05{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Uitzicht, juni 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab}2013{tab}{tab}06{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Uitzicht, juli 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab}2013{tab}{tab}07{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Uitzicht, augustus 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab}2013{tab}{tab}08{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Uitzicht, september 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab}2013{tab}{tab}09{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Uitzicht, oktober 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab}2013{tab}{tab}10{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Uitzicht, november 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab}2013{tab}{tab}11{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Uitzicht, december 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab}2013{tab}{tab}12{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}


LRS2013:
IfNotInString, clipboart, %LRS%
{
	goto ODB2013
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Laurens Reaalstraat, januari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab}2013{tab}{tab}01{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Laurens Reaalstraat, februari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Laurens Reaalstraat, maart 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab}2013{tab}{tab}03{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Laurens Reaalstraat, april 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab}2013{tab}{tab}04{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Laurens Reaalstraat, mei 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab}2013{tab}{tab}05{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Laurens Reaalstraat, juni 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab}2013{tab}{tab}06{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Laurens Reaalstraat, juli 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab}2013{tab}{tab}07{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Laurens Reaalstraat, augustus 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab}2013{tab}{tab}08{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Laurens Reaalstraat, september 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab}2013{tab}{tab}09{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Laurens Reaalstraat, oktober 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab}2013{tab}{tab}10{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Laurens Reaalstraat, november 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab}2013{tab}{tab}11{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Laurens Reaalstraat, december 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab}2013{tab}{tab}12{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}


ODB2013:
IfNotInString, clipboart, %ODB%
{
	goto HHS2013
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Over de Boogaard, januari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab}2013{tab}{tab}01{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Over de Boogaard, februari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Over de Boogaard, maart 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab}2013{tab}{tab}03{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Over de Boogaard, april 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab}2013{tab}{tab}04{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Over de Boogaard, mei 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab}2013{tab}{tab}05{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Over de Boogaard, juni 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab}2013{tab}{tab}06{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Over de Boogaard, juli 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab}2013{tab}{tab}07{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Over de Boogaard, augustus 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab}2013{tab}{tab}08{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Over de Boogaard, september 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab}2013{tab}{tab}09{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Over de Boogaard, oktober 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab}2013{tab}{tab}10{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Over de Boogaard, november 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab}2013{tab}{tab}11{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Over de Boogaard, december 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab}2013{tab}{tab}12{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
HHS2013:
IfNotInString, clipboart, %HHS%
{
		goto Skiped
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht 't Hoflants Huys, januari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab}2013{tab}{tab}01{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht 't Hoflants Huys, februari 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht 't Hoflants Huys, maart 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab}2013{tab}{tab}03{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht 't Hoflants Huys, april 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab}2013{tab}{tab}04{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht 't Hoflants Huys, mei 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab}2013{tab}{tab}05{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht 't Hoflants Huys, juni 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab}2013{tab}{tab}06{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht 't Hoflants Huys, juli 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab}2013{tab}{tab}07{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht 't Hoflants Huys, augustus 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab}2013{tab}{tab}08{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht 't Hoflants Huys, september 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab}2013{tab}{tab}09{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht 't Hoflants Huys, oktober 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab}2013{tab}{tab}10{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht 't Hoflants Huys, november 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab}2013{tab}{tab}11{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht 't Hoflants Huys, december 2013
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab}2013{tab}{tab}12{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}

Energiekosten2011 = Energiekosten 2011

IfInString, clipboart, %Energiekosten2011%
{
	Send Energiekosten overzicht + verbruik, 2011
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab}2011{tab}31{tab}12{tab}2011{tab 2}
	clipboard = %clipboardold%
	Return
}




kwart = Kwartaal

IfInString, clipboart, %kwart%
{
IfInString, clipboart, %1ekwart%
{
	Send Overzicht kosten en verbruik energie, 1e kwartaal 2013
	Send {tab}A3{tab}{space}{tab 2}{home}{tab}{home}{tab}2013{tab}{end}{tab}03{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %2ekwart%
{
	Send Overzicht kosten en verbruik energie, 2e kwartaal 2013
	Send {tab}A3{tab}{space}{tab 2}{home}{tab}04{tab}2013{tab}30{tab}06{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}


IfInString, clipboart, %4ekwart%
{
	Send Overzicht kosten en verbruik energie, 4e kwartaal 2013
	Send {tab}A3{tab}{space}{tab 2}{home}{tab}10{tab}2013{tab}{end}{tab}12{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %3ekwart%
{
	Send Overzicht kosten en verbruik energie, 3e kwartaal 2013
	Send {tab}A3{tab}{space}{tab 2}{home}{tab}07{tab}2013{tab}30{tab}09{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
}






















































































Skiped:
IfInString, clipboart, %L10F%
{
	Send Werktuigbouwkundige installatie t.b.v. Legionellapreventie, plattegrond fundering
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %L1KR%
{
	Send Werktuigbouwkundige installatie t.b.v. Legionellapreventie, plattegrond kruipruimte
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %L1K1%
{
	Send Werktuigbouwkundige installatie t.b.v. Legionellapreventie, plattegrond kelder -1
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %L100%
{
	Send Werktuigbouwkundige installatie t.b.v. Legionellapreventie, plattegrond begane grond
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %L1T1%
{
	Send Werktuigbouwkundige installatie t.b.v. Legionellapreventie, plattegrond tussen verdieping BG en 1e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %L101%
{
	Send Werktuigbouwkundige installatie t.b.v. Legionellapreventie, plattegrond 1e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %L1T2%
{
	Send Werktuigbouwkundige installatie t.b.v. Legionellapreventie, plattegrond tussen verdieping 1e en 2e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %L102%
{
	Send Werktuigbouwkundige installatie t.b.v. Legionellapreventie, plattegrond 2e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %L103%
{
	Send Werktuigbouwkundige installatie t.b.v. Legionellapreventie, plattegrond 3e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %L104%
{
	Send Werktuigbouwkundige installatie t.b.v. Legionellapreventie, plattegrond 4e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %L105%
{
	Send Werktuigbouwkundige installatie t.b.v. Legionellapreventie, plattegrond 5e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %L106%
{
	Send Werktuigbouwkundige installatie t.b.v. Legionellapreventie, plattegrond 6e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %L107%
{
	Send Werktuigbouwkundige installatie t.b.v. Legionellapreventie, plattegrond 7e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %L108%
{
	Send Werktuigbouwkundige installatie t.b.v. Legionellapreventie, plattegrond 8e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %L109%
{
	Send Werktuigbouwkundige installatie t.b.v. Legionellapreventie, plattegrond 9e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %L110%
{
	Send Werktuigbouwkundige installatie t.b.v. Legionellapreventie, plattegrond 10e verdieping
	clipboard = %clipboardold%
	Return
}



else
{
	msgbox Geen geldige invoer ontvangen!
	clipboard = %clipboardold%
	Return
}
Return




IfInString, clipboart, 01-2013
{
	Send {home}{tab}01{tab}2013{tab}31{tab}01{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, 02-2013
{
	Send {home}{tab}01{tab 2}28{tab}02{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, 03-2013
{
	Send {home}{tab}01{tab}2013{tab}31{tab}03{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, 04-2013
{
	Send {home}{tab}01{tab}2013{tab}31{tab}04{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, 05-2013
{
	Send {home}{tab}01{tab}2013{tab}31{tab}05{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, 06-2013
{
	Send {home}{tab}01{tab}2013{tab}31{tab}06{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, 07-2013
{
	Send {home}{tab}01{tab}2013{tab}31{tab}07{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, 08-2013
{
	Send {home}{tab}01{tab}2013{tab}31{tab}08{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, 09-2013
{
	Send {home}{tab}01{tab}2013{tab}31{tab}09{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, 10-2013
{
	Send {home}{tab}01{tab}2013{tab}31{tab}10{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, 11-2013
{
	Send {home}{tab}01{tab}2013{tab}31{tab}11{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, 12-2013
{
	Send {home}{tab}01{tab}2013{tab}31{tab}12{tab}2013{tab 2}
	clipboard = %clipboardold%
	Return
}



