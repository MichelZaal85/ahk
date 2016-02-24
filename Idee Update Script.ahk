;AutoUpdate Example - Name this file as Update.ahk
;I plan on having a version # set in a variable in the script that will be checked against a remote
;File with another version number - If the remote version # is greater, this will run.

FileDelete,Update2.ahk ;Housecleaning for this example only
FileAppend,MsgBox Version 2,Update2.ahk ;Create the 'new version'

;In a real script this would be copied from a remote location with FileCopy or UrlDownloadToFile
MsgBox Version 1 ;Identify this script as version 1

BatchFile=
	(
		Ping 127.0.0.1
		Del Update1.ahk
		Rename Update2.ahk Update1.ahk
		%A_ScriptFullPath%
		Del Update.bat
	)

/*
Design a batch file to:
ping to give time for script to exit for...
delete version 1
rename version 2 to version 1
run the new version
delete the batch file
*/

FileDelete,update.bat ;Housecleaning
FileAppend,%BatchFile%,update.bat ;Create the bat
MsgBox, Preparing to update - Please stand by! ;Alert the user that the app will be down for a few seconds
Run,update.bat,,hide ;Run it (hidden)
ExitApp ;Get out of Dodge so this script can be deleteds

/* 
del %0 ;batch verwijdert zich zelf
 
 Am I missing something here or could not a "poor-man's" sleep in a batch file be implemented using the "choice" command? For example to sleep for 2 seconds:
choice /n /t:y,02

*/


; save as test.ahk
; copy Ahk2Exe.exe and AutoHotkeySC.bin to the same test dir
; compile test.ahk to test.exe
; copy executable to another dir as all files will be deleted when you run the exe
; run executable, see it fail :-(

SetWorkingDir, %A_ScriptDir%
FileInstall, test.ahk, %A_ScriptDir%\test.ahk, 1
FileInstall, Ahk2Exe.exe, %A_ScriptDir%\Ahk2Exe.exe, 1
FileInstall, AutoHotkeySC.bin, %A_ScriptDir%\AutoHotkeySC.bin, 1

OutputVar=Hello
MsgBox , 0 , Self updating Executable, The value of the stored variable is %OutputVar%

InputBox, OutputVar, Enter text, Provide a new value for this variable, , 400, 150, , , , , Hello
If Errorlevel
   ExitApp

[color=red]FileRead, script, %A_ScriptDir%\test.ahk[/color]
[color=red]script:=RegExReplace(Script,"i)\nOutputVar\=.*\r?\n","`nOutputVar=" [/color]OutputVar "`r`n")
FileDelete, test.ahk
FileAppend, %script%, test.ahk
FileDelete, recompile.cmd
FileAppend,
(
Ping 127.0.0.1
Del test.exe
Ahk2Exe.exe /in test.ahk /bin AutoHotkeySC.bin
Del Ahk2Exe.exe
Del AutoHotkeySC.bin
Del test.ahk
Del recompile.cmd
), recompile.cmd
Run, %comspec% /c recompile.cmd
ExitApp








Update -> Website -> download -> open/run, install script -> 
close current script -> delete current script -> replace with new version.











































