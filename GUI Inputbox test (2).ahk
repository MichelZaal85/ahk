
invoer = %clipboard%
leeg = FLO--
new = FLO-123-B100

opnieuw:
ifinstring, nFLO, %new%
{
msgbox %nFLO% YES
exitapp
}

IfInString, invoer, %leeg%
{
InputBox, INVOER, Geen Gebouwcode gevonden!, Geef gebouwcode in:,,250,130,,,,,
if ErrorLevel
    Return
else
uitvoer = %INVOER%
FLOL = %clipboard%
Stringreplace, nFLO, FLOL, --, -%uitvoer%-,
clipboart = %nFLO%
msgbox %nFLO%
goto opnieuw
}

