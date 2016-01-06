Global $Paused
HotKeySet("{`}", "TogglePause")


Local $i = 0
Local $n = 0
Local $p = 1
Local $t = 0
While $p>0
   Send ("{LEFT down}")
   Sleep(200)
Send("{N 1}")
Sleep(1000)
   While $n < 16
ControlSend ( "MapleStory", "", "", "{F 1}")
Sleep(240)
ControlSend ( "MapleStory", "", "", "{F 1}")
Sleep(240)
ControlSend ( "MapleStory", "", "", "{F 1}")
Sleep(240)
Sleep(400)
$n += 1
WEnd
ControlSend ( "MapleStory", "", "", "{ENTER 1}")
Sleep(200)
$n = 0
Send ("{LEFT up}")
Sleep(1500)
   Send ("{RIGHT down}")
   While $n < 16
ControlSend ( "MapleStory", "", "", "{F 1}")
Sleep(240)
ControlSend ( "MapleStory", "", "", "{F 1}")
Sleep(240)
ControlSend ( "MapleStory", "", "", "{F 1}")
Sleep(240)
Sleep(400)
$n += 1
WEnd
ControlSend ( "MapleStory", "", "", "{T 1}")
  Sleep(800)
  ControlSend ( "MapleStory", "", "", "{Y 1}")
   Sleep(1500)
   If $t < 5 Then
	 
	 $t += 1
  Else
	 ControlSend ( "MapleStory", "", "", "{L 1}")
	 $t = 0
	 EndIf
ControlSend ( "MapleStory", "", "", "{ENTER 1}")
Sleep(400)
ControlSend ( "MapleStory", "", "", "{ENTER 1}")
Sleep(400)
$n = 0
   Send ("{RIGHT up}")


     
   Sleep(700)

WEnd

Func TogglePause()
    $Paused = Not $Paused
    While $Paused
        Sleep(100)
        ToolTip('Script is "Paused"', 0, 0)
    WEnd
    ToolTip("")
EndFunc

