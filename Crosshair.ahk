; puts a crosshair image in the center of screen
; CSGO must be in windowed mode

#SingleInstance Force

scriptActive := 1

^1::
if scriptActive = 1
{
    Gui, Color, 0xFFFF00
    Gui, Add, Picture, ,crosshair.png ; dimensions of 41x41
    Gui, +LastFound +AlwaysOnTop -Caption +E0x20 +Owner ; Click through GUI always on top.
    WinSet, TransColor, 0xFFFF00
    Gui, Show, % "x" A_ScreenWidth/2-30 " y" A_ScreenHeight/2-27 ; this centers it on screen, or at least what should be the center. Might be off by a pixel or two in either axis in any direction.
    scriptActive := 0
}
else
{
    Gui, Destroy
    scriptActive := 1
}
return