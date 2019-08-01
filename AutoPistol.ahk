; It shoots with pistol when the left mouse button is holded down
; Numpad "+" key turns it on and off

#SingleInstance Force

scriptActive := 1

~LButton::
if scriptActive = 1
{
    while GetKeyState("LButton", "P")
        Click
}
return

~NumpadAdd::
If scriptActive = 1
{
    scriptActive := 0
    SoundBeep, 400, 400
}
else
{
    scriptActive := 1
    SoundBeep, 400, 400
}
return