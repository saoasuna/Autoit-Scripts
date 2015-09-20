Global $Paused
HotKeySet("{`}", "TogglePause")
Local $i = 0
Local $n = 0
Local $p = 1
Local $t = 0
While $p>0
   
if $i = 0 Then
Sleep(500)
ControlSend ( "MapleStory", "", "", "{D 1}")
Sleep(1100)
ControlSend ( "MapleStory", "", "", "{E 1}")
Sleep(1100)
ControlSend ( "MapleStory", "", "", "{E 1}")
Sleep(1100)
ControlSend ( "MapleStory", "", "", "{E 1}")
Sleep(1100)
ControlSend ( "MapleStory", "", "", "{E 1}")
Sleep(1100)
ControlSend ( "MapleStory", "", "", "{E 1}")
Sleep(1100)
ControlSend ( "MapleStory", "", "", "{E 1}")
Sleep(1100)
Send ("{LEFT down}")
Sleep(60)
Send ("{LEFT up}")
Sleep(500)
ControlSend ( "MapleStory", "", "", "{Y 1}")
  Sleep(800)
  ControlSend ( "MapleStory", "", "", "{S 1}")
   Sleep(1500)
 $i = $i + 1
 $n = $n + 1
ElseIf $i = 18 Then
   
   Sleep (5000)
   MouseClick ("left" , 602, 777)
Sleep (6000)
MouseClick ( "left" , 690, 595)
Sleep (6000)
  $i = 0
  $n = 0
ElseIf $n = 18 Then

ControlSend ( "MapleStory", "", "", "{Y 1}")
  Sleep(800)
  ControlSend ( "MapleStory", "", "", "{S 1}")
   Sleep(1500)
  $n = 0

ElseIf Mod($i, 2)= 0 Then
Send ("{RIGHT down}")
Sleep(60)
Send ("{RIGHT up}")
Sleep(500)
ControlSend ( "MapleStory", "", "", "{D 1}")
Sleep(1100)
ControlSend ( "MapleStory", "", "", "{E 1}")
Sleep(1100)
ControlSend ( "MapleStory", "", "", "{E 1}")
Sleep(1100)
ControlSend ( "MapleStory", "", "", "{E 1}")
Sleep(1100)
ControlSend ( "MapleStory", "", "", "{E 1}")
Sleep(1100)
ControlSend ( "MapleStory", "", "", "{E 1}")
Sleep(1100)
ControlSend ( "MapleStory", "", "", "{E 1}")
Sleep(1100)
   if Mod ($i, 3) = 0 Then
	ControlSend ( "MapleStory", "", "", "{W 1}")
	Sleep(400)
ControlSend ( "MapleStory", "", "", "{W 1}")
	Sleep(400)
ControlSend ( "MapleStory", "", "", "{W 1}")
	Sleep(400)
	EndIf
Sleep(1100)
$i = $i + 1
$n = $n + 1


ElseIf Mod($i, 2) = 1 Then
Send ("{LEFT down}")
Sleep(60)
Send ("{LEFT up}")
Sleep(500)
ControlSend ( "MapleStory", "", "", "{D 1}")
Sleep(1100)
ControlSend ( "MapleStory", "", "", "{E 1}")
Sleep(1100)
ControlSend ( "MapleStory", "", "", "{E 1}")
Sleep(1100)
ControlSend ( "MapleStory", "", "", "{E 1}")
Sleep(1100)
ControlSend ( "MapleStory", "", "", "{E 1}")
Sleep(1100)
ControlSend ( "MapleStory", "", "", "{E 1}")
Sleep(1100)
ControlSend ( "MapleStory", "", "", "{E 1}")
Sleep(1100)
 if Mod ($i, 3) = 0 Then
	ControlSend ( "MapleStory", "", "", "{W 1}")
	Sleep(400)
ControlSend ( "MapleStory", "", "", "{W 1}")
	Sleep(400)
ControlSend ( "MapleStory", "", "", "{W 1}")
	Sleep(400)
	EndIf
$i = $i + 1
$n = $n + 1
EndIf
WEnd

Func TogglePause()
    $Paused = Not $Paused
    While $Paused
        Sleep(100)
        ToolTip('Script is "Paused"', 0, 0)
    WEnd
    ToolTip("")
EndFunc
