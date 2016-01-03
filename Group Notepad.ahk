GroupAdd, notepad, ahk_class Notepad ; Add only Internet Explorer windows to this group.
return ; End of autoexecute section.
#C::
GroupClose, Notepad, A
^+F4:: ExitApp
