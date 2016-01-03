#noEnv
^!p::
;preview
WinWait, Frontpage 
IfWinNotActive, Frontpage, , WinActivate, Frontpage,
WinWaitActive, Frontpage
PixelSearch, Pxx, Pyy, 720, 340, 1920, 1039, 0x3737DB, 0, Fast
if errorlevel
	goto GeenDwgP
else
	MouseClick, ,  %Pxx%,  %Pyy%
	Sleep 200
	Pyy := Pyy + 180
	Sleep 200
	MouseClick, left ,  %Pxx%,  %Pyy%
	sleep 200
	send {down}
if (ErrorLevel <> 0) {
	MsgBox, 262192, *error*, Kleur niet gevonden... :(
	return
}
return
GeenDwgP:
PixelSearch, Pxx, Pyy, 720, 340, 1920, 1039, 0xABABAB, 0, Fast
if (ErrorLevel <> 0){
	MsgBox, 262192, *error*, Kleur niet gevonden... :(
	return
	}
else
	MouseClick, ,  %Pxx%,  %Pyy%
	Sleep 200
	Pyy := Pyy + 150
	Sleep 200
	MouseClick, left ,  %Pxx%,  %Pyy%
return
;Verwijderen
^!d::
;delete
WinWait, Frontpage - Google Chrome,
IfWinNotActive, Frontpage - Google Chrome, , WinActivate, Frontpage - Google Chrome,
WinWaitActive, Frontpage - Google Chrome,
PixelSearch, Pxv, Pyv, 720, 340, 1920, 1039, 0xABABAB, 0, Fast
if ErrorLevel
	MsgBox, 262192, *error*, Kleur niet gevonden... :(
else
	MouseClick, ,  %Pxv%,  %Pyv%
	Sleep 200
	Pyv := Pyv + 175
	Sleep 200
	MouseClick, left ,  %Pxv%,  %Pyv%
	sleep 200
	return
;Bewerken
^!b::
;Bewerken
WinWait, Frontpage - Google Chrome,
IfWinNotActive, Frontpage - Google Chrome, , WinActivate, Frontpage - Google Chrome,
WinWaitActive, Frontpage - Google Chrome,
PixelSearch, Px, Py, 735, 130, 1710, 370, 0x3737DB, 0, Fast
if errorlevel
	goto GeenDwg
else
	PixelSearch, Px, Py, 720, 340, 1920, 1039, 0xABABAB, 0, Fast
if (ErrorLevel <> 0){
	MsgBox, 262192, *error*, Kleur niet gevonden... :(
	return
	}
else
	MouseClick, ,  %Px%,  %Py%
	Sleep 200
	Py := Py + 155
	Sleep 200
	MouseClick, left ,  %Px%,  %Py%
return
GeenDwg:
PixelSearch, Px, Py, 720, 340, 1920, 1039, 0xABABAB, 0, Fast
if (ErrorLevel <> 0){
	MsgBox, 262192, *error*, Kleur niet gevonden... :(
	return
	}
else
	MouseClick, ,  %Px%,  %Py%
	Sleep 200
	Py := Py + 120
	Sleep 200
	MouseClick, left ,  %Px%,  %Py%
return
;Hernoem
^!h::
WinWait, Frontpage - Google Chrome,
IfWinNotActive, Frontpage - Google Chrome, , WinActivate, Frontpage - Google Chrome,
WinWaitActive, Frontpage - Google Chrome,
PixelSearch, Pbx, Pby, 273, 127, 1923, 1016, 0xD77432, 0, Fast
if ( ErrorLevel <> 0 ) {
	MsgBox, 262192, *error*, Kleur niet gevonden... :(
	return
	}
else
	MouseClick, right ,  %Pbx%,  %Pby%
	Pby := Pby + 55
	Pbx := Pbx + 100
	sleep 500
	MouseClick left , %Pbx%, %Pby%
	sleep 200
	send {end}
return
^!a::
;Toevoegen
WinWait, Frontpage - Google Chrome,
IfWinNotActive, Frontpage - Google Chrome, , WinActivate, Frontpage - Google Chrome,
WinWaitActive, Frontpage - Google Chrome,
MouseClick, , 1320, 946
send WheelDown 3
PixelSearch, Px, Py, 10, 10, 1925, 1040, 0x, 0, Fast
if errorlevel 
	goto GeenBestandToevoegen
else
	PixelSearch, Px, Py, 10, 10, 1925, 1040, 0xFF350D, 0, Fast
if (ErrorLevel <> 0) {
	goto GeenBestandToevoegen
	}
else
	MouseClick, ,  %Px%,  %Py%
	sleep 100
	MouseClick, , 990, 278
	return
GeenBestandToevoegen:
	MsgBox, 262192, *error*, Kleur niet gevonden... :(
	return
;Update
^!u::
program:
WinWait, Frontpage - Google Chrome,
IfWinNotActive, Frontpage - Google Chrome, , WinActivate, Frontpage - Google Chrome,
WinWaitActive, Frontpage - Google Chrome,
PixelSearch, Px, Py, 735, 130, 1710, 370, 0x3737DB, 0, Fast
if errorlevel
	goto Geen-Dwg
else
	PixelSearch, Px, Py, 720, 340, 1920, 1039, 0xABABAB, 0, Fast
if (ErrorLevel <> 0){
	MsgBox, 262192, *error*, Kleur niet gevonden!
	return
}
else
	MouseClick, ,  %Px%,  %Py%
	Sleep 200
	Py := Py + 145
	Sleep 200
	MouseClick, left ,  %Px%,  %Py%
goto promptbox
Geen-Dwg:
PixelSearch, Px, Py, 720, 340, 1920, 1039, 0xABABAB, 0, Fast
if (ErrorLevel <> 0){
	MsgBox, 262192, *error*, Kleur niet gevonden!
	return
}
else
	MouseClick, ,  %Px%,  %Py%
	Py := Py + 120
	sleep 100
	MouseClick, left ,  %Px%,  %Py%
;Dubbele linkermuisklik bugs
promptbox:
MouseClick, left,  1182,  401
sleep 500
MouseClick, left,  1182,  401
Sleep 200
VarOld = %clipboardAll%
clipboard =
Send {ctrldown}ac{ctrlup}
DocOrigineel = %clipboard%
var4 = %clipboard%
varX := SubStr(var4, 4, 3)
;-------------------------------------------------------------------------------;
FLO = FLO
DPC = DPC
RND = RND
RABO = RABO
ZONL = ZONL
; Als eerste regel "Bestandscode" correcte waarde bevat
IfInString, var4, %FLO%
{
	var1 = K:\Tekeningenbeheer\FLO\
	goto gebouwcodeflo
	Return
}
IfInString, var4, %DPC%
{
	var1 = K:\Tekeningenbeheer\DPC\
	goto gebouwcodedpc
	Return
}
IfInString, var4, %RND%
{
	var1 = K:\Tekeningenbeheer\RND\
	gosub gebouwcodernd
	Return
}
IfInString, var4, %RABO%
{
	var1 = K:\Tekeningenbeheer\RABO\
	gosub gebouwcoderabo
	Return
}
IfInString, var4, %ZONL%
{
	var1 = K:\Tekeningenbeheer\ZONL\
	gosub gebouwcodezonl
	Return
} Else {
	MouseClick, left,  984,  401
	Sleep 200
	clipboard =
	Send {ctrldown}ac{ctrlup}
	var4 = %clipboard%
	varX := SubStr(var4, 4, 3)
	goto IfEmpty
}
; Als eerste regel geen of niet herkende waarde bevat
IfEmpty:
IfInString, var4, %FLO%
{
	var1 = K:\Tekeningenbeheer\FLO\
	varC = 1
	send {tab}
	goto gebouwcodeflo
	Return
}
IfInString, var4, %DPC%
{
	var1 = K:\Tekeningenbeheer\DPC\
	varC = 1
	send {tab}
	goto gebouwcodedpc
	Return
}
IfInString, var4, %RND%
{
	var1 = K:\Tekeningenbeheer\RND\
	varC = 1
	send {tab}
	goto gebouwcodernd
	Return
} else {
	MsgBox, 262192, *error*, Geen Opdrachtgever gevonden :(
	return
}
;----------------------------------variabelen-----------------------------------;
gebouwcodeflo:
ADG = ADG
GLT = GLT
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
CHC = CHC
DNH = DNH
WDC = WDC
IfInString, var4, %ADG%
{
	var2 = ADG - Adegeest\
	goto discipline
	Return
}
IfInString, var4, %GLT%
{
	var2 = GLT - Gewoon Lekker Thuis\
	goto discipline
	Return
}
IfInString, var4, %MTL%
{
	var2 = MTL - De Mantel\
	goto discipline
	Return
}
IfInString, var4, %DKD%
{
	var2 = DKD - Dekkersduin\
	goto discipline
	Return
}
IfInString, var4, %DST%
{
	var2 = DST - Duinstede\
	goto discipline
	Return
}
IfInString, var4, %GHS%
{
	var2 = GHS - Guldenhuis\
	goto discipline
	Return
}
IfInString, var4, %HHG%
{
	var2 = HHG - Houthaghe\
	goto discipline
	Return
}
IfInString, var4, %JFR%
{
	var2 = JFR - Jonker Frans\
	goto discipline
	Return
}
IfInString, var4, %LVV%
{
	var2 = LVV - Laan van Vredenoord\
	goto discipline
	Return
}
IfInString, var4, %LRS%
{
	var2 = LRS - Laurens Reaelstraat\
	goto discipline
	Return
}
IfInString, var4, %LVS%
{
	var2 = LVS - Loevestein\
	goto discipline
	Return
}
IfInString, var4, %LHF%
{
	var2 = LHF - Loosduinse Hof\
	goto discipline
	Return
}
IfInString, var4, %MHV%
{
	var2 = MHV - Mariahoeve\
	goto discipline
	Return
}
IfInString, var4, %MRR%
{
	var2 = MRR - Marterade\
	goto discipline
	Return
}
IfInString, var4, %OSN%
{
	var2 = OSN - Oostduin\
	goto discipline
	Return
}
IfInString, var4, %ODB%
{
	var2 = ODB - Over de Boogaard\
	goto discipline
	Return
}
IfInString, var4, %SPT%
{
	var2 = SPT - Schakelpunt\
	goto discipline
	Return
}
IfInString, var4, %STV%
{
	var2 = STV - Steenvoorde\
	goto discipline
	Return
}
IfInString, var4, %HHS%
{
	var2 = HHS - 't Hoflants Huys\
	goto discipline
	Return
}
IfInString, var4, %VBL%
{
	var2 = VBL - Vickenborglaan\
	goto discipline
	Return
}
IfInString, var4, %VBH%
{
	var2 = VBH - Vredenburch\
	goto discipline
	Return
}
IfInString, var4, %WKB%
{
	var2 = WKB - Wenckenbach\
	goto discipline
	Return
}
IfInString, var4, %WHF%
{
	var2 = WHF - Westhoff\
	goto discipline
	Return
}
IfInString, var4, %WBL%
{
	var2 = WBL - Willem de Bijelaan\
	goto discipline
	Return
}
IfInString, var4, %UTZ%
{
	var2 = UTZ - Uitzicht\
	goto discipline
	Return
}
IfInString, var4, %CHC%
{
	var2 = CHC - Coornhertcentrum\
	goto discipline
	Return
}
IfInString, var4, %DNH%
{
	var2 = DNH - Duinhage\
	goto discipline
	Return
}
IfInString, var4, %WDC%
{
	var2 = WDC - Wijndealercentrum\
	goto discipline
	Return
} else {
MsgBox, 262192, *error*, Geen locatie gevonden voor FLO... :(
reload
}
Return
gebouwcodedpc:
;-------------------------------------------------------------------------------;
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
21 = 21
22 = 22
23 = 23
24 = 24
241 = 24-1
242 = 24-2
25 = 25
26 = 26
27 = 27
28 = 28
32 = 32
33 = 33
34 = 34
35 = 35
36 = 36
37 = 37
38 = 38
39 = 39
40 = 40
41 = 41
42 = 42
43 = 43
44 = 44
45 = 45
46 = 46
47 = 47
48 = 48
50 = 50
51 = 51
52 = 52
52A = 52-A
52B = 52-B
52C = 52-C
52M = 52-M
53 = 53
54 = 54
541 = 54-1
542 = 54-2
56 = 56
79 = 79
80 = 80
IfInString, varX, %01%
{
	var2 = Poortugaal\01 Ditog\
	goto discipline
	Return
}
IfInString, VarX, %22%
{
	var2 = Poortugaal\22 Aanloop\
	goto discipline
	Return
}
IfInString, VarX, %03%
{
	var2 = Poortugaal\03 Kantoor\
	goto discipline
	Return
}
IfInString, VarX, %04%
{
	var2 = Poortugaal\04 Welhoek\
	goto discipline
	Return
}
IfInString, VarX, %05%
{
	var2 = Poortugaal\05 Bloemisterij\
	goto discipline
	Return
}
IfInString, VarX, %06%
{
	var2 = Poortugaal\06 Centraal Magazijn\
	goto discipline
	Return
}
IfInString, VarX, %07%
{
	var2 = Poortugaal\07 Jip & Janneke Wasserij\
	goto discipline
	Return
}
IfInString, VarX, %08%
{
	var2 = Poortugaal\08 Jip & Janneke KDV\
	goto discipline
	Return
}
IfInString, VarX, %80%
{
	var2 = Rotterdam\80 BW Maasveld\
	goto discipline
	Return
}
IfInString, VarX, %09%
{
	var2 = Poortugaal\09 BSO\
	goto discipline
	Return
}
IfInString, VarX, %10%
{
	var2 = Poortugaal\10 Albeda College\
	goto discipline
	Return
}
IfInString, VarX, %12%
{
	var2 = Poortugaal\12 Sportcentrum\
	goto discipline
	Return
}
IfInString, VarX, %13%
{
	var2 = Poortugaal\13 Keuken\
	goto discipline
	Return
}
IfInString, VarX, %14%
{
	var2 = Poortugaal\14 Technisch Onderhoud en Apotheek\
	goto discipline
	Return
}
IfInString, VarX, %15%
{
	var2 = Poortugaal\15 Medisch Centrum\
	goto discipline
	Return
}
IfInString, VarX, %16%
{
	var2 = Poortugaal\16 Technisch Onderhoud\
	goto discipline
	Return
}
IfInString, VarX, %17%
{
	var2 = Poortugaal\17 Restaurant\
	goto discipline
	Return
}
IfInString, VarX, %18%
{
	var2 = Poortugaal\18 WAC\
	goto discipline
	Return
}
IfInString, VarX, %19%
{
	var2 = Poortugaal\19 Loodds Dorpsblik\
	goto discipline
	Return
}
IfInString, VarX, %21%
{
	var2 = Poortugaal\21 Plein\
	goto discipline
	Return
}
IfInString, VarX, %02%
{
	var2 = Poortugaal\02 Grienden\
	goto discipline
	Return
}
IfInString, VarX, %23%
{
	var2 = Poortugaal\23 Brink\
	goto discipline
	Return
}
IfInString, VarX, %24%
{
	var2 = Poortugaal\24.1 Trainingshuizen\
	goto discipline
	Return
}
IfInString, VarX, %241%
{
	var2 = Poortugaal\24.1 Trainingshuizen\
	goto discipline
	Return
}
IfInString, VarX, %242%
{
	var2 = Poortugaal\24.2 Trainingshuizen\
	goto discipline
	Return
}
IfInString, VarX, %25%
{
	var2 = Poortugaal\25 Bungalows iepenlaan\
	goto discipline
	Return
}
IfInString, VarX, %26%
{
	var2 = Poortugaal\26 Bungalows Eikenlaan\
	goto discipline
	Return
}
IfInString, VarX, %27%
{
	var2 = Poortugaal\27 Bungalows Beukenlaan\Veiligheid\
	goto discipline
	Return
}
IfInString, VarX, %28%
{
	var2 = Poortugaal\28 Blaak\
	goto discipline
	Return
}
IfInString, VarX, %32%
{
	var2 = Poortugaal\32 Nieuwehaven\
	goto discipline
	Return
}
IfInString, VarX, %33%
{
	var2 = Poortugaal\33 Nieuwehave Porto's en Loodds 3\
	goto discipline
	Return
}
IfInString, VarX, %34%
{
	var2 = Poortugaal\34 Ouwehaven\
	goto discipline
	Return
}
IfInString, VarX, %50%
{
	var2 = Rotterdam\50 MFC-Rotterdam-zuid\
	goto discipline
	Return
}
IfInString, VarX, %52%
{
goto 52X
}
IfInString, VarX, %54%
{
goto 54X
}
IfInString, VarX, %51%
{
	var2 = Rotterdam\51 Brug\
	goto discipline
	Return
}
IfInString, VarX, %34%
{
	var2 = Poortugaal\34 Ouwehaven\
	goto discipline
	Return
}
IfInString, VarX, %38%
{
	var2 = Poortugaal\38 Albrandswaardsedijk 122\
	goto discipline
	Return
}
IfInString, VarX, %37%
{
	var2 = Poortugaal\37 Albrandswaardsedijk 120\
	goto discipline
	Return
}
IfInString, VarX, %39%
{
	var2 = Poortugaal\39 Albrandswaardsedijk 76\
	goto discipline
	Return
}
IfInString, VarX, %40%
{
	var2 = Poortugaal\40 Albrandswaardsedijk 102\
	goto discipline
	Return
}
IfInString, VarX, %48%
{
	var2 = Poortugaal\48 ICT Server\
	goto discipline
	Return
}
IfInString, VarX, %56%
{
	var2 = Rotterdam\56 BW Lombardijen\
	goto discipline
	Return
}
IfInString, VarX, %79%
{
	var2 = Rotterdam\79 Medimall\
	goto discipline
	Return
}

52X:
IfInString, Var4, %52A%
{
	var2 = Hellevoetsluis\52-A MFC-Hellevoetsluis\
	goto discipline
	Return
}
IfInString, Var4, %52B%
{
	var2 = Hellevoetsluis\52-B MFC-Hellevoetsluis\
	goto discipline
	Return
}
IfInString, Var4, %52C%
{
	var2 = Hellevoetsluis\52-C MFC-Hellevoetsluis\
	goto discipline
	Return
}
IfInString, Var4, %52M%
{
	var2 = Hellevoetsluis\52-M MFC-Hellevoetsluis\
	goto discipline
	Return
}
54X:
IfInString, var4 , %541%
{
	var2 = Spijkernisse\54-1 MFC-spijkenisse (CGB)\
	goto discipline
	Return
}
IfInString, Var4 , %542%
{
	var2 = Spijkernisse\54-2 MFC-spijkenisse (CGB)\
	goto discipline
	Return
}
else {
MsgBox, 262192, *error*, Geen locatie gevonden voor DPC... :(
reload
Return
}
gebouwcodernd:
AS = AS
BN = BN
KL = KL
RD = RD
RL = RL
VL = VL
WS = WS
IfInString, VarX, %AS%
{
	var2 = Albert Schweitzerplaats (AS)\
	goto discipline
	Return
}
IfInString, VarX, %BN%
{
	var2 = Banneweg (BN)\
	goto discipline
	Return
}
IfInString, VarX, %KL%
{
	var2 = Kleiweg (KL)\
	goto discipline
	Return
}
IfInString, VarX, %RD%
{
	var2 = Ringdijk (RD)\
	goto discipline
	Return
}
IfInString, VarX, %RL%
{
	var2 = Roerdomplaan (RL)\
	goto discipline
	Return
}
IfInString, VarX, %VL%
{
	var2 = Vlietlandplein (VL)\
	goto discipline
	Return
}
IfInString, VarX, %WS%
{
	var2 = Westersingel (WS)\
	goto discipline
	Return
}
else {
MsgBox, 262192, *error*, Geen locatie gevonden voor RND... :(
reload
Return
}
gebouwcoderabo:
Benelux = Benelux
Malie15 = Malie-15
Seindreef = Seindreef
Clarenburg = Clarenburg
Andesdreef = Andesdreef
Doornburg = Doornburg
Godebald = Godebald
Zandveld = Zandveld
Molenpolder = Molenpolder
Muntplein = Muntplein
Radboud = Radboud
Schoolstr = Schoolstr
Twijnstr = Twijnstr
Galecop = Galecop
Liesbosch = Liesbosch
Croeslaan = Croeslaan
Amsterdam = Amsterdam
Hammar = Hammar
Kanaal = Kanaal
Klooster = Klooster
Viestraat = Viestraat
Malie53 = Malie-53
Oranje = Oranje
Schakel = Schakel
Smaragd = Smaragd
Burchten = Burchten
Heidelberg =  Heidelberg
IfInString, Var4, %Benelux%
{
	var2 = Adviescentrum Beneluxlaan 31-33 (Utrecht)\
	goto discipline
	Return
}
IfInString, Var4, %Malie15%
{
	var2 = Adviescentrum Maliebaan 15 (Utrecht)\
	goto discipline
	Return
}
IfInString, Var4, %Seindreef%
{
	var2 = Cashcenter Seinedreef 104 (Utrecht)\
	goto discipline
	Return
}
IfInString, Var4, %Clarenburg%
{
	var2 = Geldautomaat Achter Clarenburg 37 (Utrecht)\
	goto discipline
	Return
}
IfInString, Var4, %Andesdreef%
{
	var2 = Geldautomaat Andesdreef 14 (Utrecht)\
	goto discipline
	Return
}
IfInString, Var4, %Doornburg%
{
	var2 = Geldautomaat Doornburglaan 14 (Utrecht)\
	goto discipline
	Return
}
IfInString, Var4, %Godebald%
{
	var2 = Geldautomaat Godebaldkwartier 71 (Utrecht)\
	goto discipline
	Return
}
IfInString, Var4, %Zandveld%
{
	var2 = Geldautomaat Hoog Zandveld 24 (Nieuwegein)\
	goto discipline
	Return
}
IfInString, Var4, %Molenpolder%
{
	var2 = Geldautomaat Molenpolder 116a (De Meern)\
	goto discipline
	Return
}
IfInString, Var4, %Radboud%
{
	var2 = Geldautomaat Radboudkwartier 12 (Utrecht)\
	goto discipline
	Return
}
IfInString, Var4, %Schoolstr%
{
	var2 = Geldautomaat Schoolstraat\
	goto discipline
	Return
}
IfInString, Var4, %Twijnstr%
{
	var2 = Geldautomaat Twijnstraat 62 (Utrecht)\
	goto discipline
	Return
}
IfInString, Var4, %Galecop%
{
	var2 = Geldautomaat Winkelcentrum Galecop 1 (Nieuwegein)\
	goto discipline
	Return
}
IfInString, Var4, %Liesbosch%
{
	var2 = Opslag Liesbosch 62 (Nieuwegein)\
	goto discipline
	Return
}
IfInString, Var4, %Croeslaan%
{
	var2 = Personeelsbank Croeselaan 18 (Utrecht)\
	goto discipline
	Return
}
IfInString, Var4, %Amsterdam%
{
	var2 = Verkoopkantoor Amsterdamsestraat 357 (Utrecht)\
	goto discipline
	Return
}
IfInString, Var4, %Hammar%
{
	var2 = Verkoopkantoor Hammarskjöldhof 38 (Utrecht)\
	goto discipline
	Return
}
IfInString, Var4, %Kanaal%
{
	var2 = Verkoopkantoor Kanaalstraat 196-196a (Utrecht)\
	goto discipline
	Return
}
IfInString, Var4, %Klooster%
{
	var2 = Verkoopkantoor Kloosterweg 6 (Harmelen)\
	goto discipline
	Return
}
IfInString, Var4, %Viestraat%
{
	var2 = Verkoopkantoor Lange Viestraat 4 (Utrecht)\
	goto discipline
	Return
}
IfInString, Var4, %Malie53%
{
	var2 = Verkoopkantoor Maliebaan 53z (Utrecht)\
	goto discipline
	Return
}
IfInString, Var4, %Oranje%
{
	var2 = Verkoopkantoor Oranjelaan 8 (De Meern)\
	goto discipline
	Return
}
IfInString, Var4, %Schakel%
{
	var2 = Verkoopkantoor Schakelstede 77 (Nieuwegein)\
	goto discipline
	Return
}
IfInString, Var4, %Smaragd%
{
	var2 = Verkoopkantoor Smaragdplein 227 (Utrecht)\
	goto discipline
	Return
}
IfInString, Var4, %Burchten%
{
	var2 = Verkoopkantoor Voor de Burchten 266 (Vleuten)\
	goto discipline
	Return
}
IfInString, Var4, %Multplein%
{
	var2 = Geldautomaat Muntplein 27 (Nieuwegein)\
	goto discipline
	Return
}
IfInString, Var4, %Heidelberg%
{
	var2 = Work & Relax Heidelberglaan 8 (Utrecht)\
	goto discipline
	Return
} else {
MsgBox, 262192, *error*, Geen locatie gevonden voor RABO... :(
reload
Return
}
gebouwcodezonl:
HVS = HVS
IfInString, Var4, %HVS%
{
	var2 = Hof van Smeden\
	goto discipline
	Return
} else {
MsgBox, 262192, *error*, Geen locatie gevonden voor ZONL... :(
reload
Return
}
;-------------------------------------------------------------------------------------------------------------------------;
discipline:
B1 = B1
B2 = B2
B3 = B3
B4 = B4
B5 = B5
B6 = B6
B7 = B7
B8 = B8
FLOB1 = B1
IfInString, var4, %B1%
{
	var3 = Bouwkundig\Plattegronden\
	goto totaal
	Return
}
IfInString, var4, %B2%
{
	var3 = Bouwkundig\Gevelaanzichten\
	goto totaal
	Return
}
IfInString, var4, %B3%
{
	var3 = Bouwkundig\Doorsneden\
	goto totaal
	Return
}
IfInString, var4, %B4%
{
	var3 = Bouwkundig\Details\
	goto totaal
	Return
}
IfInString, var4, %B5%
{
	var3 = Bouwkundig\Interrieur\
	goto totaal
	Return
}
IfInString, var4, %B6%
{
	var3 = Bouwkundig\Sparingen\
	goto totaal
	Return
}
IfInString, var4, %B7%
{
	var3 = Bouwkundig\Constructie\
	goto totaal
	Return
}
IfInString, var4, %B8%
{
	var3 = Bouwkundig\Plafond\
	goto totaal
	Return
}
A1 = A1
A2 = A2
A3 = A3
A4 = A4
IfInString, var4, %A1%
{
	var3 = Installaties\Bliksem & Aarding\Plattegronden\
	goto totaal
	Return
}
IfInString, var4, %A2%
{
	var3 = Installaties\Bliksem & Aarding\Blokschema's\
	goto totaal
	Return
}
IfInString, var4, %A3%
{
	var3 = Installaties\Bliksem & Aarding\Principeschema's\
	goto totaal
	Return
}
IfInString, var4, %A4%
{
	var3 = Installaties\Bliksem & Aarding\Details\
	goto totaal
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
IfInString, var4, %E1%
{
	var3 = Installaties\Elektrotechniek\Plattegronden\
	goto totaal
	Return
}
IfInString, var4, %E2%
{
	var3 = Installaties\Elektrotechniek\Plattegronden\
	goto totaal
	Return
}
IfInString, var4, %E3%
{
	var3 = Installaties\Elektrotechniek\Installatieschema's\
	goto totaal
	Return
}
IfInString, var4, %E4%
{
	var3 = Installaties\Elektrotechniek\Groepenverklaringen\
	goto totaal
	Return
}
IfInString, var4, %E5%
{
	var3 = Installaties\Elektrotechniek\Blokschema's\
	goto totaal
	Return
}
IfInString, var4, %E6%
{
	var3 = Installaties\Elektrotechniek\Stuurstroomschema's\
	goto totaal
	Return
}
IfInString, var4, %E7%
{
	var3 = Installaties\Elektrotechniek\Principeschema's\
	goto totaal
	Return
}
IfInString, var4, %E8%
{
	var3 = Installaties\Elektrotechniek\Details\
	goto totaal
	Return
}
D1 = D1
D2 = D2
D3 = D3
D4 = D4
IfInString, var4, %D1%
{
	var3 = Installaties\Data installatie\Plattegronden\
	goto totaal
}
IfInString, var4, %D2%
{
	var3 = Installaties\Data installatie\Blokschema's\
	goto totaal
}
IfInString, var4, %D3%
{
	var3 = Installaties\Data installatie\Principeschema's\
	goto totaal
}
IfInString, var4, %D4%
{
	var3 = Installaties\Data installatie\Details\
	goto totaal
}
W1 = W1
W2 = W2
W3 = W3
W4 = W4
W5 = W5
IfInString, var4, %W1%
{
	var3 = Installaties\Werktuigbouwkunde\Plattegronden\
	goto totaal
}
IfInString, var4, %W2%
{
	var3 = Installaties\Werktuigbouwkunde\Plattegronden\
	goto totaal
}
IfInString, var4, %W3%
{
	var3 = Installaties\Werktuigbouwkunde\Gasinstallatie\
	goto totaal
}
IfInString, var4, %W4%
{
	var3 = Installaties\Werktuigbouwkunde\Principeschema's\
	goto totaal
}
Wflo:
IfInString, var4, %W1%
{
	var3 = Installaties\Werktuigbouwkunde\Plattegronden\
	goto totaal
}
IfInString, var4, %W2%
{
	var3 = Installaties\Werktuigbouwkunde\Plattegronden\
	goto totaal
}
IfInString, var4, %W3%
{
	var3 = Installaties\Werktuigbouwkunde\Gasinstallatie\
	goto totaal
}
IfInString, var4, %W4%
{
	var3 = Installaties\Werktuigbouwkunde\Principeschema's\
	goto totaal
}
IfInString, var4, %W5%
{
	var3 = Installaties\Werktuigbouwkunde\Details\
	goto totaal
}
VP1 = VP1
VP2 = VP2
VP3 = VP3
VP4 = VP4
IfInString, var4, %VP1%
{
	var3 = Installaties\Elektrotechniek\Verpleegkundig\Plattegronden\
	goto totaal
}
IfInString, var4, %VP2%
{
	var3 = Installaties\Elektrotechniek\Verpleegkundig\Blokschema's\
	goto totaal
}
IfInString, var4, %VP3%
{
	var3 = Installaties\Elektrotechniek\Verpleegkundig\Principeschema's\
	goto totaal
}
IfInString, var4, %VP4%
{
	var3 = Installaties\Elektrotechniek\Verpleegkundig\Details\
	goto totaal
}
BM1 = BM1
BM2 = BM2
BM3 = BM3
BM4 = BM4
IfInString, var4, %BM1%
{
	var3 = Installaties\Brandmeldinstallatie\Plattegronden\
	goto totaal
}
IfInString, var4, %BM2%
{
	var3 = Installaties\Brandmeldinstallatie\Blokschema's\
	goto totaal
}
IfInString, var4, %BM3%
{
	var3 = Installaties\Brandmeldinsinstallatie\
	goto totaal
}
IfInString, var4, %BM4%
{
	var3 = Installaties\Brandmeldinstallatie\Details\
	goto totaal
}
L1 = L1
L2 = L2
L3 = L3
L4 = L4
IfInString, var4, %L1%
{
	var3 = Legionella\Tekeningen\
	goto totaal
}
IfInString, var4, %L2%
{
	msgbox Optie nog niet aangezet!
	;var3 = Legionella\Tekeningen\
	goto totaal
}
V = V
IfInString, var4, %V%
{
	var3 = Veiligheid\Ontruimingsplattegronden\
	setdwg = 0
	goto totaal

}
;Start berekening
totaal:
var0 = %var1%%var2%%var3%%var4%
; msgbox, 16, Bugracking, Var0 is, na berekening: %var0% ;;;; Bug Tracking

IfInString, var0, %ZONL%
{
	goto NoDwg
}
IfInString, var0, %DPC%
{
	goto DWG
}
IfInString, var0, %FLO%
{
	goto NoDwg
}
If (setdwg <> 0){
	goto DWG
}
NoDwg:
;msgbox, 16, Bugtracking, NoDWG waarde var0 = `n%var0% ;;;; Bug Tracking
clipboard = %var0%
Send {shiftdown}{tab 3}{shiftup}{enter}
WinWait ahk_class #32770
;msgbox, 16, Bugtracking, NoDWG `n stap 2 %var0% ;;;; Bug Tracking
sleep 500
clipboard = %var0%
Send {ctrldown}v{ctrlup}.PDF{enter}
WinWaitClose ahk_class #32770
WinWait, Frontpage - Google Chrome,
Sleep 200
send {tab 3}%DocOrigineel%
send {tab 8} /*Tabs om bij eind te komen*/
clipboard = %VarOld%
return 
DWG:
msgbox DWG Gevonden!
;msgbox, 16, Bugtracking, na calculatie en DPC gevonden: `n%var0% ;;;; Bug Tracking
Send {shiftdown}{tab 3}{shiftup}{enter}
WinWait ahk_class #32770
;msgbox, 16, Bugtracking, voor versturen van var0 `n%var0% ;;;; Bug Tracking
clipboard = %var0%
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
send {tab 3}%DocOrigineel%
; tabs om bij datum uit te komen
Send {tab 8} /* send 10*/
clipboard = %VarOld%
return 


^#C::
WinWait, Frontpage
IfWinNotActive, Frontpage, , WinActivate, Frontpage,
WinWaitActive, Frontpage,
MouseClick, left,  1182,  401
clipboart = 
Send {ctrldown}ac{ctrlup}
Send {shiftdown}{TAB}{shiftup}{ctrldown}v{ctrlup}{TAB 2}
send Documentatie{space}{ctrldown}v{ctrlup}{tab}A4{tab}{space}{tab}{space}{tab}
send {home}{tab}{home}{tab 6}
return


; Find, Copy, Past
^!C::
database:
;───────────────────────────────────────────────────────────────────────────────; 
clipboardold = %clipboardall%
;───────────────────────────────────────────────────────────────────────────────; 
WinWait, Frontpage
IfWinNotActive, Frontpage, , WinActivate, Frontpage,
WinWaitActive, Frontpage,
MouseClick, left,  1182,  401
clipboart = 
Send {ctrldown}ac{ctrlup}
;───────────────────────────────────────────────────────────────────────────────; 
clipboart = %clipboard%
noclipboart = %clipboard%
yesclipboart = %clipboard%
noentry = --
cutclipboart := substr(noclipboart, 4, 3)
;───────────────────────────────────────────────────────────────────────────────; 
EmptyAgain:
IfInString, cutclipboart, %noentry%
{
	InputBox, inputclipboart, *error*, Geef gebouwcode in:,,180,120,,,,,
	StringUpper, inputclipboart, inputclipboart
	if inputclipboart in ADG,CHC,GLT,MTL,DHN,DST,DVO,DKD,GHS,HRW,HHG,JFR,LVV,LVS,LHF,MHV,MRR,MRP,OSN,ODB,SPT,STV,HHS,VBL,VBH,WKB,WHF,WDC,WBL,UTZ
	{
		Stringreplace, completeclipboart, yesclipboart, --, -%inputclipboart%-,
		clipboart = %completeclipboart%
		clipboard = %completeclipboart%
		Send {ctrldown}av{ctrlup}
	}
	else
	{
		goto EmptyAgain
	}
}
;───────────────────────────────────────────────────────────────────────────────; 
Send {shiftdown}{TAB}{shiftup}{ctrldown}v{ctrlup}{TAB 2}
;───────────────────────────────────────────────────────────────────────────────; 
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
ADG = ADG
CHC = CHC
GLT = GLT 
MTL = MTL
DHN = DHN
DST = DST
DVO = DVO
DKD = DKD
GHS = GHS
HRW = HRW
HHG = HHG
JFR = JFR
LVV = LVV
LVS = LVS
LHF = LHF
MHV = MHV
MRR = MRR
MRP = MRP
OSN = OSN
ODB = ODB
SPT = SPT
STV = STV
HHS = HHS
VBL = VBL
VBH = VBH
WKB = WKB
WHF  =WHF 
WDC = WDC
WBL = WBL
UTZ = UTZ
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
KoelwaterJan = Koelwater 01
KoelwaterFeb = Koelwater 02
KoelwaterMrt = Koelwater 03
KoelwaterApr = Koelwater 04
KoelwaterMei = Koelwater 05
KoelwaterJun = Koelwater 06
KoelwaterJul = Koelwater 07
KoelwaterAug = Koelwater 08
KoelwaterSep = Koelwater 09
KoelwaterOkt = Koelwater 10
KoelwaterNov = Koelwater 11
KoelwaterDec = Koelwater 12
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
E1 = E1
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
W211 = W211
W212 = W212
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
Meterstanden01 = Meterstanden 01 
Meterstanden02 = Meterstanden 02 
Meterstanden03 = Meterstanden 03 
Meterstanden04 = Meterstanden 04 
Meterstanden05 = Meterstanden 05 
Meterstanden06 = Meterstanden 06 
Meterstanden07 = Meterstanden 07 
Meterstanden08 = Meterstanden 08 
Meterstanden09 = Meterstanden 09 
Meterstanden10 = Meterstanden 10 
Meterstanden11 = Meterstanden 11 
Meterstanden12 = Meterstanden 12 
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
RondgangJan = Rondgang 01
RondgangFeb = Rondgang 02
RondgangMrt = Rondgang 03
RondgangApr = Rondgang 04
RondgangMei = Rondgang 05
RondgangJun = Rondgang 06
RondgangJul = Rondgang 07
RondgangAug = Rondgang 08
RondgangSep = Rondgang 09
RondgangOkt = Rondgang 10
RondgangNov = Rondgang 11
RondgangDec = Rondgang 12
Liftkeuring = Keuring Lift
BliksemInspectie = Bliksem Inspectie
Temp01 = Temperatuurlijst 01
Temp02 = Temperatuurlijst 02
Temp03 = Temperatuurlijst 03
Temp04 = Temperatuurlijst 04
Temp05 = Temperatuurlijst 05
Temp06 = Temperatuurlijst 06
Temp07 = Temperatuurlijst 07
Temp08 = Temperatuurlijst 08
Temp09 = Temperatuurlijst 09
Temp10 = Temperatuurlijst 10
Temp11 = Temperatuurlijst 11
Temp12 = Temperatuurlijst 12
Week01 = Week 01
Week02 = Week 02
Week03 = Week 03
Week04 = Week 04
Week05 = Week 05
Week06 = Week 06
Week07 = Week 07
Week08 = Week 08
Week09 = Week 09
Week10 = Week 10
Week11 = Week 11
Week12 = Week 12
Week13 = Week 13
Week14 = Week 14
Week15 = Week 15
Week16 = Week 16
Week17 = Week 17
Week18 = Week 18
Week19 = Week 19
Week20 = Week 20
Week21 = Week 21
Week22 = Week 22
Week23 = Week 23
Week24 = Week 24
Week25 = Week 25
Week26 = Week 26
Week27 = Week 27
Week28 = Week 28
Week29 = Week 29
Week30 = Week 30
Week31 = Week 31
Week32 = Week 32
Week33 = Week 33
Week34 = Week 34
Week35 = Week 35
Week36 = Week 36
Week37 = Week 37
Week38 = Week 38
Week39 = Week 39
Week40 = Week 40
Week41 = Week 41
Week42 = Week 42
Week43 = Week 43
Week44 = Week 44
Week45 = Week 45
Week46 = Week 46
Week47 = Week 47
Week48 = Week 48
Week49 = Week 49
Week50 = Week 50
Week51 = Week 51
Week52 = Week 52
Week53 = Week 53
Blusmiddelen = Blusmiddelen
KeuringVerlichting = Keuring Verlichting
OnderhoudVerlichting = Onderhoud Verlichting
PVEB = PVE BMI
PVEA = PVE OAI
eFLO = FLO--
ZONL = ZONL
STD = STD
X = FLO-X-Tekeningen
Kwartaalrondgang = Kwartaalrondgang
MeldingLegionella = Melding Legionella
Aanmelding = Aanmelding
kadastrale = Kadastrale Kaart
pva = Plan Van Aanpak
Risicoanalyse = Risicoanalyse
DPC = DPC
Spoellijst = Spoellijst
Risicoanalyse = Risicoanalyse
Totaalscan = Totaal Scan 1e
Invullen = Aronskelkweg
;───────────────────────────────────────────────────────────────────────────────; 
;───────────────────────────────────────────────────────────────────────────────; 
/*
BEGIN CODE BIBLIOTHEEK::
*/
;───────────────────────────────────────────────────────────────────────────────; 
;───────────────────────────────────────────────────────────────────────────────; 
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
	Send {ctrldown}v{ctrlup}
	sleep 200
	;msgbox HIER!
	Send {end}.DWG
	Send {enter}
	WinWaitClose Openen
	WinWait, Frontpage - Google Chrome,
	IfWinNotActive, Frontpage - Google Chrome, , WinActivate, Frontpage - Google Chrome,
	WinWaitActive, Frontpage - Google Chrome,
	Send {tab 3}
}
;───────────────────────────────────────────────────────────────────────────────; 
opnieuw:

IfInString, clipboart, %Invullen%
{
	Send Technische installatiedelen t.b.v. onderhoud, Dalton Den Haag
	Send {tab}A4{tab}{space}{tab}{space}{tab}{home}{tab}09{tab}2014{tab 5}{enter}
	clipboard = %clipboardold%
	Return
}


IfInString, clipboart, %B2%
{
	Send Bouwkundige gevelaanzichten,
	clipboard = %clipboardold%
	goto checkdatum
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
	MsgBox, 262192, *error*, B10K is geen geldige verdieping!
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
	IfInString, clipboart, %ZONL%
{
	Send Elektrotechnische installatie, installatieschema verdeelkast
	Send {shiftdown}{tab 2}{shiftup}{home}{right 13}{shiftdown}{right 5}{shiftup}{ctrldown}c{ctrlup}{tab 2}{end}{space}{ctrldown}v{ctrlup}
	clipboard = %clipboardold%
	Return
}
else{
Send Elektrotechnische installatie, installatieschema verdeelkast
	Send {shiftdown}{tab 2}{shiftup}{home}{right 12}{shiftdown}{end}{shiftup}{ctrldown}c{ctrlup}{tab 2}{end}{space}{ctrldown}v{ctrlup}
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
IfInString, clipboart, %ZONL%
{
	Send Elektrotechnische installatie, groepenverklaring verdeelkast
	Send {shiftdown}{tab 2}{shiftup}{home}{right 13}{shiftdown}{right 5}{shiftup}{ctrldown}c{ctrlup}{tab 2}{end}{space}{ctrldown}v{ctrlup}
	clipboard = %clipboardold%
	Return
}
else {
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
IfInString, clipboart, %W211%
{
	Send Werktuigbouwkundige installatie t.b.v. sanitair installatie, plattegrond 11e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %W212%
{
	Send Werktuigbouwkundige installatie t.b.v. sanitair installatie, plattegrond 12e verdieping
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %W3%
{
	Send Werktuigbouwkundige gasinstallatie, 
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
IfInString, clipboart, %PVEB%
{
	Send Programma van eisen, brandmeldinstallatie,
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %PVEA%
{
	Send Programma van eisen, ontruimingsalarminstallatie,
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %VP100%
{
	Send Verpleegkundig oproepsysteem, plattegrond begane grond
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %VP1T0%
{
	Send Verpleegkundig oproepsysteem, plattegrond tussenverdieping tussen bg en 1e verdieping
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %VP101%
{
	Send Verpleegkundig oproepsysteem, plattegrond 1e verdieping
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %VP1T1%
{
	Send Verpleegkundig oproepsysteem, plattegrond tussenverdieping tussen 1e en 2e verdieping
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %VP102%
{
	Send Verpleegkundig oproepsysteem, plattegrond 2e verdieping
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %VP103%
{
	Send Verpleegkundig oproepsysteem, plattegrond 3e verdieping
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %VP104%
{
	Send Verpleegkundig oproepsysteem, plattegrond 4e verdieping
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %VP105%
{
	Send Verpleegkundig oproepsysteem, plattegrond 5e verdieping
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %VP106%
{
	Send Verpleegkundig oproepsysteem, plattegrond 6e verdieping
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %VP107%
{
	Send Verpleegkundig oproepsysteem, plattegrond 7e verdieping
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %VP108%
{
	Send Verpleegkundig oproepsysteem, plattegrond 8e verdieping
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %VP109%
{
	Send Verpleegkundig oproepsysteem, plattegrond 9e verdieping
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %VP110%
{
	Send Verpleegkundig oproepsysteem, plattegrond 10e verdieping
	Send {tab}
	clipboard = %clipboardold%
	Return
}
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
	Send {tab}
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
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %A102%
{
	Send Bliksem/Aardingsinstallatie, plattegrond 2e verdieping
	Send {tab}
	clipboard = %clipboardold%z
	Return
}
IfInString, clipboart, %A103%
{
	Send Bliksem/Aardingsinstallatie, plattegrond 3e verdieping
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %A104%
{
	Send Bliksem/Aardingsinstallatie, plattegrond 4e verdieping
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %A105%
{
	Send Bliksem/Aardingsinstallatie, plattegrond 5e verdieping
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %A106%
{
	Send Bliksem/Aardingsinstallatie, plattegrond 6e verdieping
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %A107%
{
	Send Bliksem/Aardingsinstallatie, plattegrond 7e verdieping
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %A108%
{
	Send Bliksem/Aardingsinstallatie, plattegrond 8e verdieping
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %A109%
{
	Send Bliksem/Aardingsinstallatie, plattegrond 9e verdieping
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %A110%
{
	Send Bliksem/Aardingsinstallatie, plattegrond 10e verdieping
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %A200%
{
	Send Bliksem/Aardingsinstallatie, blokschema
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %A4%
{
	Send Bliksem/Aardingsinstallatie, detail
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %D2%
{
	Send Data installatie, blokschema
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %D1TR%
{
	Send Data installatie, terrein
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %D1K2%
{
	Send Data installatie, plattegrond kelder -2
	Send {tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %D1K1%
{
	Send Data installatie, plattegrond kelder -1
	Send {tab}
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
IfInString, clipboart, %VK101%
{
	Send Vluchtplan 1, kelder -1
	Send {tab}A3{tab}{space}{tab}{space}{tab}
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
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0004%
{
	Send Vluchtplan 4, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0005%
{
	Send Vluchtplan 5, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0006%
{
	Send Vluchtplan 6, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0007%
{
	Send Vluchtplan 7, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0008%
{
	Send Vluchtplan 8, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0009%
{
	Send Vluchtplan 9, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0010%
{
	Send Vluchtplan 10, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0011%
{
	Send Vluchtplan 11, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0012%
{
	Send Vluchtplan 12, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0013%
{
	Send Vluchtplan 13, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0014%
{
	Send Vluchtplan 14, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%z
	Return
}
IfInString, clipboart, %V0015%
{
	Send Vluchtplan 15, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%z
	Return
}
IfInString, clipboart, %V0016%
{
	Send Vluchtplan 16, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0017%
{
	Send Vluchtplan 17, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0018%
{
	Send Vluchtplan 18, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0019%
{
	Send Vluchtplan 19, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0020%
{
	Send Vluchtplan 20, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0021%
{
	Send Vluchtplan 21, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0022%
{
	Send Vluchtplan 22, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0023%
{
	Send Vluchtplan 23, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0024%
{
	Send Vluchtplan 24, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0025%
{
	Send Vluchtplan 25, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0026%
{
	Send Vluchtplan 26, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0027%
{
	Send Vluchtplan 27, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0028%
{
	Send Vluchtplan 28, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0029%
{
	Send Vluchtplan 29, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0030%
{
	Send Vluchtplan 30, begane grond
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0101%
{
	Send Vluchtplan 1, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0102%
{
	Send Vluchtplan 2, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0103%
{
	Send Vluchtplan 3, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0104%
{
	Send Vluchtplan 4, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0105%
{
	Send Vluchtplan 5, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0106%
{
	Send Vluchtplan 6, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0107%
{
	Send Vluchtplan 7, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0108%
{
	Send Vluchtplan 8, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0109%
{
	Send Vluchtplan 9, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0110%
{
	Send Vluchtplan 10, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0111%
{
	Send Vluchtplan 11, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0112%
{
	Send Vluchtplan 12, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0113%
{
	Send Vluchtplan 13, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0114%
{
	Send Vluchtplan 14, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0115%
{
	Send Vluchtplan 15, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0116%
{
	Send Vluchtplan 16, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0117%
{
	Send Vluchtplan 17, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0118%
{
	Send Vluchtplan 18, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0119%
{
	Send Vluchtplan 19, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0120%
{
	Send Vluchtplan 20, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0121%
{
	Send Vluchtplan 21, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0122%
{
	Send Vluchtplan 22, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0123%
{
	Send Vluchtplan 23, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0124%
{
	Send Vluchtplan 24, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0125%
{
	Send Vluchtplan 25, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0126%
{
	Send Vluchtplan 26, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0127%
{
	Send Vluchtplan 27, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0128%
{
	Send Vluchtplan 28, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0129%
{
	Send Vluchtplan 29, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0130%
{
	Send Vluchtplan 30, 1e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0201%
{
	Send Vluchtplan 1, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0202%
{
	Send Vluchtplan 2, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0203%
{
	Send Vluchtplan 3, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0204%
{
	Send Vluchtplan 4, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0205%
{
	Send Vluchtplan 5, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0206%
{
	Send Vluchtplan 6, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0207%
{
	Send Vluchtplan 7, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0208%
{
	Send Vluchtplan 8, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0209%
{
	Send Vluchtplan 9, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0210%
{
	Send Vluchtplan 10, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0211%
{
	Send Vluchtplan 11, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0212%
{
	Send Vluchtplan 12, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0213%
{
	Send Vluchtplan 13, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0214%
{
	Send Vluchtplan 14, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0215%
{
	Send Vluchtplan 15, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0216%
{
	Send Vluchtplan 16, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0217%
{
	Send Vluchtplan 17, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0218%
{
	Send Vluchtplan 18, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0219%
{
	Send Vluchtplan 19, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0220%
{
	Send Vluchtplan 20, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0221%
{
	Send Vluchtplan 21, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0222%
{
	Send Vluchtplan 22, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0223%
{
	Send Vluchtplan 23, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0224%
{
	Send Vluchtplan 24, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0225%
{
	Send Vluchtplan 25, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0226%
{
	Send Vluchtplan 26, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0227%
{
	Send Vluchtplan 27, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0228%
{
	Send Vluchtplan 28, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0229%
{
	Send Vluchtplan 29, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0230%
{
	Send Vluchtplan 30, 2e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0301%
{
	Send Vluchtplan 1, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0302%
{
	Send Vluchtplan 2, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0303%
{
	Send Vluchtplan 3, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0304%
{
	Send Vluchtplan 4, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0305%
{
	Send Vluchtplan 5, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0306%
{
	Send Vluchtplan 6, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0307%
{
	Send Vluchtplan 7, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0308%
{
	Send Vluchtplan 8, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0309%
{
	Send Vluchtplan 9, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0310%
{
	Send Vluchtplan 10, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0311%
{
	Send Vluchtplan 11, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0312%
{
	Send Vluchtplan 12, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0313%
{
	Send Vluchtplan 13, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0314%
{
	Send Vluchtplan 14, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0315%
{
	Send Vluchtplan 15, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0316%
{
	Send Vluchtplan 16, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0317%
{
	Send Vluchtplan 17, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0318%
{
	Send Vluchtplan 18, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0319%
{
	Send Vluchtplan 19, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0320%
{
	Send Vluchtplan 20, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0321%
{
	Send Vluchtplan 21, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0322%
{
	Send Vluchtplan 22, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0323%
{
	Send Vluchtplan 23, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0324%
{
	Send Vluchtplan 24, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0325%
{
	Send Vluchtplan 25, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0326%
{
	Send Vluchtplan 26, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0327%
{
	Send Vluchtplan 27, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0328%
{
	Send Vluchtplan 28, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0329%
{
	Send Vluchtplan 29, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0330%
{
	Send Vluchtplan 30, 3e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0401%
{
	Send Vluchtplan 1, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0402%
{
	Send Vluchtplan 2, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0403%
{
	Send Vluchtplan 3, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0404%
{
	Send Vluchtplan 4, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0405%
{
	Send Vluchtplan 5, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0406%
{
	Send Vluchtplan 6, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0407%
{
	Send Vluchtplan 7, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0408%
{
	Send Vluchtplan 8, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0409%
{
	Send Vluchtplan 9, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0410%
{
	Send Vluchtplan 10, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0411%
{
	Send Vluchtplan 11, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0412%
{
	Send Vluchtplan 12, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0413%
{
	Send Vluchtplan 13, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0414%
{
	Send Vluchtplan 14, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0415%
{
	Send Vluchtplan 15, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0416%
{
	Send Vluchtplan 16, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0417%
{
	Send Vluchtplan 17, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0418%
{
	Send Vluchtplan 18, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0419%
{
	Send Vluchtplan 19, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0420%
{
	Send Vluchtplan 20, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0421%
{
	Send Vluchtplan 21, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0422%
{
	Send Vluchtplan 22, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0423%
{
	Send Vluchtplan 23, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0424%
{
	Send Vluchtplan 24, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0425%
{
	Send Vluchtplan 25, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0426%
{
	Send Vluchtplan 26, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0427%
{
	Send Vluchtplan 27, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0428%
{
	Send Vluchtplan 28, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0429%
{
	Send Vluchtplan 29, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0430%
{
	Send Vluchtplan 30, 4e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0501%
{
	Send Vluchtplan 1, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0502%
{
	Send Vluchtplan 2, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0503%
{
	Send Vluchtplan 3, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0504%
{
	Send Vluchtplan 4, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0505%
{
	Send Vluchtplan 5, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0506%
{
	Send Vluchtplan 6, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0507%
{
	Send Vluchtplan 7, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0508%
{
	Send Vluchtplan 8, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0509%
{
	Send Vluchtplan 9, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0510%
{
	Send Vluchtplan 10, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0511%
{
	Send Vluchtplan 11, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0512%
{
	Send Vluchtplan 12, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0513%
{
	Send Vluchtplan 13, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0514%
{
	Send Vluchtplan 14, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0515%
{
	Send Vluchtplan 15, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0516%
{
	Send Vluchtplan 16, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0517%
{
	Send Vluchtplan 17, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0518%
{
	Send Vluchtplan 18, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0519%
{
	Send Vluchtplan 19, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0520%
{
	Send Vluchtplan 20, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0521%
{
	Send Vluchtplan 21, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0522%
{
	Send Vluchtplan 22, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0523%
{
	Send Vluchtplan 23, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0524%
{
	Send Vluchtplan 24, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0525%
{
	Send Vluchtplan 25, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0526%
{
	Send Vluchtplan 26, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0527%
{
	Send Vluchtplan 27, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0528%
{
	Send Vluchtplan 28, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0529%
{
	Send Vluchtplan 29, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0530%
{
	Send Vluchtplan 30, 5e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0601%
{
	Send Vluchtplan 1, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0602%
{
	Send Vluchtplan 2, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0603%
{
	Send Vluchtplan 3, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0604%
{
	Send Vluchtplan 4, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0605%
{
	Send Vluchtplan 5, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0606%
{
	Send Vluchtplan 6, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0607%
{
	Send Vluchtplan 7, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0608%
{
	Send Vluchtplan 8, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0609%
{
	Send Vluchtplan 9, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0610%
{
	Send Vluchtplan 10, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0611%
{
	Send Vluchtplan 11, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0612%
{
	Send Vluchtplan 12, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0613%
{
	Send Vluchtplan 13, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0614%
{
	Send Vluchtplan 14, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0615%
{
	Send Vluchtplan 15, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0616%
{
	Send Vluchtplan 16, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0617%
{
	Send Vluchtplan 17, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0618%
{
	Send Vluchtplan 18, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0619%
{
	Send Vluchtplan 19, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0620%
{
	Send Vluchtplan 20, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0621%
{
	Send Vluchtplan 21, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0622%
{
	Send Vluchtplan 22, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0623%
{
	Send Vluchtplan 23, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0624%
{
	Send Vluchtplan 24, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0625%
{
	Send Vluchtplan 25, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0626%
{
	Send Vluchtplan 26, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0627%
{
	Send Vluchtplan 27, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0628%
{
	Send Vluchtplan 28, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0629%
{
	Send Vluchtplan 29, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0630%
{
	Send Vluchtplan 30, 6e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0701%
{
	Send Vluchtplan 1, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0702%
{
	Send Vluchtplan 2, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0703%
{
	Send Vluchtplan 3, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0704%
{
	Send Vluchtplan 4, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0705%
{
	Send Vluchtplan 5, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0706%
{
	Send Vluchtplan 6, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0707%
{
	Send Vluchtplan 7, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0708%
{
	Send Vluchtplan 8, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0709%
{
	Send Vluchtplan 9, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0710%
{
	Send Vluchtplan 10, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0711%
{
	Send Vluchtplan 11, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0712%
{
	Send Vluchtplan 12, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0713%
{
	Send Vluchtplan 13, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0714%
{
	Send Vluchtplan 14, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0715%
{
	Send Vluchtplan 15, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0716%
{
	Send Vluchtplan 16, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0717%
{
	Send Vluchtplan 17, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0718%
{
	Send Vluchtplan 18, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0719%
{
	Send Vluchtplan 19, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0720%
{
	Send Vluchtplan 20, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0721%
{
	Send Vluchtplan 21, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0722%
{
	Send Vluchtplan 22, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0723%
{
	Send Vluchtplan 23, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0724%
{
	Send Vluchtplan 24, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0725%
{
	Send Vluchtplan 25, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0726%
{
	Send Vluchtplan 26, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0727%
{
	Send Vluchtplan 27, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0728%
{
	Send Vluchtplan 28, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0729%
{
	Send Vluchtplan 29, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0730%
{
	Send Vluchtplan 30, 7e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0801%
{
	Send Vluchtplan 1, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0802%
{
	Send Vluchtplan 2, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0803%
{
	Send Vluchtplan 3, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0804%
{
	Send Vluchtplan 4, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0805%
{
	Send Vluchtplan 5, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0806%
{
	Send Vluchtplan 6, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0807%
{
	Send Vluchtplan 7, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0808%
{
	Send Vluchtplan 8, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0809%
{
	Send Vluchtplan 9, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0810%
{
	Send Vluchtplan 10, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0811%
{
	Send Vluchtplan 11, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0812%
{
	Send Vluchtplan 12, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0813%
{
	Send Vluchtplan 13, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0814%
{
	Send Vluchtplan 14, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0815%
{
	Send Vluchtplan 15, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0816%
{
	Send Vluchtplan 16, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0817%
{
	Send Vluchtplan 17, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0818%
{
	Send Vluchtplan 18, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0819%
{
	Send Vluchtplan 19, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0820%
{
	Send Vluchtplan 20, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0821%
{
	Send Vluchtplan 21, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0822%
{
	Send Vluchtplan 22, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %V0823%
{
	Send Vluchtplan 23, 8e verdieping
	Send {tab}A3{tab}{space}{tab}{space}{tab}
	goto checkdatum
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
IfInString, clipboart, %RondgangJan%
{
	Send Kwartaalrondgang januari
	Send {shiftdown}{tab 2}{shiftup}{end}{shiftdown}{left 4}{shiftup}{ctrldown}c{ctrlup}{tab 2}{end}{space}{ctrldown}v{ctrlup}{tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %RondgangFeb%
{
	Send Kwartaalrondgang februari
	Send {shiftdown}{tab 2}{shiftup}{end}{shiftdown}{left 4}{shiftup}{ctrldown}c{ctrlup}{tab 2}{end}{space}{ctrldown}v{ctrlup}{tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %RondgangMrt%
{
	Send Kwartaalrondgang maart
	Send {shiftdown}{tab 2}{shiftup}{end}{shiftdown}{left 4}{shiftup}{ctrldown}c{ctrlup}{tab 2}{end}{space}{ctrldown}v{ctrlup}{tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %RondgangApr%
{
	Send Kwartaalrondgang april
	Send {shiftdown}{tab 2}{shiftup}{end}{shiftdown}{left 4}{shiftup}{ctrldown}c{ctrlup}{tab 2}{end}{space}{ctrldown}v{ctrlup}{tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %RondgangMei%
{
	Send Kwartaalrondgang mei
	Send {shiftdown}{tab 2}{shiftup}{end}{shiftdown}{left 4}{shiftup}{ctrldown}c{ctrlup}{tab 2}{end}{space}{ctrldown}v{ctrlup}{tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %RondgangJun%
{
	Send Kwartaalrondgang juni
	Send {shiftdown}{tab 2}{shiftup}{end}{shiftdown}{left 4}{shiftup}{ctrldown}c{ctrlup}{tab 2}{end}{space}{ctrldown}v{ctrlup}{tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %RondgangJul%
{
	Send Kwartaalrondgang juli
	Send {shiftdown}{tab 2}{shiftup}{end}{shiftdown}{left 4}{shiftup}{ctrldown}c{ctrlup}{tab 2}{end}{space}{ctrldown}v{ctrlup}{tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %RondgangAug%
{
	Send Kwartaalrondgang augustus
	Send {shiftdown}{tab 2}{shiftup}{end}{shiftdown}{left 4}{shiftup}{ctrldown}c{ctrlup}{tab 2}{end}{space}{ctrldown}v{ctrlup}{tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %RondgangSep%
{
	Send Kwartaalrondgang september
	Send {shiftdown}{tab 2}{shiftup}{end}{shiftdown}{left 4}{shiftup}{ctrldown}c{ctrlup}{tab 2}{end}{space}{ctrldown}v{ctrlup}{tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %RondgangOkt%
{
	Send Kwartaalrondgang oktober
	Send {shiftdown}{tab 2}{shiftup}{end}{shiftdown}{left 4}{shiftup}{ctrldown}c{ctrlup}{tab 2}{end}{space}{ctrldown}v{ctrlup}{tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %RondgangNov%
{
	Send Kwartaalrondgang november
	Send {shiftdown}{tab 2}{shiftup}{end}{shiftdown}{left 4}{shiftup}{ctrldown}c{ctrlup}{tab 2}{end}{space}{ctrldown}v{ctrlup}{tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %RondgangDec%
{
	Send Kwartaalrondgang december
	Send {shiftdown}{tab 2}{shiftup}{end}{shiftdown}{left 4}{shiftup}{ctrldown}c{ctrlup}{tab 2}{end}{space}{ctrldown}v{ctrlup}{tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
NENE = NEN 3140-E
NENA = NEN 3140-A
IfInString, clipboart, %NENE%
{
	Send NEN 3140 inspectierapport t.b.v. elektrotechnische installaties
	send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %NENA%
{
	Send NEN 3140 inspectierapport t.b.v. arbeidsmiddelen
	send {tab}A4{tab}{space}{tab}{space}{tab}
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
	Send Analyse certificaat, maart
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
IfInString, clipboart, %KoelwaterJan%
{
	Send Aquacare analyserapport, koelwaterbehandeling, januari{space}
	send {shiftdown}{tab 2}{shiftup}{end}{shiftdown}{left 4}{shiftup}{ctrldown}c{ctrlup}{tab 2}{end}{ctrldown}v{ctrlup}
	Send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %KoelwaterFeb%
{
	Send Aquacare analyserapport, koelwaterbehandeling, februari{space}
	send {shiftdown}{tab 2}{shiftup}{end}{shiftdown}{left 4}{shiftup}{ctrldown}c{ctrlup}{tab 2}{end}{ctrldown}v{ctrlup}
	Send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %KoelwaterMrt%
{
	Send Aquacare analyserapport, koelwaterbehandeling, maart{space}
	send {shiftdown}{tab 2}{shiftup}{end}{shiftdown}{left 4}{shiftup}{ctrldown}c{ctrlup}{tab 2}{end}{ctrldown}v{ctrlup}
	Send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %KoelwaterApr%
{
	Send Aquacare analyserapport, koelwaterbehandeling, april{space}
	send {shiftdown}{tab 2}{shiftup}{end}{shiftdown}{left 4}{shiftup}{ctrldown}c{ctrlup}{tab 2}{end}{ctrldown}v{ctrlup}
	Send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %KoelwaterMei%
{
	Send Aquacare analyserapport, koelwaterbehandeling, mei{space}
	send {shiftdown}{tab 2}{shiftup}{end}{shiftdown}{left 4}{shiftup}{ctrldown}c{ctrlup}{tab 2}{end}{ctrldown}v{ctrlup}
	Send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %KoelwaterJun%
{
	Send Aquacare analyserapport, koelwaterbehandeling, juni{space}
	send {shiftdown}{tab 2}{shiftup}{end}{shiftdown}{left 4}{shiftup}{ctrldown}c{ctrlup}{tab 2}{end}{ctrldown}v{ctrlup}
	Send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %KoelwaterJul%
{
	Send Aquacare analyserapport, koelwaterbehandeling, juli{space}
	send {shiftdown}{tab 2}{shiftup}{end}{shiftdown}{left 4}{shiftup}{ctrldown}c{ctrlup}{tab 2}{end}{ctrldown}v{ctrlup}
	Send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %KoelwaterAug%
{
	Send Aquacare analyserapport, koelwaterbehandeling, augustus{space}
	send {shiftdown}{tab 2}{shiftup}{end}{shiftdown}{left 4}{shiftup}{ctrldown}c{ctrlup}{tab 2}{end}{ctrldown}v{ctrlup}
	Send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %KoelwaterSep%
{
	Send Aquacare analyserapport, koelwaterbehandeling, september{space}
	send {shiftdown}{tab 2}{shiftup}{end}{shiftdown}{left 4}{shiftup}{ctrldown}c{ctrlup}{tab 2}{end}{ctrldown}v{ctrlup}
	Send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %KoelwaterOkt%
{
	Send Aquacare analyserapport, koelwaterbehandeling, oktober{space}
	send {shiftdown}{tab 2}{shiftup}{end}{shiftdown}{left 4}{shiftup}{ctrldown}c{ctrlup}{tab 2}{end}{ctrldown}v{ctrlup}
	Send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %KoelwaterNov%
{
	Send Aquacare analyserapport, koelwaterbehandeling, november{space}
	send {shiftdown}{tab 2}{shiftup}{end}{shiftdown}{left 4}{shiftup}{ctrldown}c{ctrlup}{tab 2}{end}{ctrldown}v{ctrlup}
	Send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %KoelwaterDec%
{
	Send Aquacare analyserapport, koelwaterbehandeling, december{space}
	send {shiftdown}{tab 2}{shiftup}{end}{shiftdown}{left 4}{shiftup}{ctrldown}c{ctrlup}{tab 2}{end}{ctrldown}v{ctrlup}
	Send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %Temperatuurlijst%
{
	goto temperatuurlijst
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
	Send Service order bon vluchtwegverlichting,
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
	Send Keuringslijst blusmiddelen, 
	Send {shiftdown}{tab 2}{shiftup}{end}{shiftdown}{left 4}{shiftup}{ctrldown}c{ctrlup}{tab 2}{end}{space}{ctrldown}v{ctrlup}{tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %KeuringVerlichting%
{
	Send Keuringslijst vluchtwegverlichting, 
	Send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %OnderhoudVerlichting%
{
	Send Service order bon vluchtwegverlichting, 
	Send {tab}A4{tab}{space}{tab}{space}{tab}
	clipboard = %clipboardold%
	Return
}
temperatuurlijst:
IfInString, clipboart, %Temp01%
{
	Send Temperatuur controlelijst, januari 2015
	Send {tab}A4{tab}{space}{tab 2}
	send {home}{tab}{home}{tab 2}{end}{tab}{home}{tab 3}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %Temp02%
{
	Send Temperatuur controlelijst, februari 2015
	Send {tab}A4{tab}{space}{tab 2}
	send {home}{tab}02{tab 2}28{tab}02{tab 3}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %Temp03%
{
	Send Temperatuur controlelijst, maart 2015
	Send {tab}A4{tab}{space}{tab 2}
	send {home}{tab}03{tab 2}{end}{tab}03{tab 3}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %Temp04%
{
	Send Temperatuur controlelijst, april 2015
	Send {tab}A4{tab}{space}{tab 2}
	send {home}{tab}04{tab 2}30{tab}04{tab 3}	
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %Temp05%
{
	Send Temperatuur controlelijst, mei 2015
	Send {tab}A4{tab}{space}{tab 2}
	send {home}{tab}05{tab 2}{end}{tab}05{tab 3}	
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %Temp06%
{
	Send Temperatuur controlelijst, juni 2015
	Send {tab}A4{tab}{space}{tab 2}
	send {home}{tab}06{tab 2}30{tab}06{tab 3}	
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %Temp07%
{
	Send Temperatuur controlelijst, juli 2015
	Send {tab}A4{tab}{space}{tab 2}Send {tab}A4{tab}{space}{tab 2}
	send {home}{tab}07{tab 2}{end}{tab}07{tab 3}	
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %Temp08%
{
	Send Temperatuur controlelijst, augustus 2015
	Send {tab}A4{tab}{space}{tab 2}Send {tab}A4{tab}{space}{tab 2}
	send {home}{tab}08{tab 2}{end}{tab}08{tab 3}	
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %Temp09%
{
	Send Temperatuur controlelijst, september 2015
	Send {tab}A4{tab}{space}{tab 2}Send {tab}A4{tab}{space}{tab 2}
	send {home}{tab}09{tab 2}30{tab}09{tab 3}	
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %Temp10%
{
	Send Temperatuur controlelijst, oktober 2015
	Send {tab}A4{tab}{space}{tab 2}Send {tab}A4{tab}{space}{tab 2}
	send {home}{tab}10{tab 2}{end}{tab}10{tab 3}	
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %Temp11%
{
	Send Temperatuur controlelijst, november 2015
	Send {tab}A4{tab}{space}{tab 2}Send {tab}A4{tab}{space}{tab 2}
	send {home}{tab}11{tab 2}30{tab}11{tab 3}	
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %Temp12%
{
	Send Temperatuur controlelijst, december 2015
	Send {tab}A4{tab}{space}{tab 2}
	send {home}{tab}12{tab 2}{end}{tab}12{tab 3}	
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %Spoellijst%
{
	Send Spoellijst t.b.v. Legionellapreventie, week{space}
	Send {shiftdown}{tab 2}{shiftup}{end}{shiftdown}{left 2}{shiftup}{ctrldown}c{ctrlup}{tab 2}{end}{ctrldown}v{ctrlup}{tab}A4{tab}{space}{tab 2}
		IfInString, clipboart, %Week01% 
		{
			send 29{tab}12{tab}2014{tab}{home}2{tab}{home}{tab}2015{tab 2}
		}
		IfInString, clipboart, %Week02% 
		{
			send 5{tab}{home}{tab}2015{tab}{home}9{tab}{home}{tab}2015{tab 2}
		}
		IfInString, clipboart, %Week03% 
		{
			send 12{tab}{home}{tab}2015{tab}16{tab}{home}{tab}2015{tab 2}
		}
		IfInString, clipboart, %Week04% 
		{
			send 19{tab}{home}{tab}2015{tab}23{tab}{home}{tab}2015{tab 2}
		}
		IfInString, clipboart, %Week05% 
		{
			send 26{tab}{home}{tab}2015{tab}30{tab}{home}{tab}2015{tab 2}
		}
		IfInString, clipboart, %Week06% 
		{
			send {home}2{tab}02{tab}2015{tab}6{tab}02{tab}2015{tab 2}
		}
		IfInString, clipboart, %Week07% 
		{
			send 9{tab}02{tab}2015{tab}13{tab}02{tab}2015{tab 2}
		}
		IfInString, clipboart, %Week08% 
		{
			send 16{tab}02{tab}2015{tab}20{tab}02{tab}2015{tab 2}
		}
		IfInString, clipboart, %Week09% 
		{
			send 23{tab}02{tab}2015{tab}26{tab}02{tab}2015{tab 2}
		}
		IfInString, clipboart, %Week10% 
		{
			send {home}2{tab}03{tab}2015{tab}{home}6{tab}03{tab}2015{tab 2}
		}
		IfInString, clipboart, %Week11% 
		{
			send 9{tab}03{tab}2015{tab}13{tab}03{tab}2015{tab 2}
		}
		IfInString, clipboart, %Week12% 
		{
			send 16{tab}03{tab}2015{tab}{home}20{tab}03{tab}2015{tab 2}
		}
		IfInString, clipboart, %Week13% 
		{
			send 23{tab}03{tab}2015{tab}27{tab}03{tab}2015{tab 2}
		}
		IfInString, clipboart, %Week14% 
		{
			send 30{tab}03{tab}2015{tab}{home}3{tab}04{tab}2015{tab 2}
		}
		IfInString, clipboart, %Week15% 
		{
			send 6{tab}04{tab}2015{tab}{home}10{tab}04{tab}2015{tab 2}
		}
		IfInString, clipboart, %Week16% 
		{
			send 13{tab}04{tab}2015{tab}17{tab}04{tab}2015{tab 2}
		}
		IfInString, clipboart, %Week17% 
		{
			send 20{tab}04{tab}2015{tab}24{tab}04{tab}2015{tab 2}
		}
		IfInString, clipboart, %Week18% 
		{
			send 27{tab}04{tab}2015{tab}{home}{tab}05{tab}2015{tab 2}
		}
		IfInString, clipboart, %Week19% 
		{
			send 4{tab}05{tab}2015{tab}8{tab}05{tab}2015{tab 2}
		}
		IfInString, clipboart, %Week20% 
		{
			send 11{tab}05{tab}2015{tab}15{tab}05{tab}2015{tab 2}
		}
		IfInString, clipboart, %Week21% 
		{
			send 18{tab}05{tab}2015{tab}{home}22{tab}05{tab}2015{tab 2}
		}
		IfInString, clipboart, %Week22% 
		{
			send 25{tab}05{tab}2015{tab}29{tab}05{tab}2015{tab 2}
		}
		IfInString, clipboart, %Week23% 
		{
			send {home}{tab}06{tab}2015{tab}5{tab}06{tab}2015{tab 2}
		}
		IfInString, clipboart, %Week24% 
		{
			send 8{tab}06{tab}2015{tab}12{tab}06{tab}2015{tab 2}
		}
		IfInString, clipboart, %Week25% 
		{
			send 15{tab}06{tab}2015{tab}{home}19{tab}06{tab}2015{tab 2}
		}
		IfInString, clipboart, %Week26% 
		{
			send {home}22{tab}06{tab}2015{tab}26{tab}06{tab}2015{tab 2}
		}
		IfInString, clipboart, %Week27% 
		{
			send 29{tab}06{tab}2015{tab}{home}3{tab}07{tab}2015{tab 2}
		}
		IfInString, clipboart, %Week28% 
		{
			send 6{tab}07{tab}2015{tab}{home}10{tab}07{tab}2015{tab 2}
		}
		IfInString, clipboart, %Week29% 
		{
			send 13{tab}07{tab}2015{tab}17{tab}07{tab}2015{tab 2}
		}
		IfInString, clipboart, %Week30% 
		{
			send {home}20{tab}07{tab}2015{tab}24{tab}07{tab}2015{tab 2}
		}
		IfInString, clipboart, %Week31% 
		{
			send 27{tab}07{tab}2015{tab}31{tab}08{tab}2015{tab 2}
		}
		IfInString, clipboart, %Week32% 
		{
			send 3{tab}08{tab}2015{tab}7{tab}08{tab}2015{tab 2}
		}
		IfInString, clipboart, %Week33% 
		{
			send {home}10{tab}08{tab}2015{tab}14{tab}08{tab}2015{tab 2}
		}
		IfInString, clipboart, %Week34% 
		{
			send 17{tab}08{tab}2015{tab}{home}21{tab}08{tab}2015{tab 2}
		}
		IfInString, clipboart, %Week35% 
		{
			send 24{tab}08{tab}2015{tab}28{tab}08{tab}2015{tab 2}
		}
		IfInString, clipboart, %Week36% 
		{
			send 31{tab}09{tab}2015{tab}4{tab}09{tab}2015{tab 2}
		}
		IfInString, clipboart, %Week37% 
		{
			send 7{tab}09{tab}2015{tab}{home}11{tab}09{tab}2015{tab 2}
		}
		IfInString, clipboart, %Week38% 
		{
			send 14{tab}09{tab}2015{tab}18{tab}09{tab}2015{tab 2}
		}
		IfInString, clipboart, %Week39% 
		{
			send {home}21{tab}09{tab}2015{tab}25{tab}09{tab}2015{tab 2}
		}
		IfInString, clipboart, %Week40% 
		{
			send 28{tab}09{tab}2015{tab}{home}2{tab}10{tab}2015{tab 2}
		}
		IfInString, clipboart, %Week41% 
		{
			send 5{tab}10{tab}2015{tab}{home}9{tab}10{tab}2015{tab 2}
		}
		IfInString, clipboart, %Week42% 
		{
			send {home}12{tab}10{tab}2015{tab}16{tab}10{tab}2015{tab 2}
		}
		IfInString, clipboart, %Week43% 
		{
			send 19{tab}10{tab}2015{tab}23{tab}10{tab}2015{tab 2}
		}
		IfInString, clipboart, %Week44% 
		{
			send 26{tab}10{tab}2015{tab}30{tab}10{tab}2015{tab 2}
		}
		IfInString, clipboart, %Week45% 
		{
			send {home}2{tab}11{tab}2015{tab}6{tab}11{tab}2015{tab 2}
		}
		IfInString, clipboart, %Week46% 
		{
			send {home}9{tab}11{tab}2015{tab}13{tab}11{tab}2015{tab 2}
		}
		IfInString, clipboart, %Week47% 
		{
			send 16{tab}11{tab}2015{tab}{home}20{tab}11{tab}2015{tab 2}
		}
		IfInString, clipboart, %Week48% 
		{
			send 23{tab}11{tab}2015{tab}27{tab}11{tab}2015{tab 2}
		}
		IfInString, clipboart, %Week49% 
		{
			send 30{tab}12{tab}2015{tab}4{tab}12{tab}2015{tab 2}
		}
		IfInString, clipboart, %Week50% 
		{
			send 7{tab}12{tab}2015{tab}{home}11{tab}12{tab}2015{tab 2}
		}
		IfInString, clipboart, %Week51% 
		{
			send 14{tab}12{tab}2015{tab}18{tab}12{tab}2015{tab 2}
		}
		IfInString, clipboart, %Week52% 
		{
			send {home}21{tab}12{tab}2015{tab}25{tab}12{tab}2015{tab 2}
		}
		IfInString, clipboart, %Week53% 
		{
			send 28{tab}12{tab}2015{tab}{home}{tab}01{tab}2016{tab 2}
		}
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
IfInString, clipboart, %Meterstanden01%
{
	Send Meterstanden, januari 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab}2015{tab}{end}{tab}01{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %Meterstanden02%
{
	Send Meterstanden, februari 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab}2015{tab}28{tab}02{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %Meterstanden03%
{
	Send Meterstanden, maart 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab}2015{tab}{end}{tab}03{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %Meterstanden04%
{
	Send Meterstanden, april 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab}2015{tab}30{tab}04{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %Meterstanden05%
{
	Send Meterstanden, mei 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab}2015{tab}{end}{tab}05{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %Meterstanden06%
{
	Send Meterstanden, juni 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab}2015{tab}30{tab}06{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %Meterstanden07%
{
	Send Meterstanden, juli 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab}2015{tab}{end}{tab}07{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %Meterstanden08%
{
	Send Meterstanden, augustus 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab}2015{tab}{end}{tab}08{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %Meterstanden09%
{
	Send Meterstanden, september 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab}2015{tab}30{tab}09{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %Meterstanden10%
{
	Send Meterstanden, oktober 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab}2015{tab}{end}{tab}10{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %Meterstanden11%
{
	Send Meterstanden, november 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab}2015{tab}30{tab}11{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %Meterstanden12%
{
	Send Meterstanden, december 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}{end}{tab}2015{tab}{end}{tab}{end}{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %TotaaloverzichtJan%
{
	Send Totaaloverzicht energie, januari 2015
	Send {tab}A2{tab}{space}{tab 2}{home}{tab}01{tab}2015{tab}{end}{tab}01{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %TotaaloverzichtFeb%
{
	Send Totaaloverzicht energie, februari 2015
	Send {tab}A2{tab}{space}{tab 2}{home}{tab}02{tab}2015{tab}28{tab}02{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %TotaaloverzichtMrt%
{
	Send Totaaloverzicht energie, maart 2015
	Send {tab}A2{tab}{space}{tab 2}{home}{tab}03{tab}2015{tab}{end}{tab}03{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %TotaaloverzichtApr%
{
	Send Totaaloverzicht energie, april 2015
	Send {tab}A2{tab}{space}{tab 2}{home}{tab}04{tab}2015{tab}30{tab}04{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %TotaaloverzichtMei%
{
	Send Totaaloverzicht energie, mei 2015
	Send {tab}A2{tab}{space}{tab 2}{home}{tab}05{tab}2015{tab}{end}{tab}05{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %TotaaloverzichtJun%
{
	Send Totaaloverzicht energie, juni 2015
	Send {tab}A2{tab}{space}{tab 2}{home}{tab}06{tab}2015{tab}30{tab}06{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %TotaaloverzichtJul%
{
	Send Totaaloverzicht energie, juli 2015
	Send {tab}A2{tab}{space}{tab 2}{home}{tab}07{tab}2015{tab}{end}{tab}07{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %TotaaloverzichtAug%
{
	Send Totaaloverzicht energie, augustus 2015
	Send {tab}A2{tab}{space}{tab 2}{home}{tab}08{tab}2015{tab}{end}{tab}08{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %TotaaloverzichtSep%
{
	Send Totaaloverzicht energie, september 2015
	Send {tab}A2{tab}{space}{tab 2}{home}{tab}09{tab}2015{tab}30{tab}09{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %TotaaloverzichtOkt%
{
	Send Totaaloverzicht energie, oktober 2015
	Send {tab}A2{tab}{space}{tab 2}{home}{tab}10{tab}2015{tab}{end}{tab}{home}10{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %TotaaloverzichtNov%
{
	Send Totaaloverzicht energie, november 2015
	Send {tab}A2{tab}{space}{tab 2}{home}{tab}11{tab}2015{tab}30{tab}{home}11{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %TotaaloverzichtDec%
{
	Send Totaaloverzicht energie, december 2015
	Send {tab}A2{tab}{space}{tab 2}{home}{tab}12{tab}2015{tab}{end}{tab}{home}12{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
/*
;───────────────────────────────────────────────────────────────────────────────; 
Energiedocumenten -- Energiekosten
;───────────────────────────────────────────────────────────────────────────────; 
*/

IfnotInString, clipboart, %ADG%
{
	goto GLT
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Adegeest, januari 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}{end}{tab}01{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Adegeest, februari 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Adegeest, maart 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Adegeest, april 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Adegeest, mei 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Adegeest, juni 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Adegeest, juli 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Adegeest, augustus 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Adegeest, september 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Adegeest, oktober 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Adegeest, november 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Adegeest, december 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2015{tab 2}
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
	Send Energiekosten overzicht GLT, januari 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht GLT, februari 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht GLT, maart 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht GLT, april 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht GLT, mei 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht GLT, juni 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht GLT, juli 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht GLT, augustus 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht GLT, september 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht GLT, oktober 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht GLT, november 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht GLT, december 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2015{tab 2}
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
	Send Energiekosten overzicht Duinstede, januari 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Duinstede, februari 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Duinstede, maart 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Duinstede, april 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Duinstede, mei 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Duinstede, juni 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Duinstede, juli 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Duinstede, augustus 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Duinstede, september 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Duinstede, oktober 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Duinstede, november 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Duinstede, december 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2015{tab 2}
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
	Send Energiekosten overzicht Dekkersduin, januari 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Dekkersduin, februari 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Dekkersduin, maart 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Dekkersduin, april 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Dekkersduin, mei 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Dekkersduin, juni 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Dekkersduin, juli 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Dekkersduin, augustus 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Dekkersduin, september 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Dekkersduin, oktober 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Dekkersduin, november 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Dekkersduin, december 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2015{tab 2}
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
	Send Energiekosten overzicht De Mantel, januari 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht De Mantel, februari 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht De Mantel, maart 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht De Mantel, april 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht De Mantel, mei 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht De Mantel, juni 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht De Mantel, juli 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht De Mantel, augustus 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht De Mantel, september 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht De Mantel, oktober 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht De Mantel, november 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht De Mantel, december 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2015{tab 2}
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
	Send Energiekosten overzicht Guldenhuis, januari 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Guldenhuis, februari 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Guldenhuis, maart 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Guldenhuis, april 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Guldenhuis, mei 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Guldenhuis, juni 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Guldenhuis, juli 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Guldenhuis, augustus 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Guldenhuis, september 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Guldenhuis, oktober 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Guldenhuis, november 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Guldenhuis, december 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2015{tab 2}
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
	Send Energiekosten overzicht Houthaghe, januari 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}{end}{tab}01{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Houthaghe, februari 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Houthaghe, maart 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Houthaghe, april 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Houthaghe, mei 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Houthaghe, juni 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Houthaghe, juli 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Houthaghe, augustus 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Houthaghe, september 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Houthaghe, oktober 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Houthaghe, november 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Houthaghe, december 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2015{tab 2}
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
	Send Energiekosten overzicht Jonker Frans, januari 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2015{tab 2}
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Jonker Frans, februari 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Jonker Frans, maart 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Jonker Frans, april 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Jonker Frans, mei 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Jonker Frans, juni 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Jonker Frans, juli 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Jonker Frans, augustus 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Jonker Frans, september 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Jonker Frans, oktober 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Jonker Frans, november 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Jonker Frans, december 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2015{tab 2}
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
	Send Energiekosten overzicht Loevestein, januari 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2015{tab 2}
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Loevestein, februari 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Loevestein, maart 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Loevestein, april 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Loevestein, mei 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Loevestein, juni 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Loevestein, juli 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Loevestein, augustus 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Loevestein, september 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Loevestein, oktober 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Loevestein, november 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Loevestein, december 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2015{tab 2}
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
	Send Energiekosten overzicht Loosduinse Hof, januari 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Loosduinse Hof, februari 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Loosduinse Hof, maart 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Loosduinse Hof, april 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Loosduinse Hof, mei 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Loosduinse Hof, juni 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Loosduinse Hof, juli 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Loosduinse Hof, augustus 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Loosduinse Hof, september 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Loosduinse Hof, oktober 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Loosduinse Hof, november 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Loosduinse Hof, december 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2015{tab 2}
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
	Send Energiekosten overzicht Laan van Vredenoord, januari 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Laan van Vredenoord, februari 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Laan van Vredenoord, maart 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Laan van Vredenoord, april 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Laan van Vredenoord, mei 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Laan van Vredenoord, juni 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Laan van Vredenoord, juli 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Laan van Vredenoord, augustus 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Laan van Vredenoord, september 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Laan van Vredenoord, oktober 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Laan van Vredenoord, november 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Laan van Vredenoord, december 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2015{tab 2}
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
	Send Energiekosten overzicht Mariahoeve, januari 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2015{tab 2}
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Mariahoeve, februari 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Mariahoeve, maart 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Mariahoeve, april 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Mariahoeve, mei 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Mariahoeve, juni 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Mariahoeve, juli 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Mariahoeve, augustus 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Mariahoeve, september 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Mariahoeve, oktober 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Mariahoeve, november 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Mariahoeve, december 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2015{tab 2}
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
	Send Energiekosten overzicht Marterrade, januari 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Marterrade, februari 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Marterrade, maart 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Marterrade, april 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Marterrade, mei 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Marterrade, juni 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Marterrade, juli 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Marterrade, augustus 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Marterrade, september 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Marterrade, oktober 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Marterrade, november 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Marterrade, december 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2015{tab 2}
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
	Send Energiekosten overzicht Oostduin, januari 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Oostduin, februari 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Oostduin, maart 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Oostduin, april 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Oostduin, mei 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Oostduin, juni 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Oostduin, juli 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Oostduin, augustus 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Oostduin, september 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Oostduin, oktober 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Oostduin, november 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Oostduin, december 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2015{tab 2}
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
	Send Energiekosten overzicht Schakelpunt, januari 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Schakelpunt, februari 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Schakelpunt, maart 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Schakelpunt, april 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Schakelpunt, mei 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Schakelpunt, juni 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Schakelpunt, juli 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Schakelpunt, augustus 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Schakelpunt, september 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Schakelpunt, oktober 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Schakelpunt, november 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Schakelpunt, december 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2015{tab 2}
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
	Send Energiekosten overzicht Steenvoorde, januari 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Steenvoorde, februari 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Steenvoorde, maart 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Steenvoorde, april 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Steenvoorde, mei 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Steenvoorde, juni 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Steenvoorde, juli 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Steenvoorde, augustus 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Steenvoorde, september 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Steenvoorde, oktober 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Steenvoorde, november 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Steenvoorde, december 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
STVWKK:
IfInString, clipboart, %WKKJAN%
{
	Send Overzicht functioneren en milieuvoordeel warmtekrachtinstallatie, januari 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %WKKFEB%
{
	Send Overzicht functioneren en milieuvoordeel warmtekrachtinstallatie, februari 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %WKKMRT%
{
	Send Overzicht functioneren en milieuvoordeel warmtekrachtinstallatie, maart 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %WKKAPR%
{
	Send Overzicht functioneren en milieuvoordeel warmtekrachtinstallatie, april 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %WKKMEI%
{
	Send Overzicht functioneren en milieuvoordeel warmtekrachtinstallatie, mei 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %WKKJUN%
{
	Send Overzicht functioneren en milieuvoordeel warmtekrachtinstallatie, juni 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %WKKJUL%
{
	Send Overzicht functioneren en milieuvoordeel warmtekrachtinstallatie, juli 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %WKKAUG%
{
	Send Overzicht functioneren en milieuvoordeel warmtekrachtinstallatie, augustus 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %WKKSEP%
{
	Send Overzicht functioneren en milieuvoordeel warmtekrachtinstallatie, september 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %WKKOKT%
{
	Send Overzicht functioneren en milieuvoordeel warmtekrachtinstallatie, oktober 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %WKKNOV%
{
	Send Overzicht functioneren en milieuvoordeel warmtekrachtinstallatie, november 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %WKKDEC%
{
	Send Overzicht functioneren en milieuvoordeel warmtekrachtinstallatie, 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2015{tab 2}
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
	Send Energiekosten overzicht Vinckenborglaan, januari 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Vinckenborglaan, februari 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Vinckenborglaan, maart 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Vinckenborglaan, april 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Vinckenborglaan, mei 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Vinckenborglaan, juni 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Vinckenborglaan, juli 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Vinckenborglaan, augustus 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Vinckenborglaan, september 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Vinckenborglaan, oktober 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Vinckenborglaan, november 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Vinckenborglaan, december 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2015{tab 2}
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
	Send Energiekosten overzicht Vredenburch, januari 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Vredenburch, februari 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Vredenburch, maart 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Vredenburch, april 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Vredenburch, mei 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Vredenburch, juni 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Vredenburch, juli 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Vredenburch, augustus 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Vredenburch, september 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Vredenburch, oktober 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Vredenburch, november 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Vredenburch, december 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2015{tab 2}
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
	Send Energiekosten overzicht Wenckenbach, januari 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Wenckenbach, februari 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Wenckenbach, maart 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Wenckenbach, april 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Wenckenbach, mei 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Wenckenbach, juni 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Wenckenbach, juli 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Wenckenbach, augustus 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Wenckenbach, september 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Wenckenbach, oktober 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Wenckenbach, november 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Wenckenbach, december 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2015{tab 2}
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
	Send Energiekosten overzicht Westhoff, januari 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Westhoff, februari 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Westhoff, maart 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Westhoff, april 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Westhoff, mei 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Westhoff, juni 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Westhoff, juli 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Westhoff, augustus 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Westhoff, september 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Westhoff, oktober 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Westhoff, november 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Westhoff, december 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2015{tab 2}
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
	Send Energiekosten overzicht Willem de Bijelaan, januari 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Willem de Bijelaan, februari 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Willem de Bijelaan, maart 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Willem de Bijelaan, april 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Willem de Bijelaan, mei 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Willem de Bijelaan, juni 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Willem de Bijelaan, juli 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Willem de Bijelaan, augustus 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Willem de Bijelaan, september 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Willem de Bijelaan, oktober 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Willem de Bijelaan, november 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Willem de Bijelaan, december 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
UTZ:
IfNotInString, clipboart, %UTZ%
{
	goto ODB
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Uitzicht, januari 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Uitzicht, februari 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Uitzicht, maart 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Uitzicht, april 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Uitzicht, mei 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Uitzicht, juni 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Uitzicht, juli 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Uitzicht, augustus 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Uitzicht, september 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Uitzicht, oktober 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Uitzicht, november 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Uitzicht, december 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2015{tab 2}
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
	Send Energiekosten overzicht Over de Boogaard, januari 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Over de Boogaard, februari 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Over de Boogaard, maart 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Over de Boogaard, april 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Over de Boogaard, mei 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Over de Boogaard, juni 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Over de Boogaard, juli 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Over de Boogaard, augustus 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Over de Boogaard, september 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Over de Boogaard, oktober 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Over de Boogaard, november 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Over de Boogaard, december 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
HHS:
IfNotInString, clipboart, %HHS%
{
		goto LRS
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht 't Hoflants Huys, januari 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht 't Hoflants Huys, februari 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht 't Hoflants Huys, maart 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht 't Hoflants Huys, april 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht 't Hoflants Huys, mei 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht 't Hoflants Huys, juni 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht 't Hoflants Huys, juli 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht 't Hoflants Huys, augustus 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht 't Hoflants Huys, september 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht 't Hoflants Huys, oktober 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht 't Hoflants Huys, november 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht 't Hoflants Huys, december 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %Energiekosten2015%
{
	Send Energiekosten overzicht + verbruik, 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab}2015{tab}31{tab}12{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
LRS:
IfNotInString, clipboart, %LRS%
{
	goto Skiped
}
IfInString, clipboart, %EnergiekostenJAN%
{
	Send Energiekosten overzicht Laurens Reaalstraat, januari 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}01{tab 2}31{tab}01{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenFEB%
{
	Send Energiekosten overzicht Laurens Reaalstraat, februari 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}02{tab 2}28{tab}02{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMRT%
{
	Send Energiekosten overzicht Laurens Reaalstraat, maart 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}03{tab 2}31{tab}03{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAPR%
{
	Send Energiekosten overzicht Laurens Reaalstraat, april 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}04{tab 2}30{tab}04{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenMEI%
{
	Send Energiekosten overzicht Laurens Reaalstraat, mei 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}05{tab 2}31{tab}05{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUN%
{
	Send Energiekosten overzicht Laurens Reaalstraat, juni 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}06{tab 2}30{tab}06{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenJUL%
{
	Send Energiekosten overzicht Laurens Reaalstraat, juli 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}07{tab 2}31{tab}07{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenAUG%
{
	Send Energiekosten overzicht Laurens Reaalstraat, augustus 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}08{tab 2}31{tab}08{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenSEP%
{
	Send Energiekosten overzicht Laurens Reaalstraat, september 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}09{tab 2}30{tab}09{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenOKT%
{
	Send Energiekosten overzicht Laurens Reaalstraat, oktober 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}10{tab 2}31{tab}10{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenNOV%
{
	Send Energiekosten overzicht Laurens Reaalstraat, november 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}11{tab 2}30{tab}11{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %EnergiekostenDEC%
{
	Send Energiekosten overzicht Laurens Reaalstraat, december 2015
	Send {tab}A4{tab}{space}{tab 2}{home}{tab}12{tab 2}31{tab}12{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
kwart = Kwartaal
IfInString, clipboart, %kwart%
{
IfInString, clipboart, %1ekwart%
{
	Send Overzicht kosten en verbruik energie, 1e kwartaal 2015
	Send {tab}A3{tab}{space}{tab 2}{home}{tab}{home}{tab}2015{tab}{end}{tab}03{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %2ekwart%
{
	Send Overzicht kosten en verbruik energie, 2e kwartaal 2015
	Send {tab}A3{tab}{space}{tab 2}{home}{tab}04{tab}2015{tab}30{tab}06{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %4ekwart%
{
	Send Overzicht kosten en verbruik energie, 4e kwartaal 2015
	Send {tab}A3{tab}{space}{tab 2}{home}{tab}10{tab}2015{tab}{end}{tab}12{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
IfInString, clipboart, %3ekwart%
{
	Send Overzicht kosten en verbruik energie, 3e kwartaal 2015
	Send {tab}A3{tab}{space}{tab 2}{home}{tab}07{tab}2015{tab}30{tab}09{tab}2015{tab 2}
	clipboard = %clipboardold%
	Return
}
}
IfInString, clipboart, %L1%
{
	Send Werktuigbouwkundige installatie t.b.v. Legionellapreventie, plattegrond 
	clipboard = %clipboardold%
	Return
}
Skiped:
{
	MsgBox, 262192, *error*, Geen geldige invoer ontvangen!`nGegeven invoer: %clipboart%
	clipboard = %clipboardold%
	Return
}
Return
MsgBox, 16, *error*, Einde van script bereikt! `nDat klopt niet!
reload
checkdatum:
return 