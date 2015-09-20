Local $i = 0
While $i<44
$i += 1
MouseClick ( "left" , 794, 609)
Sleep(500)
Send ("{Enter}")
Sleep(500)
MouseClick ("left")
Sleep(500)
Send ("{Enter}")
Sleep(500)
Send ("{Enter}")
Sleep(2500)
MouseClick ("left")
Sleep(500)
Send ("{Enter}")
Sleep(500)
MouseClick ("left")
Sleep(500)
Send ("{Enter}")
Sleep(500)

if $i == 44 then
  $i = 0
  Sleep(1620000)
   
   EndIf
   
WEnd
