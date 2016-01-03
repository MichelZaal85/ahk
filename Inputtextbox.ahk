;InputBox, OutputVar [, Title, Prompt, HIDE, Width, Height, X, Y, Font, Timeout, Default]
;Inputbox, text, test inputboxx, , 1050 , 50
;msgbox %text%
;return

InputBox, password, Enter Password, (your input will be hidden), hide 
InputBox, UserInput, Phone Number, Please enter a phone number., , 240, 80
if ErrorLevel
    MsgBox, CANCEL was pressed.
else
    MsgBox, You entered "%UserInput%"s
	

	
	
	*/

; DIT WERKT GOED!!!




clipboardold = %clipboardall%
InputBox, invoer, invoer test , Geef hier wat test dingen op., , 240, 150, , , ,180,
ifnotequal, test,
{ 
	msgbox %invoer%
		return
}
ifequal, test, 
{
	clipboard = Hallo
	msgbox Geen geldig invoer ontvangen %clipboard%
	clipboard = %clipboardold%
	return 
}
