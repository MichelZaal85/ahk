#r::
send {f2}{ctrldown}c{ctrlup}
str = %clipboard%
StringReplace, newStr, str, . ,%A_Space% , 1
;StringReplace, newStr, str, _ ,%A_Space% , 1
clipboard = %newStr%
send {ctrldown}v{ctrlup}{enter}
return 