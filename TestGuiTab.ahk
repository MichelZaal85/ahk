MyImageList := IL_Create()
Loop 3  ; Load the ImageList with a series of icons from the DLL.
	IL_Add(MyImageList, "shell32.dll", A_Index)  ; Omits DLL path so that it works on Windows 9x too.

Gui, Add, Tab, vMyTab
Gui +LastFound
SendMessage, 0x1303, 0, MyImageList, SysTabControl321   ; 0x1303 is TCM_SETIMAGELIST.

AddTab(1, "First")  ; First parameter = icon number; second = tab name.
AddTab(2, "Second")
AddTab(3, "Third")

Gui, Tab, 1
Gui, Add, Text,, Test Text
Gui, Tab, 2
Gui, Add, Button,, Test Button
Gui, Tab, 3
Gui, Add, Edit,, Test Edit

Gui, Show
return

AddTab(IconNumber, TabName)  ; Relies on caller having set the last found window for us.
{
	VarSetCapacity(TCITEM, 100, 0)
	InsertInteger(3, TCITEM, 0)  ; Mask (3) comes from TCIF_TEXT(1) + TCIF_IMAGE(2).
	InsertInteger(&TabName, TCITEM, 12)  ; pszText
	InsertInteger(IconNumber - 1, TCITEM, 20)  ; iImage: -1 to convert to zero-based.
	SendMessage, 0x1307, 999, &TCITEM, SysTabControl321  ; 0x1307 is TCM_INSERTITEM
}

InsertInteger(pInteger, ByRef pDest, pOffset = 0, pSize = 4)
{
	Loop %pSize%  ; Copy each byte in the integer into the structure as raw binary data.
		DllCall("RtlFillMemory", "UInt", &pDest + pOffset + A_Index-1, "UInt", 1, "UChar", pInteger >> 8*(A_Index-1) & 0xFF)
}

GuiClose:
IL_Destroy(MyImageList)  ; Required for image lists used by tab controls.
ExitApp