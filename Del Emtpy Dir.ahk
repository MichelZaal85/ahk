
/*
FileSelectFolder, OutputVar, , 3
if OutputVar =
    MsgBox, You didn't select a folder.
else
    Aworkingdir = %OutputVar%



;-- Confirm
MsgBox 1,,About to remove all empty directories from:`r`n%AWorkingDir%\
IfMsgBox Cancel
    return

;-- Initialize
$MinimumSplashTime=850


;[========================]
;[                        ]
;[  Build Directory List  ]
;[                        ]
;[========================]
;-- Splash
SplashImage,, W258 B2 ,,Building directory list...
$SplashStartTime=%A_TickCount%
Sleep 10  ;-- Allow splash image to render

;-- Build directory list
$DirectoryList=
Loop *.*,2,1
    $DirectoryList=%$DirectoryList% %A_LoopFileFullPath%`r`n

;-- Sort it
Sort $DirectoryList

;-- Compute elapsed time. Sleep if necessary
$SplashElapsedTime:=A_TickCount - $SplashStartTime
if $SplashElapsedTime<%$MinimumSplashTime%
    {
    $SleepTime:=$MinimumSplashTime - $SplashElapsedTime
    Sleep %$SleepTime%
    }


;[==================]
;[                  ]
;[  Remove Empties  ]
;[                  ]
;[==================]
;-- Splash
SplashImage,, W354 B2 ,,Searching for directories to delete...
$SplashStartTime=%A_TickCount%

;--- Loop until all empty directories have been deleted
$DeleteTotal=0
$LoopCount=0
Loop 99
    {
    $LoopCount:=$LoopCount + 1
    $DeleteCount=0
    Loop parse,$DirectoryList,`n,`r
        {
        if A_LoopField=  ;-- Ignore blank item
            continue
        IfExist %A_LoopField%
            {
            FileRemoveDir %A_LoopField%
            if errorlevel=0
               $DeleteCount:=$DeleteCount + 1
            }
        }
    $DeleteTotal:=$DeleteTotal + $DeleteCount
    If $DeleteCount=0
        break
    }

;-- Compute elapsed time. Sleep if necessary
$SplashElapsedTime:=A_TickCount - $SplashStartTime
if $SplashElapsedTime<%$MinimumSplashTime%
    {
    $SleepTime:=$MinimumSplashTime - $SplashElapsedTime
    Sleep %$SleepTime%
    }

;-- Splash off
SplashImage off


;[===========]
;[           ]
;[  Results  ]
;[           ]
;[===========]
If $DeleteTotal=0
    msgbox No empty directories found
 else
    msgbox %$DeleteTotal% empty directories removed


;-- Return to sender
return



*/





FileSelectFolder, OutputVar, , 3
if OutputVar =
    MsgBox, You didn't select a folder.
else
    dir = %OutputVar%


DelEmpty(%dir%)
{
   Loop %dir%\*.*, 2
      DelEmpty(A_LoopFileFullPath)
   FileRemoveDir %dir%
}

















