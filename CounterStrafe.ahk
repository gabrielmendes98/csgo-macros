; This script do the counter strafe automatically by pressing the opposite key that you are holding
; Example: when you hold down the "a", it will send a "d" to stop the movement animation

ScriptActive := 1

~*w up::
If ScriptActive = 1 
{
if(GetKeyState("s","P")) ; if w is pressed, do not perform sub
return
start:=A_TickCount
start+=125
Send {s down}
While (!GetKeyState("s","P") && A_TickCount<start) ; if w is pressed, exit this While loop. Exit after 100 ms regardless
Sleep 10
If !GetKeyState("s","P") ; if you are holding w down physically, you don't want to send a w up keystroke
Send {s up}
}
return

~*a up::
If ScriptActive = 1
{
if(GetKeyState("d","P")) ; if w is pressed, do not perform sub
return
start:=A_TickCount
start+=125
Send {d down}
While (!GetKeyState("d","P") && A_TickCount<start) ; if w is pressed, exit this While loop. Exit after 100 ms regardless
Sleep 10
If !GetKeyState("d","P") ; if you are holding w down physically, you don't want to send a w up keystroke
Send {d up}
}
return

~*d up::
If ScriptActive = 1
{
if(GetKeyState("a","P")) ; if w is pressed, do not perform sub
return
start:=A_TickCount
start+=125
Send {a down}
While (!GetKeyState("a","P") && A_TickCount<start) ; if w is pressed, exit this While loop. Exit after 100 ms regardless
Sleep 10
If !GetKeyState("a","P") ; if you are holding w down physically, you don't want to send a w up keystroke
Send {a up}
}
return

~*s up::
If ScriptActive = 1
{
if(GetKeyState("w","P")) ; if w is pressed, do not perform sub
return
start:=A_TickCount
start+=125
Send {w down}
While (!GetKeyState("w","P") && A_TickCount<start) ; if w is pressed, exit this While loop. Exit after 100 ms regardless
Sleep 10
If !GetKeyState("w","P") ; if you are holding w down physically, you don't want to send a w up keystroke
Send {w up}
}
return

~NumpadAdd::
If ScriptActive = 1
{
ScriptActive := 0
SoundBeep, 400, 400
}
else
{
ScriptActive := 1
SoundBeep, 400, 400
}
return