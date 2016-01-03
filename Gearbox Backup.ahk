#Persistent
#SingleInstance force
;Custom icoontje
menu, tray, Icon, gear.ico,1,1
Menu, TRAY, Tip, Gearbox

!F8::
run C:\Users\michel\Documents\Scripts\Scripts\StabiBASE aanvulling v1.8.ahk
return

; -------------------------SCRIPT HOTKEYS-------------------------------

;reload the script
^!r::
Reload

; End/Close HotkeyScript
^!+e::
Exitapp


;  --------------------------------------------------------------------
return


#a::
Run T:\
return


#p::
run J:\03-Lopend Project
return

^7::
send regg{space}{space}cc{space}
return

:*:ddd::
FormatTime, datumvandaag,, ShortDate
send %datumvandaag%
return





;~+LButton::
return 

;~RButton::
;return


; Capslock uit
;----------------
CapsLock::
return

+CapsLock::
return


F1::
return
; --------------

#O::
run C:\Users\michel\Documents
return 






; Chrome / Internet
#i::
run C:\Users\michel\AppData\Local\Google\Chrome\Application\chrome.exe
return


; Downloads Map
#Q::
Run C:\Users\michel\Downloads
return

; Tekeningen K:\ Schijf MAP
#T::
run K:\Tekeningenbeheer
return

#M::
Run C:\Users\michel\
return

#G::
Run L:\Michel
Return


;Windows toetst C voor de rekenmachine
#C::
Run calc
return


;close adobe script
^+X::
WinClose ahk_class AcrobatSDIWindow
return






; Wijzig naam ctrl-V  
^1::
Send {F2}{home}{ctrldown}v{ctrlup}{enter}{down}
return



; Open Notepad++
^!F5::
Run C:\Program Files (x86)\Notepad++\notepad++
sleep 500
send {ctrldown}n{ctrlup}
sleep 100
send {ctrldown}v{ctrlup}
clipboard = 
return 


;Printscreen met paint.net 
^PrintScreen::
Send {PRINTSCREEN}
run C:\Program Files\Paint.NET\PaintDotNet.exe
WinWait, Untitled (100`%) - Paint.NET v3.5.10, 
IfWinNotActive, Untitled (100`%) - Paint.NET v3.5.10, , WinActivate, Untitled (100`%) - Paint.NET v3.5.10, 
WinWaitActive, Untitled (100`%) - Paint.NET v3.5.10, 
send {ctrldown}v{ctrlup}
WinWait, Paste, 
send e
return 


; CTRL+F5 Notepad++
^F5::
Run C:\Program Files (x86)\Notepad++\notepad++
return 





; Shortcut menu Alt F12
!F12::
Run C:\Users\michel\Documents\Scripts\Scripts\ShotcutMenu.ahk
return 






;---------------------------------------------------------- ----------------------TEKENINGENBEHEER----------------------------------------------------------------------------




; -------------Hotstrings (autoreplace)-----------------


::nvt::n.v.t.
::.n.v.t.::n.v.t.
::nv.t.::n.v.t.
::nv.t::n.v.t.
::n.vt::n.v.t.
::n.vt.::n.v.t.
::tbv::t.b.v.
::t.bv::t.b.v.
::tb.v::t.b.v. 
::tbv.::t.b.v.
::.tbv::t.b.v.
::nav::n.a.v.
::n.a.v::n.a.v.
::n.av::n.a.v.
::na.v::n.a.v.
::.nav.::n.a.v.
::tvv::t.v.v.
::ipv::i.p.v.
::ipv.::i.p.v.
::i.p.v::i.p.v.
::tav::t.a.v.
::ta.v::t.a.v.
::ta.v.::t.a.v.
::t.a.v::t.a.v.
::t.av::t.a.v.
::t.b.v::t.b.v.
::svp::s.v.p.
::s.v.p::s.v.p.
::aub::a.u.b.
::a.u.b::a.u.b.
::t.v.v.::t.v.v.
::t.v.v::t.v.v.
::n.a.v.::n.a.v.
::n.a.v.::n.a.v.
::ctl::ctrl
::crl::ctrl
::CV::c.v.
::ivm::i.v.m.
::mbt::m.b.t.
::i.v.m::i.v.m.
::i.v.m.::in verband met
::t.b.v.::ten behoeve van
::n.a.v.::naar aanleiding van
::t.v.v.::ter voorkoming van
::s.v.p.::s'il vous plaît
::a.u.b.::alstubliefd
::i.p.v.::in plaats van
::dubellijns::dubbellijns
::dubbelijns::dubbellijns
::dubelijns::dubbellijns
::stappenpaln::stappenplan
::stapenplan::stappenplan

:*?:isntallaties::installatie
:*?:instllaties::installatie
:*?:Boudeel::bouwdeel 
:*?:Bouweel::bouwdeel 
:*?:singalering::signalering
:*?:Princiepschema::Principeschema
:*?:geplaast::geplaatst
:*:speficaties::specificaties
:*:speficatie::specificatie
:*:speficiatie::specificatie
:*:dubellijns::dubbellijns
:*:dubbelijns::dubbellijns
:*:dubelijns::dubbellijns
:*:hartliljn::hartlijn


:C1*:FLO_::FLO-
;:C1*:fLO::FLO
;:*:FlO::FLO
;:*:FLo::FLO
;:*:flo::FLO
:C1*:VOH_::VOH-
:C1*:DPC_::DPC-
:C0*?0:Singalering::Signalering
::BB10::Brandveiligheids plattegrond, 





:C1*:ADG_::ADG-
:C1*:CMMS_::CMMS-
:C1*:MTL_::MTL-
:C1*:DKD_::DKD-
:C1*:DST_::DST-
:C1*:GBK_::GBK-
:C1*:GHS_::GHS-
:C1*:HHG_::HHG-
:C1*:JFR_::JFR-
:C1*:LVV_::LVV-
:C1*:LRS_::LRS-
:C1*:LVS_::LVS-
:C1*:LHF_::LHF-
:C1*:MHV_::MHV-
:C1*:MRP_::MRP-
:C1*:MRR_::MRR-
:C1*:OSD_::OSD-
:C1*:ODB_::ODB-
:C1*:SPT_::SPT-
:C1*:HHS_::HHS-
:C1*:UTZ_::UTZ-
:C1*:VBL_::VBL-
:C1*:VBH_::VBH-
:C1*:WKB_::WKB-
:C1*:WHF_::WHF-
:C1*:WBL_::WBL-
:C1*:STV_::STV-
:C1*:STV(K)_::STV(K)-
:C1*:STV(Z)_::STV(Z)-


:*:hwa::HWA
:*:bg::BG
:*:DPC600::K:\Tekeningenbeheer\DPC\T10010\Poortugaal\06 Centraal Magazijn\Bouwkundig\Plattegronden\DPC-06-B100
:*:DPC601::K:\Tekeningenbeheer\DPC\T10010\Poortugaal\06 Centraal Magazijn\Bouwkundig\Plattegronden\DPC-06-B101
::DPC18::K:\Tekeningenbeheer\DPC\T10010\Poortugaal\18 WAC\Bouwkundig\Plattegronden\DPC-18-B100.dwg

:C0*:logornd::K:\CAD8\Bibliotheek\Logo's\Logo rijndam revalidatiecentrum.jpeg
:*:logrnd::K:\CAD8\Bibliotheek\Logo's\Logo rijndam revalidatiecentrum.jpeg


; --------------AUTOCAD----------------------

:*:{P}::
winactivate, ahk_class AfxMDIFrame90u
winwait, ahk_class AfxMDIFrame90u
send loadstb{space}
sleep 100
Send onderhoek{ENTER}
WinWait, Tekeningsetup, Specificeren &invoeg
IfWinNotActive, Tekeningsetup, Specificeren &invoeg, WinActivate, Tekeningsetup, Specificeren &invoeg
WinWaitActive, Tekeningsetup, Specificeren &invoeg
Send, n{TAB}{SPACE}{altdown}i{altup}{ENTER}
return


:*:[p]::
winactivate, ahk_class AfxMDIFrame90u
winwait, ahk_class AfxMDIFrame90u
send loadstb{space}
sleep 100
Send 321{ENTER}
WinWait, Tekeningsetup, Specificeren &invoeg
IfWinNotActive, Tekeningsetup, Specificeren &invoeg, WinActivate, Tekeningsetup, Specificeren &invoeg
WinWaitActive, Tekeningsetup, Specificeren &invoeg
Send, n{TAB}{SPACE}{altdown}i{altup}{ENTER}
return





:*:sled::
winactivate, ahk_class AfxMDIFrame90u
winwait, ahk_class AfxMDIFrame90u
Send, sled{SPACE}
WinWait, Edit Drawing Scales, 
IfWinNotActive, Edit Drawing Scales, , WinActivate, Edit Drawing Scales, 
WinWaitActive, Edit Drawing Scales, 
Send, {ALTDOWN}r{ALTUP}{ENTER}
return


!HOME::
winactivate  ahk_class AfxMDIFrame90u
send _MODEL
send {enter}
return 


; activate stabitools
+F8::
;MouseClick, , 1120, 22
;Sleep 200
;MouseClick, left,  1120,  49
;Sleep 100
;MouseClick, left,  1235,  64
;Sleep 200
;Send, {ESC}
return



:*C1:L1K2::Werktuigbouwkundige installatie t.b.v. Legionella preventie, plattegrond kelder -2
:*C1:L1K1::Werktuigbouwkundige installatie t.b.v. Legionella preventie, plattegrond kelder -1
:*C1:L1KR::Werktuigbouwkundige installatie t.b.v. Legionella preventie, plattegrond kruipruimte
:*C1:L10F::Werktuigbouwkundige installatie t.b.v. Legionella preventie, plattegrond fundering
:*C1:L100::Werktuigbouwkundige installatie t.b.v. Legionella preventie, plattegrond begane grond
:*C1:L1T0::Werktuigbouwkundige installatie t.b.v. Legionella preventie, plattegrond tussenverdieping tussen BG en 1e verdieping
:*C1:L101::Werktuigbouwkundige installatie t.b.v. Legionella preventie, plattegrond 1e Verdieping
:*C1:L1T1::Werktuigbouwkundige installatie t.b.v. Legionella preventie, plattegrond tussenverdieping tussen 1e en 2e verdieping
:*C1:L102::Werktuigbouwkundige installatie t.b.v. Legionella preventie, plattegrond 2e Verdieping
:*C1:L103::Werktuigbouwkundige installatie t.b.v. Legionella preventie, plattegrond 3e Verdieping
:*C1:L104::Werktuigbouwkundige installatie t.b.v. Legionella preventie, plattegrond 4e Verdieping
:*C1:L105::Werktuigbouwkundige installatie t.b.v. Legionella preventie, plattegrond 5e Verdieping
:*C1:L106::Werktuigbouwkundige installatie t.b.v. Legionella preventie, plattegrond 6e Verdieping
:*C1:L107::Werktuigbouwkundige installatie t.b.v. Legionella preventie, plattegrond 7e Verdieping
:*C1:L108::Werktuigbouwkundige installatie t.b.v. Legionella preventie, plattegrond 8e Verdieping
:*C1:L109::Werktuigbouwkundige installatie t.b.v. Legionella preventie, plattegrond 9e Verdieping
:*C1:L110::Werktuigbouwkundige installatie t.b.v. Legionella preventie, Plattegrond 10e Verdieping










; ------------------------------AFHANKELIJK PER PROGAMMA, HOTKEYS---------------------------------------
; /*



:*C1:a0::A0
:*C1:a1::A1
:*C1:a2::A2
:*C1:a3::A3
:*C1:a4::A4
:*C1:z3::Z3
:*C1:3×a4::3×A4
:*C1:4×a4::4×A4
:*C1:5×a4::5×A4
::C0::aalkajsdflkj::

return



; Kopieer naar beide schermen.
^!V::
WinWait, Frontpage - Google Chrome, 
IfWinNotActive, Frontpage - Google Chrome, , WinActivate, Frontpage - Google Chrome, 
WinWaitActive, Frontpage - Google Chrome, 
MouseClick, left,  1182,  401
clipboardold = %clipboardall%
Send, {ctrldown}ac{ctrlup}{shiftdown}{TAB}{shiftup}{ctrldown}v{ctrlup}{TAB 9}
return



^!C::
WinWait, Frontpage - Google Chrome, 
IfWinNotActive, Frontpage - Google Chrome, , WinActivate, Frontpage - Google Chrome, 
WinWaitActive, Frontpage - Google Chrome, 
MouseClick, left,  1182,  401
clipboardold = %clipboardall%
Send {ctrldown}ac{ctrlup}
send {shiftdown}{TAB}{shiftup}{ctrldown}v{ctrlup}{TAB 2}



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
OSD = OSD
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

2012 = 2012
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
Keuringslijst = Keuringslijst

MonsternameJAN = Monstername Jan
MonsternameFEB = Monstername Feb
MonsternameMRT = Monstername Mrt
MonsternameAPR = Monstername Apr
MonsternameMEI = Monstername Mei
MonsternameJUN = Monstername Jun
MonsternameJUL = Monstername Jul
MonsternameAUG = Monstername Aug
MonsternameSEP = Monstername Sep
MonsternameOKT = Monstername Okt
MonsternameNOV = Monstername Nov
MonsternameDEC = Monstername Dec

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

1ekwart = Energiekosten 1e 
2ekwart = Energiekosten 2e
3ekwart = Energiekosten 3e
4ekwart = Energiekosten 4e

Veilig = Veilig Feest

vergunning = Vergunningen
energie = energiekosten
Werkzaam = Werkzaamheden V&F
storing = stappenplan storingen
DOS = DOS

stapplanJan = Stappenplan Jan
stapplanFeb = Stappenplan Feb
stapplanMrt = Stappenplan Mrt
stapplanApr = Stappenplan Apr
stapplanMei = Stappenplan Mei
stapplanJun = Stappenplan Jun
stapplanJul = Stappenplan Jul
stapplanAug = Stappenplan Aug
stapplanSep = Stappenplan Sep
stapplanOkt = Stappenplan Okt
stapplanNov = Stappenplan Nov
stapplanDec = Stappenplan Dec

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


Risicoanalyse = Risicoanalyse

DPC = DPC
Spoellijst = Spoellijst
zuurstof = Veiligheid Zuurstof


Portofoongebruik = Portofoongebruik
scootmobiel = Stal

VOHE4 = VOH-002-E4




clipboart = %clipboard%

IfInString, clipboart, %VOH%
{
	send {shiftdown}{tab 2}{shiftup}{home}{del 8}{tab 2}
	goto stringvoh
}

IfInString, clipboart, %RABO%
{
	goto stringRABO
}



IfInString, clipboart, %DPC%
{
	send {shiftdown}{tab}{shiftup}{ctrldown}c{ctrlup}{shiftdown}{tab 2}{shiftup}{enter}
	WinWait, Openen, 
	IfWinNotActive, Openen, , WinActivate, Openen, 
	WinWaitActive, Openen
	send {ctrldown}v{ctrlup}{end}
	send .dwg
	Send {enter}
	ifwinactive ahk_class #32770
	{
	ifwinnotactive ahk_class #32770
	winwaitactive ahk_class #32770
	send {enter}
	sleep 10
	send {esc}
	}
	WinWait, Frontpage - Google Chrome, 
	IfWinNotActive, Frontpage - Google Chrome, , WinActivate, Frontpage - Google Chrome, 
	WinWaitActive, Frontpage - Google Chrome, 
	send {tab 3}
	WinWait, Frontpage - Google Chrome, 
	IfWinNotActive, Frontpage - Google Chrome, , WinActivate, Frontpage - Google Chrome, 
	WinWaitActive, Frontpage - Google Chrome, 
}






opnieuw:

IfInString, clipboart, %Veilig% 
{
	Send Folder brandweer, veilig feestvieren
	send {tab}A4{tab}{space}{tab}{space}{shiftdown}{tab 2}{shiftup}
	clipboard = %clipboardold%
	return 
}


IfInString, clipboart, %Temp01%
{
	send Temperatuur controlelijst, januarie 2012 
	send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %Temp02%
{
	send Temperatuur controlelijst, februari 2012
	send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}

IfInString, clipboart, %Temp03%
{
	send Temperatuur controlelijst, maart 2012
	send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}

IfInString, clipboart, %Temp04%
{
	send Temperatuur controlelijst, april 2012 
	send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}

IfInString, clipboart, %Temp05%
{
	send Temperatuur controlelijst, mei 2012 
	send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}

IfInString, clipboart, %Temp06%
{
	send Temperatuur controlelijst, juni 2012 
	send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}

IfInString, clipboart, %Temp07%
{
	send Temperatuur controlelijst, juli 2012 
	send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}

IfInString, clipboart, %Temp08%
{
	send Temperatuur controlelijst, augustus 2012 
	send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}

IfInString, clipboart, %Temp09%
{
	send Temperatuur controlelijst, september 2012 
	send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}

IfInString, clipboart, %Temp10%
{
	send Temperatuur controlelijst, oktober 2012 
	send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}

IfInString, clipboart, %Temp11%
{
	send Temperatuur controlelijst, november 2012 
	send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}

IfInString, clipboart, %Temp12%
{
	send Temperatuur controlelijst, december 2012 
	send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %Portofoongebruik%
{
	Send Communicatie radioverkeer portofoongebruik 
	send {tab}A4{tab}{space}{tab 2}{tab 8}{enter}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %Spoellijst%
{
	send Spoellijst t.b.v. Legionella preventie, week{space}
	send {shiftdown}{tab 2}{shiftup}{end}{shiftdown}{left 2}{shiftup}{ctrldown}c{ctrlup}{tab 2}{end}{ctrldown}v{ctrlup}{tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}




IfInString, clipboart, %Liftkeuring%
{
	Send Liftkeuring certificaat, lift{space} 
	send {tab}A4{tab}{space}{tab}{space}{shiftdown}{tab 3}{shiftup}{end}
	clipboard = %clipboardold%
	return 
}

IfInString, clipboart, %T100%
{
	Send Transport installatie, plattegrond liften overzicht
	send {tab}A0{tab}{space}{tab 8}
	clipboard = %clipboardold%
	return 
}


IfInString, clipboart, %TotaaloverzichtJan%
{
	Send Totaaloverzicht energie, januari 2012 
	send {tab}A2{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab 3}
	clipboard = %clipboardold%
	return 
}

IfInString, clipboart, %TotaaloverzichtFeb%
{
	Send Totaaloverzicht energie, februari 2012 
	send {tab}A2{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}02{tab 3}
	clipboard = %clipboardold%
	return 
}

IfInString, clipboart, %TotaaloverzichtMrt%
{
	Send Totaaloverzicht energie, maart 2012 
	send {tab}A2{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}03{tab 3}
	clipboard = %clipboardold%
	return 
}

IfInString, clipboart, %TotaaloverzichtApr%
{
	Send Totaaloverzicht energie, april 2012 
	send {tab}A2{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}04{tab 3}
	clipboard = %clipboardold%
	return 
}

IfInString, clipboart, %TotaaloverzichtMei%
{
	Send Totaaloverzicht energie, mei 2012 
	send {tab}A2{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}05{tab 3}
	clipboard = %clipboardold%
	return 
}

IfInString, clipboart, %TotaaloverzichtJun%
{
	Send Totaaloverzicht energie, juni 2012 
	send {tab}A2{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}06{tab 3}
	clipboard = %clipboardold%
	return 
}

IfInString, clipboart, %TotaaloverzichtJul%
{
	Send Totaaloverzicht energie, juli 2012 
	send {tab}A2{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}07{tab 3}
	clipboard = %clipboardold%
	return 
}

IfInString, clipboart, %TotaaloverzichtAug%
{
	Send Totaaloverzicht energie, augustus 2012 
	send {tab}A2{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}08{tab 3}
	clipboard = %clipboardold%
	return 
}

IfInString, clipboart, %TotaaloverzichtSep%
{
	Send Totaaloverzicht energie, september 2012 
	send {tab}A2{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}09{tab 3}
	clipboard = %clipboardold%
	return 
}

IfInString, clipboart, %TotaaloverzichtOkt%
{
	Send Totaaloverzicht energie, oktober 2012 
	send {tab}A2{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}10{tab 3}
	clipboard = %clipboardold%
	return 
}

IfInString, clipboart, %TotaaloverzichtNov%
{
	Send Totaaloverzicht energie, november 2012 
	send {tab}A2{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}11{tab 3}
	clipboard = %clipboardold%
	return 
}

IfInString, clipboart, %TotaaloverzichtDec%
{
	Send Totaaloverzicht energie, december 2012 
	send {tab}A2{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}12{tab 3}
	clipboard = %clipboardold%
	return 
}



IfInString, clipboart, %Risicoanalyse%
{
	send Risicoanalyse t.v.v. Legionella preventie
	send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return
}


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

















IfInString, clipboart, %stapplanJan% 
{
	Send Stappenplan bij Legionella, januari 2013
	send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}

IfInString, clipboart, %stapplanFeb% 
{
	Send Stappenplan bij Legionella, februari 2013
	send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}

IfInString, clipboart, %stapplanMrt% 
{
	Send Stappenplan bij Legionella, maart 2013
	send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}

IfInString, clipboart, %stapplanApr% 
{
	Send Stappenplan bij Legionella, april 2013
	send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}

IfInString, clipboart, %stapplanMei% 
{
	Send Stappenplan bij Legionella, mei 2013
	send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}

IfInString, clipboart, %stapplanJun% 
{
	Send Stappenplan bij Legionella, juni 2013
	send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}

IfInString, clipboart, %stapplanJul% 
{
	Send Stappenplan bij Legionella, juli 2013
	send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}


IfInString, clipboart, %stapplanAug% 
{
	Send Stappenplan bij Legionella, augustus 2013
	send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}


IfInString, clipboart, %stapplanSep% 
{
	Send Stappenplan bij Legionella, september 2013
	send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}

IfInString, clipboart, %stapplanOkt% 
{
	Send Stappenplan bij Legionella, oktober 2013
	send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}


IfInString, clipboart, %stapplanNov% 
{
	Send Stappenplan bij Legionella, november 2012
	send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}


IfInString, clipboart, %stapplanDec% 
{
	Send Stappenplan bij Legionella, december 2012
	send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}





IfInString, clipboart, %MonsternameJAN%
{
	send Analyse certificaten, januari
	send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %MonsternameFEB%
{
	send Analyse certificaten, februari
	send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %MonsternameMRT%
{
	send Analyse certificaten, maart
	send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %MonsternameAPR%
{
	send Analyse certificaten, april
	send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %MonsternameMEI%
{
	send Analyse certificaten, mei
	send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %MonsternameJUN%
{
	send Analyse certificaten, juni
	send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %MonsternameJUL%
{
	send Analyse certificaten, juli
	send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %MonsternameAUG%
{
	send Analyse certificaten, augustus
	send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %MonsternameSEP%
{
	send Analyse certificaten, september
	send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %MonsternameOKT%
{
	send Analyse certificaten, oktober
	send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %MonsternameNOV%
{
	send Analyse certificaten, november
	send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %MonsternameDEC%
{
	send Analyse certificaten, december
	send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return
}




; Bouwkundige Disciplines

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
IfInString, clipboart, %B5K1%
{
	Send Bouwkundige plattegrond, interieur kelder -1
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
IfInString, clipboart, %B8K1%
{
	Send Bouwkundige plattegrond, plafond begane grond
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
	msgbox "*ERROR*\nB10K is geen geldige verdieping!\Bedoelde u, B1K1?"
	Send Bouwkundige plattegrond,  kelder -1
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
IfInString, clipboart, %W2TR%
{
	Send Werktuigbouwkundige installatie t.b.v. sanitair installatie, plattegrond terrein
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
IfInString, clipboart, %A200%
{
	Send Bliksem/Aardingsinstallatie, blokschema
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





; BRANDCOMPARTIMENTEN
IfInString, clipboart, %B9K1%
{
	Send Brandcompartimentering, plattegrond kelder -1
	send {tab}A3{tab}{space}{tab 2}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B900%
{
	Send Brandcompartimentering, plattegrond begane grond
	send {tab}A3{tab}{space}{tab 2}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %B901%
{
	Send Brandcompartimentering, plattegrond 1e verdieping
	send {tab}A3{tab}{space}{tab 2}
	clipboard = %clipboardold%
	return 
}IfInString, clipboart, %B902%
{
	Send Brandcompartimentering, plattegrond 2e verdieping
	send {tab}A3{tab}{space}{tab 2}
	clipboard = %clipboardold%
	return 
}IfInString, clipboart, %B903%
{
	Send Brandcompartimentering, plattegrond 3e verdieping
	send {tab}A3{tab}{space}{tab 2}
	clipboard = %clipboardold%
	return 
}IfInString, clipboart, %B904%
{
	Send Brandcompartimentering, plattegrond 4e verdieping
	send {tab}A3{tab}{space}{tab 2}
	clipboard = %clipboardold%
	return 
}IfInString, clipboart, %B905%
{
	Send Brandcompartimentering, plattegrond 5e verdieping
	send {tab}A3{tab}{space}{tab 2}
	clipboard = %clipboardold%
	return 
}IfInString, clipboart, %B906%
{
	Send Brandcompartimentering, plattegrond 6e verdieping
	send {tab}A3{tab}{space}{tab 2}
	clipboard = %clipboardold%
	return 
}IfInString, clipboart, %B907%
{
	Send Brandcompartimentering, plattegrond 7e verdieping
	send {tab}A3{tab}{space}{tab 2}
	clipboard = %clipboardold%
	return 
}IfInString, clipboart, %B908%
{
	Send Brandcompartimentering, plattegrond 8e verdieping
	send {tab}A3{tab}{space}{tab 2}
	clipboard = %clipboardold%
	return 
}IfInString, clipboart, %B909%
{
	Send Brandcompartimentering, plattegrond 9e verdieping
	send {tab}A3{tab}{space}{tab 2}
	clipboard = %clipboardold%
	return 
}IfInString, clipboart, %B910%
{
	Send Brandcompartimentering, plattegrond 10e verdieping
	send {tab}A3{tab}{space}{tab 2}
	clipboard = %clipboardold%
	return 
}









; VLUCHTPLANNEN

IfInString, clipboart, %VK101%
{
	Send Vluchtplan 1, kelder -1
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %VK102%
{
	Send Vluchtplan 2, kelder -1
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %VK103%
{
	Send Vluchtplan 3, kelder -1
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %VK104%
{
	Send Vluchtplan 4, kelder -1
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %VK105%
{
	Send Vluchtplan 5, kelder -1
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %VK106%
{
	Send Vluchtplan 6, kelder -1
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %VK107%
{
	Send Vluchtplan 7, kelder -1
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %VK108%
{
	Send Vluchtplan 8, kelder -1
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %VK109%
{
	Send Vluchtplan 9, kelder -1
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %VK110%
{
	Send Vluchtplan 10, kelder -1
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}




;Begane grond
IfInString, clipboart, %V0001%
{
	Send Vluchtplan 1, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0002%
{
	Send Vluchtplan 2, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0003%
{
	Send Vluchtplan 3, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0004%
{
	Send Vluchtplan 4, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0005%
{
	Send Vluchtplan 5, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0006%
{
	Send Vluchtplan 6, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0007%
{
	Send Vluchtplan 7, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0008%
{
	Send Vluchtplan 8, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0009%
{
	Send Vluchtplan 9, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0010%
{
	Send Vluchtplan 10, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0011%
{
	Send Vluchtplan 11, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0012%
{
	Send Vluchtplan 12, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0013%
{
	Send Vluchtplan 13, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0014%
{
	Send Vluchtplan 14, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%z
	return 
}
IfInString, clipboart, %V0015%
{
	Send Vluchtplan 15, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%z
	return 
}
IfInString, clipboart, %V0016%
{
	Send Vluchtplan 16, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0017%
{
	Send Vluchtplan 17, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0018%
{
	Send Vluchtplan 18, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0019%
{
	Send Vluchtplan 19, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0020%
{
	Send Vluchtplan 20, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0021%
{
	Send Vluchtplan 21, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0022%
{
	Send Vluchtplan 22, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0023%
{
	Send Vluchtplan 23, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0024%
{
	Send Vluchtplan 24, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0025%
{
	Send Vluchtplan 25, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0026%
{
	Send Vluchtplan 26, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0027%
{
	Send Vluchtplan 27, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0028%
{
	Send Vluchtplan 28, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0029%
{
	Send Vluchtplan 29, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0030%
{
	Send Vluchtplan 30, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0101%
{
	Send Vluchtplan 1, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0102%
{
	Send Vluchtplan 2, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0103%
{
	Send Vluchtplan 3, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0104%
{
	Send Vluchtplan 4, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0105%
{
	Send Vluchtplan 5, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0106%
{
	Send Vluchtplan 6, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0107%
{
	Send Vluchtplan 7, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0108%
{
	Send Vluchtplan 8, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0109%
{
	Send Vluchtplan 9, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0110%
{
	Send Vluchtplan 10, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0111%
{
	Send Vluchtplan 11, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0112%
{
	Send Vluchtplan 12, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0113%
{
	Send Vluchtplan 13, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0114%
{
	Send Vluchtplan 14, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0115%
{
	Send Vluchtplan 15, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0116%
{
	Send Vluchtplan 16, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0117%
{
	Send Vluchtplan 17, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0118%
{
	Send Vluchtplan 18, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0119%
{
	Send Vluchtplan 19, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0120%
{
	Send Vluchtplan 20, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0121%
{
	Send Vluchtplan 21, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0122%
{
	Send Vluchtplan 22, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0123%
{
	Send Vluchtplan 23, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0124%
{
	Send Vluchtplan 24, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0125%
{
	Send Vluchtplan 25, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0126%
{
	Send Vluchtplan 26, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0127%
{
	Send Vluchtplan 27, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0128%
{
	Send Vluchtplan 28, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0129%
{
	Send Vluchtplan 29, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0130%
{
	Send Vluchtplan 30, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0201%
{
	Send Vluchtplan 1, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0202%
{
	Send Vluchtplan 2, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0203%
{
	Send Vluchtplan 3, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0204%
{
	Send Vluchtplan 4, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0205%
{
	Send Vluchtplan 5, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0206%
{
	Send Vluchtplan 6, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0207%
{
	Send Vluchtplan 7, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0208%
{
	Send Vluchtplan 8, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0209%
{
	Send Vluchtplan 9, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0210%
{
	Send Vluchtplan 10, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0211%
{
	Send Vluchtplan 11, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0212%
{
	Send Vluchtplan 12, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0213%
{
	Send Vluchtplan 13, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0214%
{
	Send Vluchtplan 14, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0215%
{
	Send Vluchtplan 15, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0216%
{
	Send Vluchtplan 16, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0217%
{
	Send Vluchtplan 17, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0218%
{
	Send Vluchtplan 18, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0219%
{
	Send Vluchtplan 19, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0220%
{
	Send Vluchtplan 20, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0221%
{
	Send Vluchtplan 21, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0222%
{
	Send Vluchtplan 22, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0223%
{
	Send Vluchtplan 23, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0224%
{
	Send Vluchtplan 24, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0225%
{
	Send Vluchtplan 25, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0226%
{
	Send Vluchtplan 26, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0227%
{
	Send Vluchtplan 27, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0228%
{
	Send Vluchtplan 28, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0229%
{
	Send Vluchtplan 29, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0230%
{
	Send Vluchtplan 30, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0301%
{
	Send Vluchtplan 1, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0302%
{
	Send Vluchtplan 2, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0303%
{
	Send Vluchtplan 3, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0304%
{
	Send Vluchtplan 4, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0305%
{
	Send Vluchtplan 5, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0306%
{
	Send Vluchtplan 6, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0307%
{
	Send Vluchtplan 7, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0308%
{
	Send Vluchtplan 8, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0309%
{
	Send Vluchtplan 9, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0310%
{
	Send Vluchtplan 10, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0311%
{
	Send Vluchtplan 11, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0312%
{
	Send Vluchtplan 12, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0313%
{
	Send Vluchtplan 13, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0314%
{
	Send Vluchtplan 14, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0315%
{
	Send Vluchtplan 15, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0316%
{
	Send Vluchtplan 16, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0317%
{
	Send Vluchtplan 17, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0318%
{
	Send Vluchtplan 18, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0319%
{
	Send Vluchtplan 19, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0320%
{
	Send Vluchtplan 20, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0321%
{
	Send Vluchtplan 21, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0322%
{
	Send Vluchtplan 22, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0323%
{
	Send Vluchtplan 23, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0324%
{
	Send Vluchtplan 24, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0325%
{
	Send Vluchtplan 25, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0326%
{
	Send Vluchtplan 26, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0327%
{
	Send Vluchtplan 27, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0328%
{
	Send Vluchtplan 28, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0329%
{
	Send Vluchtplan 29, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0330%
{
	Send Vluchtplan 30, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0401%
{
	Send Vluchtplan 1, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0402%
{
	Send Vluchtplan 2, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0403%
{
	Send Vluchtplan 3, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0404%
{
	Send Vluchtplan 4, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0405%
{
	Send Vluchtplan 5, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0406%
{
	Send Vluchtplan 6, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0407%
{
	Send Vluchtplan 7, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0408%
{
	Send Vluchtplan 8, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0409%
{
	Send Vluchtplan 9, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0410%
{
	Send Vluchtplan 10, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0411%
{
	Send Vluchtplan 11, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0412%
{
	Send Vluchtplan 12, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0413%
{
	Send Vluchtplan 13, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0414%
{
	Send Vluchtplan 14, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0415%
{
	Send Vluchtplan 15, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0416%
{
	Send Vluchtplan 16, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0417%
{
	Send Vluchtplan 17, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0418%
{
	Send Vluchtplan 18, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0419%
{
	Send Vluchtplan 19, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0420%
{
	Send Vluchtplan 20, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0421%
{
	Send Vluchtplan 21, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0422%
{
	Send Vluchtplan 22, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0423%
{
	Send Vluchtplan 23, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0424%
{
	Send Vluchtplan 24, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0425%
{
	Send Vluchtplan 25, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0426%
{
	Send Vluchtplan 26, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0427%
{
	Send Vluchtplan 27, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0428%
{
	Send Vluchtplan 28, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0429%
{
	Send Vluchtplan 29, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0430%
{
	Send Vluchtplan 30, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0501%
{
	Send Vluchtplan 1, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0502%
{
	Send Vluchtplan 2, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0503%
{
	Send Vluchtplan 3, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0504%
{
	Send Vluchtplan 4, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0505%
{
	Send Vluchtplan 5, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0506%
{
	Send Vluchtplan 6, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0507%
{
	Send Vluchtplan 7, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0508%
{
	Send Vluchtplan 8, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0509%
{
	Send Vluchtplan 9, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0510%
{
	Send Vluchtplan 10, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0511%
{
	Send Vluchtplan 11, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0512%
{
	Send Vluchtplan 12, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0513%
{
	Send Vluchtplan 13, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0514%
{
	Send Vluchtplan 14, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0515%
{
	Send Vluchtplan 15, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0516%
{
	Send Vluchtplan 16, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0517%
{
	Send Vluchtplan 17, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0518%
{
	Send Vluchtplan 18, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0519%
{
	Send Vluchtplan 19, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0520%
{
	Send Vluchtplan 20, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0521%
{
	Send Vluchtplan 21, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0522%
{
	Send Vluchtplan 22, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0523%
{
	Send Vluchtplan 23, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0524%
{
	Send Vluchtplan 24, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0525%
{
	Send Vluchtplan 25, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0526%
{
	Send Vluchtplan 26, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0527%
{
	Send Vluchtplan 27, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0528%
{
	Send Vluchtplan 28, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0529%
{
	Send Vluchtplan 29, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0530%
{
	Send Vluchtplan 30, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0601%
{
	Send Vluchtplan 1, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0602%
{
	Send Vluchtplan 2, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0603%
{
	Send Vluchtplan 3, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0604%
{
	Send Vluchtplan 4, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0605%
{
	Send Vluchtplan 5, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0606%
{
	Send Vluchtplan 6, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0607%
{
	Send Vluchtplan 7, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0608%
{
	Send Vluchtplan 8, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0609%
{
	Send Vluchtplan 9, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0610%
{
	Send Vluchtplan 10, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0611%
{
	Send Vluchtplan 11, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0612%
{
	Send Vluchtplan 12, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0613%
{
	Send Vluchtplan 13, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0614%
{
	Send Vluchtplan 14, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0615%
{
	Send Vluchtplan 15, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0616%
{
	Send Vluchtplan 16, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0617%
{
	Send Vluchtplan 17, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0618%
{
	Send Vluchtplan 18, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0619%
{
	Send Vluchtplan 19, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0620%
{
	Send Vluchtplan 20, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0621%
{
	Send Vluchtplan 21, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0622%
{
	Send Vluchtplan 22, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0623%
{
	Send Vluchtplan 23, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0624%
{
	Send Vluchtplan 24, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0625%
{
	Send Vluchtplan 25, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0626%
{
	Send Vluchtplan 26, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0627%
{
	Send Vluchtplan 27, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0628%
{
	Send Vluchtplan 28, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0629%
{
	Send Vluchtplan 29, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0630%
{
	Send Vluchtplan 30, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0701%
{
	Send Vluchtplan 1, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0702%
{
	Send Vluchtplan 2, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0703%
{
	Send Vluchtplan 3, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0704%
{
	Send Vluchtplan 4, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0705%
{
	Send Vluchtplan 5, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0706%
{
	Send Vluchtplan 6, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0707%
{
	Send Vluchtplan 7, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0708%
{
	Send Vluchtplan 8, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0709%
{
	Send Vluchtplan 9, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0710%
{
	Send Vluchtplan 10, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0711%
{
	Send Vluchtplan 11, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0712%
{
	Send Vluchtplan 12, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0713%
{
	Send Vluchtplan 13, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0714%
{
	Send Vluchtplan 14, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0715%
{
	Send Vluchtplan 15, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0716%
{
	Send Vluchtplan 16, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0717%
{
	Send Vluchtplan 17, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0718%
{
	Send Vluchtplan 18, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0719%
{
	Send Vluchtplan 19, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0720%
{
	Send Vluchtplan 20, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0721%
{
	Send Vluchtplan 21, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0722%
{
	Send Vluchtplan 22, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0723%
{
	Send Vluchtplan 23, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0724%
{
	Send Vluchtplan 24, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0725%
{
	Send Vluchtplan 25, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0726%
{
	Send Vluchtplan 26, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0727%
{
	Send Vluchtplan 27, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0728%
{
	Send Vluchtplan 28, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0729%
{
	Send Vluchtplan 29, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0730%
{
	Send Vluchtplan 30, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0801%
{
	Send Vluchtplan 1, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0802%
{
	Send Vluchtplan 2, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0803%
{
	Send Vluchtplan 3, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0804%
{
	Send Vluchtplan 4, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0805%
{
	Send Vluchtplan 5, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0806%
{
	Send Vluchtplan 6, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0807%
{
	Send Vluchtplan 7, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0808%
{
	Send Vluchtplan 8, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0809%
{
	Send Vluchtplan 9, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0810%
{
	Send Vluchtplan 10, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0811%
{
	Send Vluchtplan 11, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0812%
{
	Send Vluchtplan 12, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0813%
{
	Send Vluchtplan 13, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0814%
{
	Send Vluchtplan 14, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0815%
{
	Send Vluchtplan 15, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0816%
{
	Send Vluchtplan 16, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0817%
{
	Send Vluchtplan 17, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0818%
{
	Send Vluchtplan 18, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0819%
{
	Send Vluchtplan 19, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0820%
{
	Send Vluchtplan 20, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0821%
{
	Send Vluchtplan 21, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0822%
{
	Send Vluchtplan 22, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0823%
{
	Send Vluchtplan 23, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0824%
{
	Send Vluchtplan 24, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0825%
{
	Send Vluchtplan 25, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0826%
{
	Send Vluchtplan 26, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0827%
{
	Send Vluchtplan 27, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0828%
{
	Send Vluchtplan 28, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0829%
{
	Send Vluchtplan 29, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0830%
{
	Send Vluchtplan 30, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0901%
{
	Send Vluchtplan 1, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0902%
{
	Send Vluchtplan 2, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0903%
{
	Send Vluchtplan 3, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0904%
{
	Send Vluchtplan 4, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0905%
{
	Send Vluchtplan 5, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0906%
{
	Send Vluchtplan 6, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0907%
{
	Send Vluchtplan 7, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0908%
{
	Send Vluchtplan 8, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0909%
{
	Send Vluchtplan 9, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0910%
{
	Send Vluchtplan 10, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0911%
{
	Send Vluchtplan 11, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0912%
{
	Send Vluchtplan 12, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0913%
{
	Send Vluchtplan 13, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0914%
{
	Send Vluchtplan 14, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0915%
{
	Send Vluchtplan 15, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0916%
{
	Send Vluchtplan 16, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0917%
{
	Send Vluchtplan 17, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0918%
{
	Send Vluchtplan 18, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0919%
{
	Send Vluchtplan 19, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0920%
{
	Send Vluchtplan 20, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0921%
{
	Send Vluchtplan 21, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0922%
{
	Send Vluchtplan 22, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0923%
{
	Send Vluchtplan 23, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0924%
{
	Send Vluchtplan 24, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0925%
{
	Send Vluchtplan 25, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0926%
{
	Send Vluchtplan 26, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0927%
{
	Send Vluchtplan 27, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0928%
{
	Send Vluchtplan 28, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0929%
{
	Send Vluchtplan 29, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V0930%
{
	Send Vluchtplan 30, 9e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1001%
{
	Send Vluchtplan 1, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1002%
{
	Send Vluchtplan 2, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1003%
{
	Send Vluchtplan 3, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1004%
{
	Send Vluchtplan 4, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1005%
{
	Send Vluchtplan 5, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1006%
{
	Send Vluchtplan 6, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1007%
{
	Send Vluchtplan 7, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1008%
{
	Send Vluchtplan 8, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1009%
{
	Send Vluchtplan 9, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1010%
{
	Send Vluchtplan 10, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1011%
{
	Send Vluchtplan 11, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1012%
{
	Send Vluchtplan 12, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1013%
{
	Send Vluchtplan 13, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1014%
{
	Send Vluchtplan 14, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1015%
{
	Send Vluchtplan 15, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1016%
{
	Send Vluchtplan 16, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1017%
{
	Send Vluchtplan 17, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1018%
{
	Send Vluchtplan 18, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1019%
{
	Send Vluchtplan 19, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1020%
{
	Send Vluchtplan 20, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1021%
{
	Send Vluchtplan 21, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1022%
{
	Send Vluchtplan 22, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1023%
{
	Send Vluchtplan 23, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1024%
{
	Send Vluchtplan 24, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1025%
{
	Send Vluchtplan 25, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1026%
{
	Send Vluchtplan 26, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1027%
{
	Send Vluchtplan 27, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1028%
{
	Send Vluchtplan 28, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1029%
{
	Send Vluchtplan 29, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %V1030%
{
	Send Vluchtplan 30, 10e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
IfInString, clipboart, %Beheersplan%
{
	Send Legionella beheersplan t.v.v. Legionella
	send {tab}A4{tab}{space}{tab}{space}{tab}
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
	send {shiftdown}{tab 2}{shiftup}{end}{shiftdown}{left 4}{shiftup}{ctrldown}c{ctrlup}{tab 2}{end}{space}{ctrldown}v{ctrlup}{tab}A4{tab}{space}{tab}{space}{tab}
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
IfInString, clipboart, %Keuringslijst%
{
	Send Keuringslijst 
	send {shiftdown}{tab 2}{shiftup}{end}{shiftdown}{left 4}{shiftup}{ctrldown}c{ctrlup}{tab 2}{end}{space}{ctrldown}v{ctrlup}{tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %1kwartaal%
{
	send Overzicht kosten + verbruik energie, 1e kwartaal 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}{end}{tab}03{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %2kwartaal%
{
	Send Overzicht kosten + verbruik energie, 2e kwartaal 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}{end}{tab}06{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %3kwartaal%
{
	Send Overzicht kosten + verbruik energie, 3e kwartaal 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}{end}{tab}09{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %4kwartaal%
{
	Send Overzicht kosten + verbruik energie, 4e kwartaal 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}{end}{tab}12{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %1ekwart%
{
	send Overzicht kosten + verbruik energie, 2012 (t/m huidige kwartaal)
	send {tab}A3{tab}{space}{tab 2}{home}{tab}01{tab 2}{end}{tab}03{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %2ekwart%
{
	send Overzicht kosten + verbruik energie, 2012 (t/m huidige kwartaal)
	send {tab}A3{tab}{space}{tab 2}{home}{tab}01{tab 2}{end}{tab}06{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %3ekwar%
{
	send Overzicht kosten + verbruik energie, 2012 (t/m huidige kwartaal)
	send {tab}A3{tab}{space}{tab 2}{home}{tab}01{tab 2}{end}{tab}09{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %4ekwart%
{
	send Overzicht kosten + verbruik energie, 2012 (t/m huidige kwartaal)
	send {tab}A3{tab}{space}{tab 2}{home}{tab}01{tab 2}{end}{tab}12{tab 3}
	clipboard = %clipboardold%
	return
}


IfInString, clipboart, %S1KR%
{
	Send Sprinklerinstallatie, plattegrond kruipruimte / fundering
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %S100%
{
	Send Sprinklerinstallatie, plattegrond begane grond
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %S101%
{
	Send Sprinklerinstallatie, plattegrond 1e verdieping
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %S102%
{
	Send Sprinklerinstallatie, plattegrond 2e verdieping
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %S103%
{
	Send Sprinklerinstallatie, plattegrond 3e verdieping
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %S104%
{
	Send Sprinklerinstallatie, plattegrond 4e verdieping
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %S105%
{
	Send Sprinklerinstallatie, plattegrond 5e verdieping
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %S106%
{
	Send Sprinklerinstallatie, plattegrond 6e verdieping
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %S107%
{
	Send Sprinklerinstallatie, plattegrond 7e verdieping
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %S108%
{
	Send Sprinklerinstallatie, plattegrond 8e verdieping
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %S109%
{
	Send Sprinklerinstallatie, plattegrond 9e verdieping
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %S110%
{
	Send Sprinklerinstallatie, plattegrond 10e verdieping
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %S2%
{
	Send Sprinklerinstallatie, blokschema
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %S3%
{
	Send Sprinklerinstallatie, principeschema
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %S4%
{
	Send Sprinklerinstallatie, detail
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
	send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Adegeest, februari 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}31{tab}02{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Adegeest, maart 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Adegeest, april 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}31{tab}04{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Adegeest, mei 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Adegeest, juni 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}31{tab}06{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Adegeest, juli 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Adegeest, augustus 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Adegeest, september 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}31{tab}09{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Adegeest, oktober 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Adegeest, november 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}31{tab}11{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Adegeest, december 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab 3}
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
	send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht CMMS, februari 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}31{tab}02{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht CMMS, maart 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht CMMS, april 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}31{tab}04{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht CMMS, mei 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht CMMS, juni 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}31{tab}06{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht CMMS, juli 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht CMMS, augustus 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht CMMS, september 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}31{tab}09{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht CMMS, oktober 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht CMMS, november 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}31{tab}11{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht CMMS, december 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab 3}
	clipboard = %clipboardold%
	return
}


DST:
IfNotInString, clipboart, %DST%
{
	goto DKD
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Duinstede, januari 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab 3}
	clipboard = %clipboardold%
	return

}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Duinstede, februari 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}31{tab}02{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Duinstede, maart 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Duinstede, april 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}31{tab}04{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Duinstede, mei 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Duinstede, juni 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}31{tab}06{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Duinstede, juli 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Duinstede, augustus 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Duinstede, september 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}31{tab}09{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Duinstede, oktober 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Duinstede, november 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}31{tab}11{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Duinstede, december 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab 3}
	clipboard = %clipboardold%
	return
}



DKD:
IfNotInString, clipboart, %DKD%
{
	goto MTL
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Dekkersduin, januari 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab 3}
	clipboard = %clipboardold%
	return

}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Dekkersduin, februari 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}31{tab}02{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Dekkersduin, maart 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Dekkersduin, april 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}31{tab}04{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Dekkersduin, mei 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Dekkersduin, juni 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}31{tab}06{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Dekkersduin, juli 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Dekkersduin, augustus 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Dekkersduin, september 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}31{tab}09{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Dekkersduin, oktober 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Dekkersduin, november 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}31{tab}11{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Dekkersduin, december 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab 3}
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
	send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht De Mantel, februari 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}31{tab}02{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht De Mantel, maart 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht De Mantel, april 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}31{tab}04{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht De Mantel, mei 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht De Mantel, juni 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}31{tab}06{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht De Mantel, juli 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht De Mantel, augustus 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht De Mantel, september 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}31{tab}09{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht De Mantel, oktober 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht De Mantel, november 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}31{tab}11{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht De Mantel, december 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab 3}
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
	send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Guldenhuis, februari 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}31{tab}02{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Guldenhuis, maart 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Guldenhuis, april 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}31{tab}04{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Guldenhuis, mei 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Guldenhuis, juni 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}31{tab}06{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Guldenhuis, juli 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Guldenhuis, augustus 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Guldenhuis, september 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}31{tab}09{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Guldenhuis, oktober 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Guldenhuis, november 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}31{tab}11{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Guldenhuis, december 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab 3}
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
	send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Houthaghe, februari 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}31{tab}02{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Houthaghe, maart 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Houthaghe, april 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}31{tab}04{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Houthaghe, mei 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Houthaghe, juni 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}31{tab}06{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Houthaghe, juli 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Houthaghe, augustus 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Houthaghe, september 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}31{tab}09{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Houthaghe, oktober 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Houthaghe, november 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}31{tab}11{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Houthaghe, december 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab 3}
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
	send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab 3}
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Jonker Frans, februari 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}31{tab}02{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Jonker Frans, maart 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Jonker Frans, april 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}31{tab}04{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Jonker Frans, mei 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Jonker Frans, juni 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}31{tab}06{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Jonker Frans, juli 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Jonker Frans, augustus 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Jonker Frans, september 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}31{tab}09{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Jonker Frans, oktober 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Jonker Frans, november 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}31{tab}11{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Jonker Frans, december 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab 3}
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
	send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab 3}	
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Loevenstein, februari 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}31{tab}02{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Loevenstein, maart 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Loevenstein, april 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}31{tab}04{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Loevenstein, mei 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Loevenstein, juni 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}31{tab}06{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Loevenstein, juli 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Loevenstein, augustus 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Loevenstein, september 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}31{tab}09{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Loevenstein, oktober 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Loevenstein, november 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}31{tab}11{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Loevenstein, december 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab 3}
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
	send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Loosduinse Hof, februari 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}31{tab}02{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Loosduinse Hof, maart 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Loosduinse Hof, april 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}31{tab}04{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Loosduinse Hof, mei 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Loosduinse Hof, juni 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}31{tab}06{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Loosduinse Hof, juli 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Loosduinse Hof, augustus 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Loosduinse Hof, september 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}31{tab}09{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Loosduinse Hof, oktober 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Loosduinse Hof, november 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}31{tab}11{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Loosduinse Hof, december 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab 3}
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
	send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Laan van Vredenoord, februari 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}31{tab}02{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Laan van Vredenoord, maart 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Laan van Vredenoord, april 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}31{tab}04{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Laan van Vredenoord, mei 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Laan van Vredenoord, juni 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}31{tab}06{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Laan van Vredenoord, juli 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Laan van Vredenoord, augustus 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Laan van Vredenoord, september 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}31{tab}09{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Laan van Vredenoord, oktober 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Laan van Vredenoord, november 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}31{tab}11{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Laan van Vredenoord, december 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab 3}
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
	send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab 3}
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Mariahoeve, februari 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}31{tab}02{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Mariahoeve, maart 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Mariahoeve, april 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}31{tab}04{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Mariahoeve, mei 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Mariahoeve, juni 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}31{tab}06{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Mariahoeve, juli 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Mariahoeve, augustus 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Mariahoeve, september 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}31{tab}09{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Mariahoeve, oktober 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Mariahoeve, november 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}31{tab}11{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Mariahoeve, december 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab 3}
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
	send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Marterrade, februari 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}31{tab}02{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Marterrade, maart 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Marterrade, april 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}31{tab}04{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Marterrade, mei 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Marterrade, juni 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}31{tab}06{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Marterrade, juli 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Marterrade, augustus 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Marterrade, september 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}31{tab}09{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Marterrade, oktober 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Marterrade, november 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}31{tab}11{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Marterrade, december 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab 3}
	clipboard = %clipboardold%
	return
}

;
OSD:
IfNotInString, clipboart, %OSD%
{
	goto SPT
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Oostduin, januari 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Oostduin, februari 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}31{tab}02{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Oostduin, maart 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Oostduin, april 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}31{tab}04{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Oostduin, mei 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Oostduin, juni 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}31{tab}06{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Oostduin, juli 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Oostduin, augustus 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Oostduin, september 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}31{tab}09{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Oostduin, oktober 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Oostduin, november 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}31{tab}11{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Oostduin, december 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab 3}
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
	send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Schakelpunt, februari 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}31{tab}02{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Schakelpunt, maart 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Schakelpunt, april 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}31{tab}04{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Schakelpunt, mei 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Schakelpunt, juni 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}31{tab}06{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Schakelpunt, juli 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Schakelpunt, augustus 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Schakelpunt, september 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}31{tab}09{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Schakelpunt, oktober 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Schakelpunt, november 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}31{tab}11{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Schakelpunt, december 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab 3}
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
	send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Steenvoorde, februari 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}31{tab}02{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Steenvoorde, maart 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Steenvoorde, april 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}31{tab}04{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Steenvoorde, mei 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab 3}	
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Steenvoorde, juni 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}31{tab}06{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Steenvoorde, juli 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Steenvoorde, augustus 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Steenvoorde, september 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}31{tab}09{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Steenvoorde, oktober 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Steenvoorde, november 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}31{tab}11{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Steenvoorde, december 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab 3}
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
	send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Vinckenborglaan, februari 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}31{tab}02{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Vinckenborglaan, maart 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Vinckenborglaan, april 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}31{tab}04{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Vinckenborglaan, mei 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Vinckenborglaan, juni 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}31{tab}06{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Vinckenborglaan, juli 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Vinckenborglaan, augustus 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Vinckenborglaan, september 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}31{tab}09{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Vinckenborglaan, oktober 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Vinckenborglaan, november 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}31{tab}11{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Vinckenborglaan, december 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab 3}
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
	send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Vredenburch, februari 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}31{tab}02{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Vredenburch, maart 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Vredenburch, april 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}31{tab}04{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Vredenburch, mei 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Vredenburch, juni 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}31{tab}06{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Vredenburch, juli 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Vredenburch, augustus 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Vredenburch, september 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}31{tab}09{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Vredenburch, oktober 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Vredenburch, november 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}31{tab}11{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Vredenburch, december 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab 3}
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
	send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Wenckebach, februari 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}31{tab}02{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Wenckebach, maart 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Wenckebach, april 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}31{tab}04{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Wenckebach, mei 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Wenckebach, juni 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}31{tab}06{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Wenckebach, juli 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Wenckebach, augustus 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Wenckebach, september 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}31{tab}09{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Wenckebach, oktober 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Wenckebach, november 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}31{tab}11{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Wenckebach, december 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab 3}
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
	send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Westhoff, februari 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}31{tab}02{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Westhoff, maart 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Westhoff, april 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}31{tab}04{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Westhoff, mei 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Westhoff, juni 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}31{tab}06{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Westhoff, juli 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Westhoff, augustus 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Westhoff, september 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}31{tab}09{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Westhoff, oktober 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Westhoff, november 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}31{tab}11{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Westhoff, december 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab 3}
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
	send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Willem de Bijelaan, februari 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}31{tab}02{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Willem de Bijelaan, maart 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Willem de Bijelaan, april 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}31{tab}04{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Willem de Bijelaan, mei 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Willem de Bijelaan, juni 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}31{tab}06{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Willem de Bijelaan, juli 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Willem de Bijelaan, augustus 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Willem de Bijelaan, september 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}31{tab}09{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Willem de Bijelaan, oktober 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Willem de Bijelaan, november 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}31{tab}11{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Willem de Bijelaan, december 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab 3}
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
	send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Uitzicht, februari 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}31{tab}02{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Uitzicht, maart 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Uitzicht, april 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}31{tab}04{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Uitzicht, mei 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Uitzicht, juni 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}31{tab}06{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Uitzicht, juli 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Uitzicht, augustus 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Uitzicht, september 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}31{tab}09{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Uitzicht, oktober 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Uitzicht, november 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}31{tab}11{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Uitzicht, december 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab 3}
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
	send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Laurens Reaalstraat, februari 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}31{tab}02{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Laurens Reaalstraat, maart 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Laurens Reaalstraat, april 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}31{tab}04{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Laurens Reaalstraat, mei 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Laurens Reaalstraat, juni 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}31{tab}06{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Laurens Reaalstraat, juli 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Laurens Reaalstraat, augustus 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Laurens Reaalstraat, september 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}31{tab}09{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Laurens Reaalstraat, oktober 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Laurens Reaalstraat, november 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}31{tab}11{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Laurens Reaalstraat, december 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab 3}
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
	send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Over de Boogaard, februari 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}31{tab}02{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Over de Boogaard, maart 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Over de Boogaard, april 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}31{tab}04{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Over de Boogaard, mei 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Over de Boogaard, juni 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}31{tab}06{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Over de Boogaard, juli 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Over de Boogaard, augustus 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Over de Boogaard, september 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}31{tab}09{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Over de Boogaard, oktober 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Over de Boogaard, november 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}31{tab}11{tab 3}
	clipboard = %clipboardold%
	return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Over de Boogaard, december 2012
	send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab 3}
	clipboard = %clipboardold%
	return
}





















/* 
===================================================================================
							;2011
======================================================================================
*/
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
	send {tab}A4{tab 2}{home}{tab}05{tab 2}31{tab}05{tab 3}
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




stringvoh:

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


ifinstring, clipboart, %E3%
{
	Send Elektrotechnische installatie, groepenverklaring verdeelkast 
	send {shiftdown}{tab 2}{shiftup}{home}{right 4}{shiftdown}{end}{shiftup}{ctrldown}c{ctrlup}{tab 2}{end}{space}{ctrldown}v{ctrlup}
	clipboard = %clipboardold%
	return 
}

ifinstring, clipboart, %E4%
{
	Send Elektrotechnische installatie, groepenverklaring verdeelkast 
	send {shiftdown}{tab 2}{shiftup}{home}{right 4}{shiftdown}{end}{shiftup}{ctrldown}c{ctrlup}{tab 2}{end}{space}{ctrldown}v{ctrlup}
	clipboard = %clipboardold%
	return 
}







stringRABO:

ifinstring, clipboart, %AnalyseNOV%
{
	send Analyserapport t.b.v. Legionella besmetting, november 2012
	send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}
ifinstring, clipboart, %AnalyseDEC%
{
	send Analyserapport t.b.v. Legionella besmetting, december 2012
	send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	return 
}



goto opnieuw
return 


; Replace 1-100 met 1:100 in alleen block attribuut scherm
#IfWinActive ahk_class #32770
:*:1-100::1:100
:*:1-50::1:50
return 

exit
 

#IfWinActive ahk_class rctrl_renwnd32
^!n::
Run C:\Users\michel\AppData\Roaming\Microsoft\Sjablonen\Standaard Mailopmaak Florence.oft
return

^+A::
run C:\Users\michel\AppData\Roaming\Microsoft\Sjablonen\std mail andre lijsen.oft
return

^N::
run C:\Users\michel\AppData\Roaming\Microsoft\Sjablonen\Formeel.oft
return 

^I::
run C:\Users\michel\AppData\Roaming\Microsoft\Sjablonen\Informeel.oft
return 
return 





