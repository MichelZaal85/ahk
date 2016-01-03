^Y::
ClipSaved := ClipboardAll   ; Save the entire clipboard to a variable of your choice.
Send {home}{shiftdown}{end}{shiftup}{ctrldown}c{ctrlup}
send {enter}{ctrldown}v{ctrlup}
Clipboard := ClipSaved   ; Restore the original clipboard. Note the use of Clipboard (not ClipboardAll).
ClipSaved =   ; Free the memory in case the clipboard was very large.
return 



