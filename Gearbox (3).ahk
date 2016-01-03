#Persistent
#SingleInstance force
#NoEnv
ListLines Off
^#r::
Reload
^#e::
Exitapp


#r::
Run calc
Return

^+X::
WinClose ahk_class AcrobatSDIWindow
Return

#Q::
Run C:\Users\Binkie\Downloads
Return

#Ifwinactive ahk_class Photo_Lightweight_Viewer
esc::
WinClose ahk_class Photo_Lightweight_Viewer
Return
exit

#F1::
RegRead, HiddenFiles, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, HideFileExt
If HiddenFiles = 1 
RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, HideFileExt, 0
Else 
RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, HideFileExt, 1
send, {F5}
Return
