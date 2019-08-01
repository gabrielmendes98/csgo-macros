; A color based triggerbot. 
; When something very different to the current pixel color crosses the crosshair, it shoots automatically.
; This way, it prevent to shoot when you move the scope through the same texture, because it pixel colors don't vary much.

#SingleInstance Force

flag := 0

~Alt::
while GetKeyState("Alt", "P")
{
    if flag != 0
    {
        PixelGetColor, currentColor, 961, 541, RGB
        difference:=abs(currentColor-prevColor)
        if difference > 2000000
            Click
        prevColor:=currentColor
    }
    else
    {
        PixelGetColor, currentColor, 961, 541, RGB
        prevColor:=currentColor
        flag++
    }
}
flag:=0
return