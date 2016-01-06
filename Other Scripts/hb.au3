Local $i = 0
While $i<44
Send ("{s}")
Sleep(80000)
   if $i = 20 Then
	  Send ("{Left 1}")
Sleep (500)
Send ("{LEFT 1}")
Sleep (500)
Send("{RIGHT down}")
Sleep(150)
Send("{RIGHT up}")
Sleep(400)
Send ("{LEFT 1}")
Sleep(400)
Send("{W 1}")
$i = 0
EndIf
WEnd
