; When it's active, if the scope key is pressed, it shoots automatically, making a perfect shot
; Numpad "+" key turns it on and off

#SingleInstance force

ScriptActive := 1

~RButton::
if ScriptActive = 1
{
    Sleep, 185
    Click
    Send {Q}
    Sleep, 10
    Send {Q}
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