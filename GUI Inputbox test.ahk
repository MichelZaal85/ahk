InputBox, INVOER, Geef Gebouwcode Op, Prompt, HIDE, Width, Height, X, Y, Font, Timeout, Default]

Parameters
OutputVar The name of the variable in which to store the text entered by the user. 

Title The title of the input box. If blank or omitted, it defaults to the name of the script.  

Prompt The text of the input box, which is usually a message to the user indicating what kind of input is expected. If Prompt is long, 
it can be broken up into several shorter lines by means of a continuation section, which might improve readability and maintainability. 

HIDE If this parameter is the word HIDE, the user's input will be masked, which is useful for passwords. 

Width If this parameter is blank or omitted, the starting width of the window will be 375. This parameter can be an expression. 

Height If this parameter is blank or omitted, the starting height of the window will be 189. This parameter can be an expression. 

X, Y  The X and Y coordinates of the window (use 0,0 to move it to the upper left corner of the desktop), which can be expressions. 
If either coordinate is blank or omitted, the dialog will be centered in that dimension. Either coordinate can be negative to position 
the window partially or entirely off the desktop. 

Font Not yet implemented (leave blank). In the future it might accept something like verdana:8 

Timeout Timeout in seconds (can contain a decimal point or be an expression).  If this value exceeds 2147483 (24.8 days), it will be 
set to 2147483. After the timeout has elapsed, the InputBox window will be automatically closed and ErrorLevel will be set to 2. 
OutputVar will still be set to what the user entered. 

Default A string that will appear in the InputBox's edit field when the dialog first appears. The user can change it by backspacing 
or other means.  

ErrorLevel
See below.

Remarks
The dialog allows the user to enter text and then press OK or CANCEL. The user can resize the dialog window by dragging its borders. 

If the user presses the CANCEL button: For AutoIt v2 (.aut) scripts, OutputVar is set to be blank and ErrorLevel is not changed. 
For all other script types (e.g. .ahk, .ini) ErrorLevel is set to 1 (or 0 for OK) and OutputVar to the value entered. This allows 
the CANCEL button to perform a function other than CANCEL should the script designer wish it.

If the dialog times out, ErrorLevel will be set to 2 for all types of scripts, including AutoIt v2 scripts. For this reason, 
AutoIt v2 scripts should explicitly set ErrorLevel to 0 prior to using this command with a timeout.

A GUI window may display a modal InputBox by means of Gui +OwnDialogs. A modal InputBox prevents the user from interacting 
with the GUI window until the InputBox is dismissed.


; Example 
InputBox, password, Enter Password, (your input will be hidden), hide 
InputBox, UserInput, Phone Number, Please enter a phone number., , 640, 480
if ErrorLevel
    MsgBox, CANCEL was pressed.
else
    MsgBox, You entered "%UserInput%"