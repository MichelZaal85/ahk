
^Y::
/*
clipboart = %clipboard%
adg = adg 
B100 = B100
B101 = B101

ifnotinstring, clipboart, %adg%
{
	goto CMMS
}
IfInString, clipboard, %B100%
{
	Send ADG B100 gevonden
	return 
}
IfInString, clipboard, %B101%
{
	Send ADG en B101
	return 
}
Else 
msgbox Wel ADG maar geen B100
return 

CMMS:
ifnotinstring, clipboart, %CMMS%
{
	goto geen
}
IfInString, clipboard, %B100%
{
	Send CMMS B100 gevonden
	return 
}
IfInString, clipboard, %B101%
{
	Send CMMS B101 gevonden
	return 
}

Else 
msgbox Wel ADG maar geen B100
return 


geen:
Msgbox Niets kunnen vinden...


ADG-B100
ADG-B101
GHS-B100
GHS-B101
CMMS-B100
CMMS-B101
CMMS B101 gevonden

ADG en B101













*/


;::findd::
;send {shiftdown}{tab 2}{shiftup}{ctrldown}ac{ctrlup}{tab 2}
clipboart = %clipboard%

adg = ADG
cmms = CMMS
mtl = MTL
dst= DST
ghs = GHS
hhg = HHG
jfr = JFR
lvs = LVS
lhf = LHF
mhv = MHV 
mrr = MRR
osd = OSD
spt = SPT
stv = STV
utz = UTZ 
vbl = VBL
vhb = VBH
wkb = WKB
whf = WHF
wbl = WBL

E10F = E10F 
E1K2 = E1K2 
E1K1 = E1K1 
E10K = E10K 
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
E20K = E20K
E200 = E200
E201 = E201
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
W10K = W10K
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
W20K = W20K
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

B10F = B10F 
B1K2 = B1K2
B1K1 = B1K1
B10K = B10K
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
B5 = B5 
B6 = B6 
B7 = B7 
B8 = B8 
 
VP100 = VP100 
VP101 = VP101 
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

D1K2 = D1K2
D1K1 = D1K1
D100 = D100
D101 = D101
D102 = D102
D103 = D103
D104 = D104
D105 = D105
D106 = D106
D107 = D107
D108 = D108
D109 = D109
D110 = D110

D1 = D2
D3 = D3
D4 = D4

AA10F = AA10F
AA1K1 = AA1K1
AA10K = AA10K
AA100 = AA100
AA101 = AA101
AA102 = AA102
AA103 = AA103
AA104 = AA104
AA105 = AA105
AA106 = AA106
AA107 = AA107
AA108 = AA108
AA109 = AA109
AA110 = AA110

AA2 = AA2 
AA3 = AA3 
AA4 = AA4 

BM1K2 = BM1K2 
BM1K1 = BM1K1 
BM100 = BM100 
BM101 = BM101 
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
G101 = G101 
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

B9 = B9 
B10 = B10
B11 = B11

S1K1 = S1K1
S1K2 = S1K2
S100 = S100
S101 = S101
S102 = S102
S103 = S103
S104 = S104
S105 = S105
S106 = S106
S107 = S107 
S108 = S108 
S109 = S109
S110 = S110
S200 = S200
S300 = S300
S400 = S400

energie = energiekosten

ifnotinstring, clipboart, %adg%
{
	goto CMMS
}
IfInString, clipboard, %B10F%
{
	Send Bouwkundige plattegrond, fundering
	return 
}
IfInString, clipboart, %B10K%
{
	Send Bouwkundige plattegrond, kruipruimte 
	return 
}
IfInString, clipboart, %B1K1%
{
	Send Bouwkundige plattegrond,  kelder -1
	return 
}
IfInString, clipboart, %B1K2%
{
	Send Bouwkundige plattegrond,  kelder -2
	return 
}
IfInString, clipboart, %B100%
{
	Send Bouwkundige plattegrond, begane grond
	return 
}
IfInString, clipboart, %B101%
{
	Send Bouwkundige plattegrond, 1 verdieping
	return 
}
IfInString, clipboart, %B102%
{
	Send Bouwkundige plattegrond, 2 verdieping
	return 
}
IfInString, clipboart, %B103%
{
	Send Bouwkundige plattegrond, 3 verdieping
	return 
}
IfInString, clipboart, %B104%
{
	Send Bouwkundige plattegrond, 4 verdieping
	return 
}
IfInString, clipboart, %B105%
{
	Send Bouwkundige plattegrond, 5 verdieping
	return 
}
IfInString, clipboart, %B106%
{
	Send Bouwkundige plattegrond, 6 verdieping
	return 
}
IfInString, clipboart, %B107%
{
	Send Bouwkundige plattegrond, 7 verdieping
	return 
}
IfInString, clipboart, %B108%
{
	Send Bouwkundige plattegrond, 8 verdieping
	return 
}
IfInString, clipboart, %B109%
{
	Send Bouwkundige plattegrond, 9 verdieping
	return 
}
IfInString, clipboart, %B110%
{
	Send Bouwkundige plattegrond, 10 verdieping
	return 
}
;E-Installaties licht en kracht
IfInString, clipboart, %E10F%
{
	Send Elektrotechnische installatie t.b.v. licht en krachtinstallatie, plattegrond fundering
	return 
}
IfInString, clipboart, %E10K%
{
	Send Elektrotechnische installatie t.b.v. licht en krachtinstallatie, plattegrond kruipruimte
	return 
}
IfInString, clipboart, %E1K1%
{
	Send Elektrotechnische installatie t.b.v. licht en krachtinstallatie, plattegrond kelder -1
	return 
}
IfInString, clipboart, %E1K2%
{
	Send Elektrotechnische installatie t.b.v. licht en krachtinstallatie, plattegrond kelder -2
	return 
}
IfInString, clipboart, %E100%
{
	Send Elektrotechnische installatie t.b.v. licht en krachtinstallatie, plattegrond begane grond
	return 
}
IfInString, clipboart, %E101%
{
	Send Elektrotechnische installatie t.b.v. licht en krachtinstallatie, plattegrond 1e verdieping
	return 
}
IfInString, clipboart, %E102%
{
	Send Elektrotechnische installatie t.b.v. licht en krachtinstallatie, plattegrond 2e verdieping
	return 
}
IfInString, clipboart, %E103%
{
	Send Elektrotechnische installatie t.b.v. licht en krachtinstallatie, plattegrond 3e verdieping
	return 
}
IfInString, clipboart, %E104%
{
	Send Elektrotechnische installatie t.b.v. licht en krachtinstallatie, plattegrond 4e verdieping
	return 
}
IfInString, clipboart, %E105%
{
	Send Elektrotechnische installatie t.b.v. licht en krachtinstallatie, plattegrond 5e verdieping
	return 
}
IfInString, clipboart, %E106%
{
	Send Elektrotechnische installatie t.b.v. licht en krachtinstallatie, plattegrond 6e verdieping
	return 
}
IfInString, clipboart, %E107%
{
	Send Elektrotechnische installatie t.b.v. licht en krachtinstallatie, plattegrond 7e verdieping
	return 
}
IfInString, clipboart, %E108%
{
	Send Elektrotechnische installatie t.b.v. licht en krachtinstallatie, plattegrond 8e verdieping
	return 
}
IfInString, clipboart, %E109%
{
	Send Elektrotechnische installatie t.b.v. licht en krachtinstallatie, plattegrond 9e verdieping
	return 
}
IfInString, clipboart, %E110%
{
	Send Elektrotechnische installatie t.b.v. licht en krachtinstallatie, plattegrond 10e verdieping
	return 
}
;E-installatie zwakstroom
IfInString, clipboart, %E2K2%
{
	Send Elektrotechnische installatie t.b.v. zwakstroominstallatie plattegrond 
	return 
}
IfInString, clipboart, %E2K1%
{
	Send Elektrotechnische installatie t.b.v. zwakstroominstallatie plattegrond 
	return 
}
IfInString, clipboart, %E20F%
{
	Send Elektrotechnische installatie t.b.v. zwakstroominstallatie plattegrond 
	return 
}
IfInString, clipboart, %E20K%
{
	Send Elektrotechnische installatie t.b.v. zwakstroominstallatie plattegrond 
	return 
}
IfInString, clipboart, %E200%
{
	Send Elektrotechnische installatie t.b.v. zwakstroominstallatie plattegrond 
	return 
}
IfInString, clipboart, %E201%
{
	Send Elektrotechnische installatie t.b.v. zwakstroominstallatie plattegrond 
	return 
}
IfInString, clipboart, %E202%
{
	Send Elektrotechnische installatie t.b.v. zwakstroominstallatie plattegrond 
	return 
}
IfInString, clipboart, %E203%
{
	Send Elektrotechnische installatie t.b.v. zwakstroominstallatie plattegrond 
	return 
}
IfInString, clipboart, %E204%
{
	Send Elektrotechnische installatie t.b.v. zwakstroominstallatie plattegrond 
	return 
}
IfInString, clipboart, %E205%
{
	Send Elektrotechnische installatie t.b.v. zwakstroominstallatie plattegrond 
	return 
}
IfInString, clipboart, %E206%
{
	Send Elektrotechnische installatie t.b.v. zwakstroominstallatie plattegrond 
	return 
}
IfInString, clipboart, %E207%
{
	Send Elektrotechnische installatie t.b.v. zwakstroominstallatie plattegrond 
	return 
}
IfInString, clipboart, %E208%
{
	Send Elektrotechnische installatie t.b.v. zwakstroominstallatie plattegrond 
	return 
}
IfInString, clipboart, %E209%
{
	Send Elektrotechnische installatie t.b.v. zwakstroominstallatie plattegrond 
	return 
}
IfInString, clipboart, %E210%
{
	Send Elektrotechnische installatie t.b.v. zwakstroominstallatie plattegrond 
	return 
}
;W-installatie t.b.v. klimaat
IfInString, clipboart, %W10F%
{
	Send Werktuigbouwkundige installatie t.b.v. klimaat installatie, plattegrond 
	return 
}
IfInString, clipboart, %W1K2%
{
	Send Werktuigbouwkundige installatie t.b.v. klimaat installatie, plattegrond 
	return 
}
IfInString, clipboart, %W1K1%
{
	Send Werktuigbouwkundige installatie t.b.v. klimaat installatie, plattegrond 
	return 
}
IfInString, clipboart, %W10K%
{
	Send Werktuigbouwkundige installatie t.b.v. klimaat installatie, plattegrond 
	return 
}
IfInString, clipboart, %W100%
{
	Send Werktuigbouwkundige installatie t.b.v. klimaat installatie, plattegrond 
	return 
}
IfInString, clipboart, %W101%
{
	Send Werktuigbouwkundige installatie t.b.v. klimaat installatie, plattegrond 
	return 
}
IfInString, clipboart, %W102%
{
	Send Werktuigbouwkundige installatie t.b.v. klimaat installatie, plattegrond 
	return 
}
IfInString, clipboart, %W103%
{
	Send Werktuigbouwkundige installatie t.b.v. klimaat installatie, plattegrond 
	return 
}
IfInString, clipboart, %W104%
{
	Send Werktuigbouwkundige installatie t.b.v. klimaat installatie, plattegrond 
	return 
}
IfInString, clipboart, %W105%
{
	Send Werktuigbouwkundige installatie t.b.v. klimaat installatie, plattegrond 
	return 
}
IfInString, clipboart, %W106%
{
	Send Werktuigbouwkundige installatie t.b.v. klimaat installatie, plattegrond 
	return 
}
IfInString, clipboart, %W107%
{
	Send Werktuigbouwkundige installatie t.b.v. klimaat installatie, plattegrond 
	return 
}
IfInString, clipboart, %W108%
{
	Send Werktuigbouwkundige installatie t.b.v. klimaat installatie, plattegrond 
	return 
}
IfInString, clipboart, %W109%
{
	Send Werktuigbouwkundige installatie t.b.v. klimaat installatie, plattegrond 
	return 
}
IfInString, clipboart, %W110%
{
	Send Werktuigbouwkundige installatie t.b.v. klimaat installatie, plattegrond 
	return 
}
;W-Installatie t.b.v. santiair
IfInString, clipboart, %W20F%
{
	Send Werktuigbouwkundige installatie t.b.v. sanitair installatie, plattegrond 
	return 
}
IfInString, clipboart, %W2K1%
{
	Send Werktuigbouwkundige installatie t.b.v. sanitair installatie, plattegrond 
	return 
}
IfInString, clipboart, %W2K2%
{
	Send Werktuigbouwkundige installatie t.b.v. sanitair installatie, plattegrond 
	return 
}
IfInString, clipboart, %W20K%
{
	Send Werktuigbouwkundige installatie t.b.v. sanitair installatie, plattegrond 
	return 
}
IfInString, clipboart, %W200%
{
	Send Werktuigbouwkundige installatie t.b.v. sanitair installatie, plattegrond 
	return 
}
IfInString, clipboart, %W201%
{
	Send Werktuigbouwkundige installatie t.b.v. sanitair installatie, plattegrond 
	return 
}
IfInString, clipboart, %W202%
{
	Send Werktuigbouwkundige installatie t.b.v. sanitair installatie, plattegrond 
	return 
}
IfInString, clipboart, %W203%
{
	Send Werktuigbouwkundige installatie t.b.v. sanitair installatie, plattegrond 
	return 
}
IfInString, clipboart, %W204%
{
	Send Werktuigbouwkundige installatie t.b.v. sanitair installatie, plattegrond 
	return 
}
IfInString, clipboart, %W205%
{
	Send Werktuigbouwkundige installatie t.b.v. sanitair installatie, plattegrond 
	return 
}
IfInString, clipboart, %W206%
{
	Send Werktuigbouwkundige installatie t.b.v. sanitair installatie, plattegrond 
	return 
}
IfInString, clipboart, %W207%
{
	Send Werktuigbouwkundige installatie t.b.v. sanitair installatie, plattegrond 
	return 
}
IfInString, clipboart, %W208%
{
	Send Werktuigbouwkundige installatie t.b.v. sanitair installatie, plattegrond 
	return 
}
IfInString, clipboart, %W209%
{
	Send Werktuigbouwkundige installatie t.b.v. sanitair installatie, plattegrond 
	return 
}
IfInString, clipboart, %W210%
{
	Send Werktuigbouwkundige installatie t.b.v. sanitair installatie, plattegrond 
	return 
}
;Verpleegkundig oproep systeem
IfInString, clipboart, %VP100%
{
	Send Verpleegkundig oproepsysteem, plattegrond begane grond
	return 
}
IfInString, clipboart, %VP101%
{
	Send Verpleegkundig oproepsysteem, plattegrond 1e verdieping
	return 
}
IfInString, clipboart, %VP102%
{
	Send Verpleegkundig oproepsysteem, plattegrond 2e verdieping
	return 
}
IfInString, clipboart, %VP103%
{
	Send Verpleegkundig oproepsysteem, plattegrond 3e verdieping
	return 
}
IfInString, clipboart, %VP104%
{
	Send Verpleegkundig oproepsysteem, plattegrond 4e verdieping
	return 
}
IfInString, clipboart, %VP105%
{
	Send Verpleegkundig oproepsysteem, plattegrond 5e verdieping
	return 
}
IfInString, clipboart, %VP106%
{
	Send Verpleegkundig oproepsysteem, plattegrond 6e verdieping
	return 
}
IfInString, clipboart, %VP107%
{
	Send Verpleegkundig oproepsysteem, plattegrond 7e verdieping
	return 
}
IfInString, clipboart, %VP108%
{
	Send Verpleegkundig oproepsysteem, plattegrond 8e verdieping
	return 
}
IfInString, clipboart, %VP109%
{
	Send Verpleegkundig oproepsysteem, plattegrond 9e verdieping
	return 
}
IfInString, clipboart, %VP110%
{
	Send Verpleegkundig oproepsysteem, plattegrond 9e verdieping
	return 
}

;Bliksem/Aardinginstallatie
IfInString, clipboart, %A10F%
{
	Send Bliksem/Aardingsinstallatie, plattegrond 
	return 
}
IfInString, clipboart, %A100%
{
	Send Bliksem/Aardingsinstallatie, plattegrond 
	return 
}
IfInString, clipboart, %A101%
{
	Send Bliksem/Aardingsinstallatie, plattegrond 
	return 
}
IfInString, clipboart, %A102%
{
	Send Bliksem/Aardingsinstallatie, plattegrond 
	return 
}
IfInString, clipboart, %A103%
{
	Send Bliksem/Aardingsinstallatie, plattegrond 
	return 
}
IfInString, clipboart, %A104%
{
	Send Bliksem/Aardingsinstallatie, plattegrond 
	return 
}
IfInString, clipboart, %A105%
{
	Send Bliksem/Aardingsinstallatie, plattegrond 
	return 
}
IfInString, clipboart, %A106%
{
	Send Bliksem/Aardingsinstallatie, plattegrond 
	return 
}
IfInString, clipboart, %A107%
{
	Send Bliksem/Aardingsinstallatie, plattegrond 
	return 
}
IfInString, clipboart, %A108%
{
	Send Bliksem/Aardingsinstallatie, plattegrond 
	return 
}
IfInString, clipboart, %A109%
{
	Send Bliksem/Aardingsinstallatie, plattegrond 
	return 
}
IfInString, clipboart, %A110%
{
	Send Bliksem/Aardingsinstallatie, plattegrond 
	return 
}
;Data Installatie
IfInString, clipboart, %D100%
{
	Send Data installatie, plattegrond begane grond 
	return 
}
IfInString, clipboart, %D101%
{
	Send Data installatie, plattegrond begane grond 
	return 
}
IfInString, clipboart, %D102%
{
	Send Data installatie, plattegrond begane grond 
	return 
}
IfInString, clipboart, %D103%
{
	Send Data installatie, plattegrond begane grond 
	return 
}
IfInString, clipboart, %D104%
{
	Send Data installatie, plattegrond begane grond 
	return 
}
IfInString, clipboart, %D105%
{
	Send Data installatie, plattegrond begane grond 
	return 
}
IfInString, clipboart, %D106%
{
	Send Data installatie, plattegrond begane grond 
	return 
}
IfInString, clipboart, %D107%
{
	Send Data installatie, plattegrond begane grond 
	return 
}
IfInString, clipboart, %D108%
{
	Send Data installatie, plattegrond begane grond 
	return 
}
IfInString, clipboart, %D109%
{
	Send Data installatie, plattegrond begane grond 
	return 
}
IfInString, clipboart, %D110%
{
	Send Data installatie, plattegrond begane grond 
	return 
}
;Gebruiksvergunning
IfInString, clipboart, %G100%
{
	Send Gebruiksvergunning, plattegrond 
	return 
}
IfInString, clipboart, %G101%
{
	Send Gebruiksvergunning, plattegrond 
	return 
}
IfInString, clipboart, %G102%
{
	Send Gebruiksvergunning, plattegrond 
	return 
}
IfInString, clipboart, %G103%
{
	Send Gebruiksvergunning, plattegrond 
	return 
}
IfInString, clipboart, %G104%
{
	Send Gebruiksvergunning, plattegrond 
	return 
}
IfInString, clipboart, %G105%
{
	Send Gebruiksvergunning, plattegrond 
	return 
}
IfInString, clipboart, %G106%
{
	Send Gebruiksvergunning, plattegrond 
	return 
}
IfInString, clipboart, %G107%
{
	Send Gebruiksvergunning, plattegrond 
	return 
}
IfInString, clipboart, %G108%
{
	Send Gebruiksvergunning, plattegrond 
	return 
}
IfInString, clipboart, %G109%
{
	Send Gebruiksvergunning, plattegrond 
	return 
}
IfInString, clipboart, %G110%
{
	Send Gebruiksvergunning, plattegrond 
	return 
}
IfInString, clipboart, %G1K1%
{
	Send Gebruiksvergunning, plattegrond 
	return 
}
IfInString, clipboart, %G1TR%
{
	Send Gebruiksvergunning, plattegrond 
	return 
}
;Brandmeldinstallatie
IfInString, clipboart, %BM100%
{
	Send Brandmeldinstallatie, plattegrond begane grond 
	return 
}
IfInString, clipboart, %BM101%
{
	Send Brandmeldinstallatie, plattegrond begane grond 
	return 
}
IfInString, clipboart, %BM102%
{
	Send Brandmeldinstallatie, plattegrond begane grond 
	return 
}
IfInString, clipboart, %BM103%
{
	Send Brandmeldinstallatie, plattegrond begane grond 
	return 
}
IfInString, clipboart, %BM104%
{
	Send Brandmeldinstallatie, plattegrond begane grond 
	return 
}
IfInString, clipboart, %BM105%
{
	Send Brandmeldinstallatie, plattegrond begane grond 
	return 
}
IfInString, clipboart, %BM106%
{
	Send Brandmeldinstallatie, plattegrond begane grond 
	return 
}
IfInString, clipboart, %BM107%
{
	Send Brandmeldinstallatie, plattegrond begane grond 
	return 
}
IfInString, clipboart, %BM108%
{
	Send Brandmeldinstallatie, plattegrond begane grond 
	return 
}
IfInString, clipboart, %BM109%
{
	Send Brandmeldinstallatie, plattegrond begane grond 
	return 
}
IfInString, clipboart, %BM110%
{
	Send Brandmeldinstallatie, plattegrond begane grond 
	return 
}

else 
msgbox Geen juiste gegevens kunnen vinden`nVoer juiste gegevens in a.u.b.
return 

;Overige installatie/Florence
CMMS:
msgbox Geen juiste gegevens gevonden.
return



/*



FLO-ADG-B103
Bouwkundige plattegrond, 3 verdieping
FLO-GHS-B100









*/






