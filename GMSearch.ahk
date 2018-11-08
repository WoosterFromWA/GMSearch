^!=::											; ctrl+alt+= clears search in GM
if WinExist("ahk_exe gmw.exe")
{
	InputBox, var, Name, Name to Search For
	WinActivate
	WinActivate
	WinWaitActive, , , 1
	If ErrorLevel
	{
		MsgBox, 8208, Error, WinWaitActive Timed Out, cancelling
		return
	}
} else {
	MsgBox, 8208, Not Running, GoldMine RDP is not running, cancelling
	return
}
Click, 200, 90									; clicks in search field of GM
SendInput, ^a%var%{Enter}						; selects all and clears text
return