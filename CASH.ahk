#Persistent
#SingleInstance force
#NoEnv
#NoTrayIcon
run C:\Snelkoppelingen\Urenlijst.lnk
winwait CASHWin
send mz{enter}
winwait MUL1-Mul BV ontwerpers & adviseurs  -- CASHWin --
FormatTime, day,, YWeek
stringreplace day, day, 2015, 0015
send {down}{enter} 
send %day%
send {enter}
return

#ifwinactive MUL1-Mul BV ontwerpers & adviseurs  -- CASHWin --
!F4::
winwait MUL1-Mul BV ontwerpers & adviseurs  -- CASHWin --
send {esc 5}{altdown}bs{altup}
exitapp 
