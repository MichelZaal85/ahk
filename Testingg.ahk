::testinggg::
again:
InputBox, inputclipboart, *error*, Geef gebouwcode in:,,180,120,,,,,
	StringUpper, inputclipboart, inputclipboart
	if inputclipboart in ADG,CHC,GLT,MTL,DHN,DST,DVO,DKD,GHS,HRW,HHG,JFR,LVV,LVS,LHF,MHV,MRR,MRP,OSN,ODB,SPT,STV,HHS,VBL,VBH,WKB,WHF,WDC,WBL,UTZ
	{
		msgbox O.K. %inputclipboart%
	}
	else {
		msgbox No Way!
		goto again
	}
	
	