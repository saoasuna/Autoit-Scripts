Global $Paused
HotKeySet("{`}", "TogglePause")


Local $i = 1
Local $n = 0
Local $p = 1
Local $t = 0
   while $i > 0
   While $n < 6
   Send ("{LEFT down}")
   Sleep(1000)
   Send("{LEFT up}")
   Sleep(40)
ControlSend ( "MapleStory", "", "", "{D 1}")
Sleep(500)
ControlSend ( "MapleStory", "", "", "{V 1}")
Sleep(1200)
ControlSend ( "MapleStory", "", "", "{V 1}")
Sleep(1200)
$n += 1
WEnd

$n = 0

While $n < 6
   Send ("{RIGHT down}")
   Sleep(1000)
   Send("{RIGHT up}")
   Sleep(40)
ControlSend ( "MapleStory", "", "", "{D 1}")
Sleep(500)
ControlSend ( "MapleStory", "", "", "{V 1}")
Sleep(1200)
ControlSend ( "MapleStory", "", "", "{V 1}")
Sleep(1200)
$n += 1
WEnd

$n = 0
   If $t < 5 Then
	 
	 $t += 1
  Else
	 ControlSend ( "MapleStory", "", "", "{L 1}")
	 $t = 0
	 EndIf
ControlSend ( "MapleStory", "", "", "{S 1}")
Sleep(1000)
ControlSend ( "MapleStory", "", "", "{X 1}")
Sleep(1000)

WEnd


Func TogglePause()
    $Paused = Not $Paused
    While $Paused
        Sleep(100)
        ToolTip('Script is "Paused"', 0, 0)
    WEnd
    ToolTip("")
EndFunc

