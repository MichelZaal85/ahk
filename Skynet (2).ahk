Gui, Add, Picture, x-8 y0 w1980 h1100 , C:\Users\michel\Pictures\Rest bestanden\skynet.jpg
Gui, Add, Edit, x622 y920 w650 h20 BackgroundTrans password , 
Gui, font,, helvetica 
Gui, font, S14
Gui, Add, Text, x622 y880 w650 h30  CRed BackgroundTrans, password required
Gui, Show, x115 y96 h2024 w1980 , New GUI Window


w = 1980
h = 2024

SetTitleMatchMode, 2
WinGet Style, Style, A
if(Style & 0xC40000) {
WinGetPos, X, Y, Width, Height, A
WinSet, Style, -0xC40000, A
WinMove,A,,0,0,1980,2024
} else {
WinSet, Style, +0xC40000, A
WinMove,A,,%X%,%Y%,%Width%,%Height%
}
return


enter::
Progress, CTFF0000 CW000000 bw200, checking..., Password Check , 
sleep 700
Progress, 10 ; Set the position of the bar to 50%.
sleep 700
progress 40
sleep 700
progress 80
sleep 700
progress 95
Sleep, 4000
Progress, Off
sleep 1000



GuiClose:
ExitApp

