^NumpadMult::
inputbox, pass, enter password, input password, hide,250, 100,,,, 180,
michel = 85213
IfEqual, michel, %pass% 
{ 
Gui, Add, Text, x22 y10 w200 h30 , FTP
Gui, Add, Edit, x22 y40 w310 h30 , Michel@digitaalvastgoedbeheer.nl`nFTP Nieuw Mul BV`nMuntje85!Pie
Gui, Add, Text, x22 y80 w165 h30 , Website
Gui, Add, Edit, x22 y110 w310 h30 , Michel`nMul2803PSGouda!Michel232
Gui, Add, Text, x22 y150 w165 h30 , FaceBook
Gui, Add, Edit, x22 y180 w310 h30 , phases003@hotmail.com`nhU!@#4gh38KL(*&^lf#$kj2@#$6389kk)
Gui, Add, Text, x22 y220 w165 h30 , SVN
Gui, Add, Edit, x22 y250 w310 h30 , Michel`nn....?ja
Gui, Add, Text, x22 y290 w165 h30 , SFTP
Gui, Add, Edit, x22 y320 w310 h30 , Muntje85!Pie
Gui, Add, Text, x22 y360 w165 h30 , YouTube
Gui, Add, Edit, x22 y390 w310 h30 , martijn.mulbv@gmail.com`njixe9pe7tu
Gui, Add, Text, x22 y430 w165 h30 , Twitter
Gui, Add, Edit, x22 y460 w310 h30 , twitter@mulbv.nl`nMul2803Gouda
Gui, Add, Text, x22 y500 w165 h30 , Fotolia
Gui, Add, Edit, x22 y530 w310 h30 , mruyg`nMul2803Gouda
Gui, Add, Text, x22 y570 w165 h30 , Druppel
Gui, Add, Edit, x22 y600 w310 h30 , Garfield85`nweedseed
Gui, Add, Text, x22 y640 w165 h30 , e-m
Gui, Add, Edit, x22 y670 w310 h30 , xuuIaCtd
Gui, Add, Text, x22 y710 w165 h30 , adobe
Gui, Add, Edit, x22 y740 w310 h30 , Phases003@hotmail.com`nwsd
Gui, Add, Text, x22 y780 w165 h30 , Dropbox
Gui, Add, Edit, x22 y810 w310 h30 , michel@my-mirror.nl`nSmarties8519
Gui, Show, x300 y77 h855 w357, Password
Return
} Else {
MsgBox, 262192, *error*, Password inccorect!, 1
return
}
return 