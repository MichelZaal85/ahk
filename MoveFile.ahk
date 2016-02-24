#Persistent
#SingleInstance force
#NoEnv

^.::
	reload
	return
^/::
	clipboard = Oldclip
	clipboard = 
	send {f2}
	send {ctrldown}ac{ctrlup}
	send {esc}
	varC = %clipboard%
	varone := SubStr(varC, 1, 3)
	vartwo := SubStr(varC, 5, 4)
	rnd = rnd
	ifinstring, varone, %rnd%
	{
		varthree := SubStr(varC, 7, 10)
		goto checkvar
	}
	varthree := SubStr(varC, 8, 15)
checkvar:
	FLO = FLO
	DPC = DPC
	RND = RND
	VOH = VOH
	IfInString, varone, %FLO%
	{
		var1 = K:\Tekeningenbeheer\FLO\
		goto gebouwcodeflo
		Return
	}
	IfInString, varone, %DPC%
	{
		var1 = K:\Tekeningenbeheer\DPC\
		goto gebouwcodedpc
		Return
	}
	IfInString, varone, %RND%
	{
		var1 = K:\Tekeningenbeheer\RND\
		gosub gebouwcodernd
		Return
	}
	IfInString, varone, %VOH%
	{
		var1 = K:\Tekeningenbeheer\VOH\
		gosub gebouwcodevoh
		Return
	} 
	Else { 
		MsgBox, 262192, *error*, Geen geldige opdrachtgever gevonden... :(
		reload
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

	IfInString, vartwo, %ADG%
	{
		var2 = Adegeest (ADG)\
		goto discipline
		Return
	}
	IfInString, vartwo, %CMMS%
	{
		var2 = CMMS\
		goto discipline
		Return
	}
	IfInString, vartwo, %MTL%
	{
		var2 = De Mantel (MTL)\
		goto discipline
		Return
	}
	IfInString, vartwo, %DKD%
	{
		var2 = Dekkersduin (DKD)\
		goto discipline
		Return
	}
	IfInString, vartwo, %DST%
	{
		var2 = Duinstede (DST)\
		goto discipline
		Return
	}
	IfInString, vartwo, %GBK%
	{
		var2 = Geestbrugkade (GBK) Tijdelijk\
		goto discipline
		Return
	}
	IfInString, vartwo, %GHS%
	{
		var2 = Guldenhuis (GHS)\
		goto discipline
		Return
	}
	IfInString, vartwo, %HHG%
	{
		var2 = Houthaghe (HHG)\
		goto discipline
		Return
	}
	IfInString, vartwo, %JFR%
	{
		var2 = Jonker Frans (JFR)\
		goto discipline
		Return
	}
	IfInString, vartwo, %LVV%
	{
		var2 = Laan van Vredenoord (LVV)\
		goto discipline
		Return
	}
	IfInString, vartwo, %LRS%
	{
		var2 = Laurens Reaelstraat (LRS)\
		goto discipline
		Return
	}
	IfInString, vartwo, %LVS%
	{
		var2 = Loevestein (LVS)\
		goto discipline
		Return
	}
	IfInString, vartwo, %LHF%
	{
		var2 = Loosduinse Hof (LHF)\
		goto discipline
		Return
	}
	IfInString, vartwo, %MHV%
	{
		var2 = Mariahoeve (MHV)\
		goto discipline
		Return
	}
	IfInString, vartwo, %MRR%
	{
		var2 = Marterade (MRR)\
		goto discipline
		Return
	}
	IfInString, vartwo, %OSN%
	{
		var2 = Oostduin (OSN)\
		goto discipline
		Return
	}
	IfInString, vartwo, %ODB%
	{
		var2 = Over de Boogaard (ODB)\
		goto discipline
		Return
	}
	IfInString, vartwo, %SPT%
	{
		var2 = Schakelpunt (SPT)\
		goto discipline
		Return
	}
	IfInString, vartwo, %STV%
	{
		var2 = Steenvoorde (STV)\
		goto discipline
		Return
	}
	IfInString, vartwo, %HHS%
	{
		var2 = 't Hoflants Huys (HHS)\
		goto discipline
		Return
	}
	IfInString, vartwo, %VBL%
	{
		var2 = Vinckenborghlaan (VBL)\
		goto discipline
		Return
	}
	IfInString, vartwo, %VBH%
	{
		var2 = Vredenburch (VBH)\
		goto discipline
		Return
	}
	IfInString, vartwo, %WKB%
	{
		var2 = Wenckenbach (WKB)\
		goto discipline
		Return
	}
	IfInString, vartwo, %WHF%
	{
		var2 = Westhoff (WHF)\
		goto discipline
		Return
	}
	IfInString, vartwo, %WBL%
	{
		var2 = Willem de Bijelaan (WBL)
		goto discipline
		Return
	}
	IfInString, vartwo, %UTZ%
	{
		var2 = Uitzicht (UTZ)\
		goto discipline
		Return
	} else 
	{
		MsgBox, 262192, *error*, Geen geldige locatie gevonden
		reload
	}
	Return
gebouwcodedpc:
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
	53 = 53
	541 = 54-1
	542 = 54-2
	56 = 56
	79 = 79
	xx = xx
	IfInString, vartwo, %01%
	{
		var2 = Poortugaal\01 Ditog\
		goto discipline
		Return
	}
	IfInString, vartwo, %02%
	{
		var2 = Poortugaal\02 Grienden\
		goto discipline
		Return
	}
	IfInString, vartwo, %03%
	{
		var2 = Poortugaal\03 Kantoor\
		goto discipline
		Return
	}
	IfInString, vartwo, %04%
	{
		var2 = Poortugaal\04 Welhoek\
		goto discipline
		Return
	}
	IfInString, vartwo, %06%
	{
		var2 = Poortugaal\06 Centraal Magazijn\
		goto discipline
		Return
	}
	IfInString, vartwo, %07%
	{
		var2 = Poortugaal\07 Jip & Janneke Wasserij\
		goto discipline
		Return
	}
	IfInString, vartwo, %08%
	{
		var2 = Poortugaal\08 Jip & Janneke KDV\
		goto discipline
		Return
	}
	IfInString, vartwo, %09%
	{
		var2 = Poortugaal\09 BSO\
		goto discipline
		Return
	}
	IfInString, vartwo, %10%
	{
		var2 = Poortugaal\10 Albeda College\
		goto discipline
		Return
	}
	IfInString, vartwo, %12%
	{
		var2 = Poortugaal\12 Sportcentrum\
		goto discipline
		Return
	}
	IfInString, vartwo, %13%
	{
		var2 = Poortugaal\13 Keuken\
		goto discipline
		Return
	}
	IfInString, vartwo, %14%
	{
		var2 = Poortugaal\14 Technisch Onderhoud en Apotheek\
		goto discipline
		Return
	}
	IfInString, vartwo, %15%
	{
		var2 = Poortugaal\15 Medisch Centrum\
		goto discipline
		Return
	}
	IfInString, vartwo, %16%
	{
		var2 = Poortugaal\16 Technisch Onderhoud\
		goto discipline
		Return
	}
	IfInString, vartwo, %17%
	{
		var2 = Poortugaal\17 Restaurant\
		goto discipline
		Return
	}
	IfInString, vartwo, %18%
	{
		var2 = Poortugaal\18 WAC\
		goto discipline
		Return
	}
	IfInString, vartwo, %19%
	{
		var2 = Poortugaal\19 Loodds Dorpsblik\
		goto discipline
		Return
	}
	IfInString, vartwo, %21%
	{
		var2 = Poortugaal\21 Plein\
		goto discipline
		Return
	}
	IfInString, vartwo, %22%
	{
		var2 = Poortugaal\22 Aanloop\
		goto discipline
		Return
	}
	IfInString, vartwo, %23%
	{
		var2 = Poortugaal\23 Brink\
		goto discipline
		Return
	}
	IfInString, vartwo, %24%
	{
		var2 = Poortugaal\24.1 Trainingshuizen\
		goto discipline
		Return
	}
	IfInString, vartwo, %241%
	{
		var2 = Poortugaal\24.1 Trainingshuizen\
		goto discipline
		Return
	}
	IfInString, vartwo, %242%
	{
		var2 = Poortugaal\24.2 Trainingshuizen\
		goto discipline
		Return
	}
	IfInString, vartwo, %25%
	{
		var2 = Poortugaal\25 Bungalows iepenlaan\
		goto discipline
		Return
	}
	IfInString, vartwo, %26%
	{
		var2 = Poortugaal\26 Bungalows Eikenlaan\
		goto discipline
		Return
	}
	IfInString, vartwo, %27%
	{
		var2 = Poortugaal\27 Bungalows Beukenlaan\Veiligheid\
		goto discipline
		Return
	}
	IfInString, vartwo, %28%
	{
		var2 = Poortugaal\28 Blaak\
		goto discipline
		Return
	}
	IfInString, vartwo, %32%
	{
		var2 = Poortugaal\32 Nieuwehaven\
		goto discipline
		Return
	}
	IfInString, vartwo, %33%
	{
		var2 = Poortugaal\33 Nieuwehave Porto's en Loodds 3\
		goto discipline
		Return
	}
	IfInString, vartwo, %34%
	{
		var2 = Poortugaal\34 Ouwehaven\
		goto discipline
		Return
	}
	IfInString, vartwo, %38%
	{
		var2 = Poortugaal\38 Albrandswaardsedijk 122\
		goto discipline
		Return
	}
	IfInString, vartwo, %37%
	{
		var2 = Poortugaal\37 Albrandswaardsedijk 120\
		goto discipline
		Return
	}
	IfInString, vartwo, %39%
	{
		var2 = Poortugaal\39 Albrandswaardsedijk 76\
		goto discipline
		Return
	}
	IfInString, vartwo, %40%
	{
		var2 = Poortugaal\40 Albrandswaardsedijk 102\
		goto discipline
		Return
	}
	IfInString, vartwo, %48%
	{
		var2 = Poortugaal\48 ICT Server\
		goto discipline
		Return
	}
	IfInString, vartwo, %50%
	{
		var2 = Rotterdam\50 MFC-Rotterdam-zuid\
		goto discipline
		Return
	}
	IfInString, vartwo, %51%
	{
		var2 = Rotterdam\51 Brug\
		goto discipline
		Return
	}
	IfInString, vartwo , %541%
	{
		MsgBox, 262192, *error*, "Locatie werkt op dit moment nog niet!"
		Return
		var2 = Spijkenisse\54-1 MFC-spijkenisse (CGB)\
		goto discipline
		Return
	}
	IfInString, vartwo , %542%
	{
		MsgBox, 262192, *error*, "Locatie werkt op dit moment nog niet!"
		Return
		var2 = Spijkenisse\54-2 MFC-spijkenisse (CGB)\
		goto discipline
		Return
	}
	IfInString, vartwo, %56%
	{
		var2 = Rotterdam\56 BW Lombardijen\
		goto discipline
		Return
	}
	IfInString, vartwo, %79%
	{
		var2 = Rotterdam\79 Medimall\
		goto discipline
		Return
	}
	IfInString, vartwo, %xx%
	{
		var2 = Poortugaal\xx Maasveld\
		goto discipline
		Return
	}
	else {
		MsgBox, 262192, *error*, "geen locatie gevonden!"
		reload
	}
gebouwcodernd:
	AS = AS
	BN = BN
	KL = KL
	RD = RD
	RL = RL
	VL = VL
	WS = WS
	IfInString, vartwo, %AS%
	{
		var2 = Albert Schweitzerplaats (AS)\
		goto discipline
		Return
	}
	IfInString, vartwo, %BN%
	{
		var2 = Banneweg (BN)\
		goto discipline
		Return
	}
	IfInString, vartwo, %KL%
	{
		var2 = Kleiweg (KL)\
		goto discipline
		Return
	}
	IfInString, vartwo, %RD%
	{
		var2 = Ringdijk (RD)\
		goto discipline
		Return
	}
	IfInString, vartwo, %RL%
	{
		var2 = Roerdomplaan (RL)\
		goto discipline
		Return
	}
	IfInString, vartwo, %VL%
	{
		var2 = Vlietlandplein (VL)\
		goto discipline
		Return
	}
	IfInString, vartwo, %WS%
	{
		var2 = Westersingel (WS)\
		goto discipline
		Return
	}
	else {
	MsgBox, 262192, *error*, Geen locatie gevonden... :( Probeer opnieuw. 
	reload
	}
gebouwcodevoh:
	001 = 001
	002 = 002
	003 = 003
	011 = 011
	013 = 013
	014 = 014
	021 = 021
	023 = 023
	024 = 024
	031 = 031
	032 = 032
	051 = 051
	052 = 052
	062 = 062
	063 = 063
	064 = 064
	065 = 065
	066 = 066
	067 = 067
	068 = 068
	069 = 069
	071 = 071
	072 = 072
	081 = 081
	082 = 082
	083 = 083
	084 = 084
	112 = 112
	113 = 113
	115 = 115
	116 = 116
	117 = 117
	119 = 119
	;--------------------------;
	IfInString, vartwo, %001%
	{
		var2 = Rijswijk Lyceum-Vredenburg College\Rijswijks Lyceum\Karmozijnstraat 2\
		goto discipline
		Return
	}
	IfInString, vartwo, %002%
	{
		var2 = Rijswijk Lyceum-Vredenburg College\Vredenburg College\Vredenburchweg 425\
		goto discipline
		Return
	}
	IfInString, vartwo, %003%
	{
		var2 = Lyceum Ypenburg\Laan van Kans 3\
		goto discipline
		Return
	}
	IfInString, vartwo, %011%
	{
		var2 = Dalton College\Aronskelkweg 1\
		goto discipline
		Return
	}
	IfInString, vartwo, %013%
	{
		var2 = Dalton College\Hoefbladlaan 85\
		goto discipline
		Return
	}
	IfInString, vartwo, %014%
	{
		var2 = Dalton College\Hoefbladlaan 87\
		goto discipline
		Return
	}
	IfInString, vartwo, %021%
	{
		var2 = De Einder\Spionkopstraat 9\
		goto discipline
		Return
	}
	IfInString, vartwo, %023%
	{
		var2 = De Einder\Spionkopstraat 15\
		goto discipline
		Return
	}
	IfInString, vartwo, %024%
	{
		MsgBox, 262192, *error*, Locatie is niet aanwezig
		reload
		Return
	}
	IfInString, vartwo, %031%
	{
		var2 = Haags Montessori Lyceum\Nassau Bredastraat 5\
		goto discipline
		Return
	}
	IfInString, vartwo, %032%
	{
		MsgBox, 262192, *error*,  Locatie is niet aanwezig
		reload
		Return
	}
	IfInString, vartwo, %051%
	{
		var2 = Gymnasium Haganum\
		goto discipline
		Return
	}
	IfInString, vartwo, %052%
	{
		MsgBox, 262192, *error*,  Locatie is niet aanwezig
		reload
		return
	}
	IfInString, vartwo, %062%
	{
		var2 = Johan de Witt scholengroep\Capadosestraat 25\
		goto discipline
		Return
	}
	IfInString, vartwo, %063%
	{
		var2 = Johan de Witt scholengroep\Glasblazerlaan 25\
		goto discipline
		Return
	}
	IfInString, vartwo, %064%
	{
		var2 = Johan de Witt scholengroep\Hooftskade 127\
		goto discipline
		Return
	}
	IfInString, vartwo, %065%
	{
		MsgBox, 262192, *error*,  Locatie is gesloten!
		reload
		return
	}
	IfInString, vartwo, %066%
	{
		var2 = Maris College\Maris Belgisch Park\
		goto discipline
		Return
	}
	IfInString, vartwo, %067%
	{
		MsgBox, 262192, *error*,  Locatie niet aanwezig
		reload
		return
	}
	IfInString, vartwo, %068%
	{
		MsgBox, 262192, *error*,  Locatie niet aanwezig
		reload
		return
	}
	IfInString, vartwo, %069%
	{
		var2 = Johan de Witt scholengroep\Zusterstraat 120\
		goto discipline
		Return
	}
	IfInString, vartwo, %071%
	{
		var2 = Maerlant Lyceum\Johannes Bildersstraat 11\
		goto discipline
		Return
	}
	IfInString, vartwo, %072%
	{
		MsgBox, 262192, *error*,  Locatie niet beschikbaar
		reload
		return
	}
	IfInString, vartwo, %081%
	{
		var2 = Segbroek College\Klaverstraat 7-9\
		goto discipline
		Return
	}
	IfInString, vartwo, %082%
	{
		var2 = Segbroek College\Goudsbloemlaan 131\
		goto discipline
		Return
	}
	IfInString, vartwo, %083%
	{
		MsgBox, 262192, *error*,  Locatie niet beschikbaar
		reload
		return
	}
	IfInString, vartwo, %084%
	{
		MsgBox, 262192, *error*,  Locatie niet beschikbaar
		reload
		return
	}
	IfInString, vartwo, %112%
	{
		var2 = Maris College\Maris College\Monseigneur Nolenslaan 16\
		goto discipline
		Return
	}
	IfInString, vartwo, %113%
	{
		MsgBox, 262192, *error*,  Locatie niet beschikbaar
		reload
		return
	}
	IfInString, vartwo, %115%
	{
		var2 = Maris College\Maris Statenkwartier\Antonie Duyckstraat 126\
		goto discipline
		Return
	}
	IfInString, vartwo, %116%
	{
		MsgBox, 262192, *error*,  Locatie niet beschikbaar
		reload
		return
	}
	IfInString, vartwo, %117%
	{
		var2 = Maris Houtrust\Tjalie Robinsonduin 74\
		goto discipline
		Return
	}
	IfInString, vartwo, %119%
	{
		MsgBox, 262192, *error*,  Locatie niet beschikbaar
		reload
		return
	} else {
	MsgBox, 262192, *error*,  Geen locatie gevonden binnen VOH... :( Probeer opnieuw. 
	reload
	}
discipline:
	B1 = B1
	B2 = B2
	B3 = B3
	B4 = B4
	B5 = B5
	B6 = B6
	B7 = B7
	B8 = B8
	IfInString, varthree, %B1%
	{
		var3 = Bouwkundig\Plattegronden\
		goto totaal
		Return
	}
	IfInString, varthree, %B2%
	{
		var3 = Bouwkundig\Gevelaanzichten\
		goto totaal
		Return
	}
	IfInString, varthree, %B3%
	{
		var3 = Bouwkundig\Doorsneden\
		goto totaal
		Return
	}
	IfInString, varthree, %B4%
	{
		var3 = Bouwkundig\Details\
		goto totaal
		Return
	}
	IfInString, varthree, %B5%
	{
		var3 = Bouwkundig\Interrieur\
		goto totaal
		Return
	}
	IfInString, varthree, %B6%
	{
		var3 = Bouwkundig\Sparingen\
		goto totaal
		Return
	}
	IfInString, varthree, %B7%
	{
		var3 = Bouwkundig\Constructie\
		goto totaal
		Return
	}
	IfInString, varthree, %B8%
	{
		var3 = Bouwkundig\Plafond\
		goto totaal
		Return
	}
	A1 = A1
	A2 = A2
	A3 = A3
	A4 = A4
	IfInString, varthree, %A1%
	{	
		var3 = Installaties\Bliksem & Aarding\Plattegronden\
		goto totaal
		Return
	}
	IfInString, varthree, %A2%
	{
		var3 = Installaties\Bliksem & Aarding\Blokschema's\
		goto totaal
		Return
	}
	IfInString, varthree, %A3%
	{
		var3 = Installaties\Bliksem & Aarding\Principeschema's\
		goto totaal
		Return
	}
	IfInString, varthree, %A4%
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
	IfInString, varthree, %E1%
	{
		var3 = Installaties\Elektrotechniek\Plattegronden\
		goto totaal
		Return
	}
	IfInString, varthree, %E2%
	{
		var3 = Installaties\Elektrotechniek\Plattegronden\
		goto totaal
		Return
	}
	IfInString, varthree, %E3%
	{
		var3 = Installaties\Elektrotechniek\Installatieschema's\
		goto totaal
		Return
	}
	IfInString, varthree, %E4%
	{
		var3 = Installaties\Elektrotechniek\Groepenverklaringen\
		goto totaal
		Return
	}
	IfInString, varthree, %E5%
	{
		var3 = Installaties\Elektrotechniek\Blokschema's\
		goto totaal
		Return
	}
	IfInString, varthree, %E6%
	{
		var3 = Installaties\Elektrotechniek\Stuurstroomschema's\
		goto totaal
		Return
	}
	IfInString, varthree, %E7%
	{
		var3 = Installaties\Elektrotechniek\Principeschema's\
		goto totaal
		Return
	}
	IfInString, varthree, %E8%
	{
		var3 = Installaties\Elektrotechniek\Details\
		goto totaal
		Return
	}
	D1 = D1
	D2 = D2
	D3 = D3
	D4 = D4
	IfInString, varthree, %D1%
	{
		var3 = Installaties\Data installatie\Plattegronden\
		goto totaal
		Return
	}
	IfInString, varthree, %D2%
	{
		var3 = Installaties\Data installatie\Blokschema's\
		goto totaal
		Return
	}
	IfInString, varthree, %D3%
	{
		var3 = Installaties\Data installatie\Principeschema's\
		goto totaal
		Return
	}
	IfInString, varthree, %D4%
	{
		var3 = Installaties\Data installatie\Details\
		goto totaal
		Return
	}
	W1 = W1
	W2 = W2
	W3 = W3
	W4 = W4
	W5 = W5
	IfInString, varthree, %W1%
	{
		var3 = Installaties\Werktuigbouwkunde\Plattegronden\
		goto totaal
		Return
	}
	IfInString, varthree, %W2%
	{
		var3 = Installaties\Werktuigbouwkunde\Plattegronden\
		goto totaal
		Return
	}
	IfInString, varthree, %W3%
	{
		var3 = Installaties\Werktuigbouwkunde\Gasinstallatie\
		goto totaal
		Return
	}
	IfInString, varthree, %W4%
	{
		var3 = Installaties\Werktuigbouwkunde\Principeschema's\
		goto totaal
		Return
	}
Wflo:
	IfInString, varthree, %W1%
	{
		var3 = Installaties\Werktuigbouwkunde\Plattegronden\
		goto totaal
		Return
	}
	IfInString, varthree, %W2%
	{
		var3 = Installaties\Werktuigbouwkunde\Plattegronden\
		goto totaal
		Return
	}
	IfInString, varthree, %W3%
	{
		var3 = Installaties\Werktuigbouwkunde\Gasinstallatie\
		goto totaal
		Return
	}
	IfInString, varthree, %W4%
	{
		var3 = Installaties\Werktuigbouwkunde\Principeschema's\
		goto totaal
		Return
	}
	IfInString, varthree, %W5%
	{
		var3 = Installaties\Werktuigbouwkunde\Details\
		goto totaal
		Return
	}
	VP1 = VP1
	VP2 = VP2
	VP3 = VP3
	VP4 = VP4
	IfInString, varthree, %VP1%
	{
		var3 = Installaties\Elektrotechniek\Verpleegoproep\Plattegronden\
		goto totaal
		Return
	}
	IfInString, varthree, %VP2%
	{
		var3 = Installaties\Elektrotechniek\Verpleegoproep\Blokschema's\
		goto totaal
		Return
	}
	IfInString, varthree, %VP3%
	{
		var3 = Installaties\Elektrotechniek\Verpleegoproep\Principeschema's\
		goto totaal
		Return
	}
	IfInString, varthree, %VP4%
	{
		var3 = Installaties\Elektrotechniek\Verpleegoproep\Details\
		goto totaal
		Return
	}
	BM1 = BM1
	BM2 = BM2
	BM3 = BM3
	BM4 = BM4
	IfInString, varthree, %BM1%
	{
		var3 = Installaties\Brandmeldinstallatie\Plattegronden\
		goto totaal
		Return
	}
	IfInString, varthree, %BM2%
	{
		var3 = Installaties\Brandmeldinstallatie\Blokschema's\
		goto totaal
		Return
	}
	IfInString, varthree, %BM3%
	{
		var3 = Installaties\Brandmeldinsinstallatie\
		goto totaal
		Return
	}
	IfInString, varthree, %BM4%
	{
		var3 = Installaties\Brandmeldinstallatie\Details\
		goto totaal
		Return
	}
	L1 = L1
	L2 = L2
	L3 = L3
	L4 = L4
	IfInString, varthree, %L1%
	{
		var3 = Legionella\Tekeningen\
		goto totaal
		Return
	}
	Rondgang = rondgang
	IfInString, varthree, %Rondgang%
	{
		var3 = Legionella\
		goto totaal
		Return
	}
	Monstername = Monstername
	IfInString, varthree, %Monstername%
	{
		var3 = Legionella\Logboek\8.6 Monsternamen\
		goto monstername
		Return
	}
	spoellijst = Spoellijst
	IfInString, varthree, %spoellijst%
	{
		var3 = Legionella\Logboek\
		goto totaal
		Return
	}
	else {
		MsgBox, 262192, *error*, Geen ondersteunde discipline gevonden... :( `n Invoer: %varthree%
		varX  = %var1%%var2%
		run %varX% 
		reload
	}
Monstername:
	IfInString, varthree, %2013%
	{
		var3 = Legionella\Logboek\8.6 Monsternamen\2013\
		goto totaal
		Return
	}
	IfInString, varthree, %2012%
	{
		var3 = Legionella\Logboek\8.6 Monsternamen\2012\
		goto totaal
		Return
	}
	else {
		MsgBox, 262192, *error*, Geen geldige invoer ontvangen!
		reload
	}
totaal:
	varO = %var1%%var2%%var3%
	clipboard = %var0%
	run %varO%
	;
	; placeholder voor movefile
	;
	clipboard = Oldclip
	reload
	return