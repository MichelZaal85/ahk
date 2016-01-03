!F12::
Send, sscalelistedit{ENTER}
WinWait, Edit Drawing Scales, 
IfWinNotActive, Edit Drawing Scales, , WinActivate, Edit Drawing Scales, 
WinWaitActive, Edit Drawing Scales, 
MouseClick, left,  243,  68
Sleep, 100
WinWait, Add Scale, 
IfWinNotActive, Add Scale, , WinActivate, Add Scale, 
WinWaitActive, Add Scale, 
Send, 1{SHIFTDOWN};{SHIFTUP}15{TAB}{TAB}15{TAB}
MouseClick, left,  102,  216
Sleep, 100
WinWait, Edit Drawing Scales, 
IfWinNotActive, Edit Drawing Scales, , WinActivate, Edit Drawing Scales, 
WinWaitActive, Edit Drawing Scales, 
MouseClick, left,  150,  301
