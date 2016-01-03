FLO = FLO
DPC = DPC

^!l::
;WinWait, Frontpage - Google Chrome, 
;IfWinNotActive, Frontpage - Google Chrome, , WinActivate, Frontpage - Google Chrome, 
;WinWaitActive, Frontpage - Google Chrome, 
;MouseClick, left,  1182,  401
;clipboardold = %clipboardall%
;Send {ctrldown}ac{ctrlup}
var4 = %clipboard%

;K:\Tekeningenbeheer\FLO\T10020\Guldenhuis (GHS)\Bouwkundig\Plattegronden

;opdrachtgever
IfInString, var4, %FLO%
{
	var1 = K:\Tekeningenbeheer\FLO\T10020\
	goto gebouwcode
	return 
}

; ....meer code

gebouwcode:
IfInString, var4, %GHS%
{
	var2 = Guldenhuis (GHS)\
	goto discipline
	return 
}


; ...meer code...
discipline:
IfInString, var4, %B1%
{
	var3 = Bouwkundig\Plattegronden
	goto totaal
	return 
}


totaal:
var0 = %var1% . %var2% . %var3% . %var4%
msgbox %var0%
return