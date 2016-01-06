Global $Paused
HotKeySet("{`}", "TogglePause")
Local $i = 0
Local $n = 0
Local $p = 1
Local $t = 0
While $p>0


While $i < 6
Sleep(299250)
ControlSend ( "MapleStory", "", "", "{BACKSPACE 1}")
Sleep(250)
ControlSend ( "MapleStory", "", "", "{i 1}")
Sleep(250)
ControlSend ( "MapleStory", "", "", "{l 1}")
Sleep(250)
ControlSend ( "MapleStory", "", "", "{o 1}")
Sleep(250)
ControlSend ( "MapleStory", "", "", "{v 1}")
Sleep(250)
ControlSend ( "MapleStory", "", "", "{e 1}")
Sleep(250)
ControlSend ( "MapleStory", "", "", "{y 1}")
Sleep(250)
ControlSend ( "MapleStory", "", "", "{o 1}")
Sleep(250)
ControlSend ( "MapleStory", "", "", "{u 1}")
Sleep(250)
ControlSend ( "MapleStory", "", "", "{ENTER 1}")
$i = $i + 1
WEnd

$i = 0
ControlSend ( "MapleStory", "", "", "{LEFT down}")
Sleep(200)
ControlSend ( "MapleStory", "", "", "{LEFT up}")
Sleep(100)
ControlSend ( "MapleStory", "", "", "{l 1}")
Sleep(400)
ControlSend ( "MapleStory", "", "", "{6 1}")

WEnd

Func TogglePause()
    $Paused = Not $Paused
    While $Paused
        Sleep(100)
        ToolTip('Script is "Paused"', 0, 0)
    WEnd
    ToolTip("")
EndFunc
