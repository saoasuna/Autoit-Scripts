Global $Paused
HotKeySet("{`}", "TogglePause")
Local $i = 0
Local $n = 0
Local $p = 1
Local $t = 0
While $p>0
   
if $i < 50 Then
   
$i = $i + 1
Send ("{LCTRL}")
Sleep(1700)


ElseIf $i = 50 then

Send ("{LCTRL}")
Sleep(1700)
$i = $i + 1

Send ("{RIGHT 1}")
Sleep (100)
Send ("{LEFT 1}")
Sleep (500)

ElseIf $i < 100 Then

$i = $i + 1
Send ("{LCTRL}")
Sleep(1700)


else

Send("{T 1}")
Sleep(2000)
Send("{S 1}")
Sleep (2000)
Send("{Y 1}")
Sleep (1300)
Send("{Z 1}")
Sleep (1300)
Send ("{W 1}")
Sleep (600)
Send ("{RIGHT 1}")
Sleep (100)
Send ("{LEFT 1}")
Sleep (500)

$i = 0
$n = 0
$t = $t + 1
   if $t > 10 Then
	  Send("{L 1}")
	  $t = 0
   EndIf
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
