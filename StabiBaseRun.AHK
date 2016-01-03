#F8::
WinWait, Palette Container, 
IfWinNotActive, Palette Container, , WinActivate, Palette Container, 
WinWaitActive, Palette Container, 
MouseClick, left,  52,  19
Sleep, 100
MouseClick, left,  51,  46
Sleep, 100
WinWait, StabiTOOLS, 
IfWinNotActive, StabiTOOLS, , WinActivate, StabiTOOLS, 
WinWaitActive, StabiTOOLS, 
MouseClick, left,  20,  67
Sleep, 100
WinWait, Tekeningsetup, 
IfWinNotActive, Tekeningsetup, , WinActivate, Tekeningsetup, 
WinWaitActive, Tekeningsetup, 
Send, {ESC}