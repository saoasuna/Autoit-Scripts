Global $Paused
HotKeySet("{`}", "TogglePause")
Local $i = 0
Local $n = 0
Local $p = 1
Local $t = 0
While $p>0


While $i < 6
ControlSend ( "MapleStory", "", "", "{C 1}")
Sleep(11000)
WEnd
WEnd

Func TogglePause()
    $Paused = Not $Paused
    While $Paused
        Sleep(100)
        ToolTip('Script is "Paused"', 0, 0)
    WEnd
    ToolTip("")
EndFunc
