Gui, Add, Picture, x-8 y0 w1980 h1100 , C:\Users\michel\Pictures\Rest bestanden\skynet.jpg
Gui, Add, Edit, x622 y920 w650 h20 BackgroundTrans password , 
Gui, font,, helvetica 
Gui, font, S14
Gui, Add, Text, x622 y880 w650 h30  CRed BackgroundTrans, password required
Gui, Show, x115 y96 h1920 w1080 , Skynet
w = 1920
h = 1080
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
Progress, CTFF0000 CW000000 CB00FF00 bw200 x622 y920 w650 h30, checking...,
progress 1 
sleep 100
progress 2 
sleep 100
progress 3 
sleep 100
progress 4 
sleep 100
progress 5 
sleep 100
progress 6 
sleep 100
progress 7 
sleep 100
progress 8 
sleep 100
progress 9 
sleep 100
progress 10
sleep 100
progress 11
sleep 100
progress 12
sleep 100
progress 13
sleep 100
progress 14
sleep 100
progress 15
sleep 100
progress 16
sleep 100
progress 17
sleep 100
progress 18
sleep 100
progress 19
sleep 100
progress 20
sleep 100
progress 21
sleep 100
progress 22
sleep 100
progress 23
sleep 100
progress 24
sleep 100
progress 25
sleep 100
progress 26
sleep 100
progress 27
sleep 100
progress 28
sleep 100
progress 29
sleep 100
progress 30
sleep 100
progress 31
sleep 100
progress 32
sleep 100
progress 33
sleep 100
progress 34
sleep 100
progress 35
sleep 100
progress 36
sleep 100
progress 37
sleep 100
progress 38
sleep 100
progress 39
sleep 100
progress 40
sleep 100
progress 41
sleep 100
progress 42
sleep 100
progress 43
sleep 100
progress 44
sleep 100
progress 45 
sleep 100
progress 46
sleep 100
progress 47
sleep 100
progress 48
sleep 100
progress 49
sleep 100
progress 50
sleep 100
progress 51
sleep 100
progress 52
sleep 100
progress 53
sleep 100
progress 54
sleep 100
progress 55
sleep 100
progress 56
sleep 100
progress 57
sleep 100
progress 58
sleep 100
progress 59
sleep 100
progress 60
sleep 100
progress 61
sleep 100
progress 62
sleep 100
progress 63
sleep 100
progress 64
sleep 100
progress 65
sleep 100
progress 66
sleep 100
progress 67
sleep 100
progress 68
sleep 100
progress 69
sleep 100
progress 70
sleep 100
progress 71
sleep 100
progress 72
sleep 100
progress 73
sleep 100
progress 74
sleep 100
progress 75
sleep 100
progress 76
sleep 100
progress 77
sleep 100
progress 78
sleep 100
progress 79
sleep 100
progress 80
sleep 100
progress 81
sleep 100
progress 82
sleep 100
progress 83
sleep 100
progress 84
sleep 100
progress 85
sleep 100
progress 86
sleep 100
progress 87
sleep 100
progress 88
sleep 100
progress 89
sleep 100
progress 90
sleep 100
progress 91
sleep 100
progress 92
sleep 100
progress 93
sleep 100
progress 94
sleep 100
progress 95
sleep 100
progress 96
sleep 100
progress 97
sleep 100
progress 98
sleep 100
progress 99
sleep 500
GuiControl, Text, password required, ERROR... Password Incorrect!
sleep 1000
progress off
GifAnimationFile1 := A_ScriptDir "\err.gif" 
ToolTip
Gui, GifAnimationSample: Margin, 0,0 
AnimatedGifControl("GifAnimationSample", GifAnimationFile1, "w1980 h1080")
Gui, GifAnimationSample: Show,, Animated Gif Gui Control Sample
w = 1940
h = 1080
SetTitleMatchMode, 2
WinGet Style, Style, A
if(Style & 0xC40000) {
WinGetPos, X, Y, Width, Height, A
WinSet, Style, -0xC40000, A
WinMove,A,,0,0,1920,2024
} else {
WinSet, Style, +0xC40000, A
WinMove,A,,%X%,%Y%,%Width%,%Height%
}		
sleep 85000
gui, destroy
esc::
GuiClose:
ExitApp 