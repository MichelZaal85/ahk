!^+\::
msgbox 'are you sure'
send F2
OutputVar := StrReplace(Haystack, SearchText [, ReplaceText, OutputVarCount, Limit := -1])
StringReplace, ouStr, inStr, . , ' ', ReplaceAll
return 