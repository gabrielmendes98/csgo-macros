; Just press the left mouse button and the script will chase the enemy
; Need to use this radar cfg: cl_radar_always_centered 1; cl_radar_icon_scale_min 0.4; cl_radar_rotate 1;cl_radar_scale 0.25; cl_hud_radar_scale 1.0;
; CSGO must be in windowed mode
; It's setted up to 1920x1080 monitor

#SingleInstance force

~LButton::
while GetKeyState("LButton", "P")
{
    PixelSearch, FoundX, FoundY, 145, 70, 152, 205, 0xDC0000, 75, Fast RGB
    if ErrorLevel = 0
    {
        if FoundX = 149
            KeyWait LButton
        if FoundX > 149
            move(15,0,1,70/5)
        if FoundX < 149
            move(-15,0,1,70/5)
    }
}
return
    
move(x, y, times=1, sleep=0)
{
    Loop, %times%
    {
    DllCall("mouse_event", "UInt", 0x01, "UInt", x, "UInt", y)
    if sleep
        Sleep, %sleep%
    }
}