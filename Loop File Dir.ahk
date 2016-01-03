#notrayicon
#singleinstance force

ControlGetText, path, Edit1, ahk_class ExploreWClass
FormatTime, date, , yyMMdd

name = %path%/%date%%a_space%dir%a_space%list.txt
shortname = %date%%a_space%dir%a_space%list.txt

filedelete, %name%
fileappend, %path%`n`n, %name%

filelist = 
loop, %path%/*.*, 2 ; get only folders
  FileList = %FileList%%A_LoopFileName%`n
Sort, FileList
Loop, parse, FileList, `n
{
  fileappend, %A_LoopField%`n, %name%
}

fileappend, `n, %name%

filelist = 
loop, %path%/*.*, 0 ; get only files
  FileList = %FileList%%A_LoopFileName%`n
Sort, FileList
Loop, parse, FileList, `n
{
  IfNotEqual, A_LoopField, %shortname%
    fileappend, %A_LoopField%`n, %name% 
}

run, %name%
return


/*


REGEDIT4

[HKEY_CLASSES_ROOT\*\shell\Create Directory Listing]
@="Create Directory Listing"

[HKEY_CLASSES_ROOT\*\shell\Create Directory Listing\Command]
@="X:\\DirListing.exe"

[HKEY_CLASSES_ROOT\Directory\shell\Create Directory Listing]
@="Create Directory Listing"

[HKEY_CLASSES_ROOT\Directory\shell\Create Directory Listing\Command]
@="X:\\DirListing.exe"




This script is very simple, it creates a text file listing the contents of the directory you are in, in the directory you are in
(Windows Explorer only.) Once the file is created it is opened.

I wrote this script to replace a batch file that did something similar (with two lines of code!) but without the date stamps and formatting. 

This script is designed to be launched from the explorer shell menu and can be installed uncompiled by specifying the path to AutoHotkey.exe in the command line. Sample registry keys required to link it to the shell menu are posted below along with the source code. 

Changelog:
* script does not write extra blank line if no folders found in directory
* directory list file is no longer added to directory listing




*/