Local $i = 0
Local $n = 0
Local $p = 1
Local $t = 0
While $p>0
   
Send("{RIGHT down}")
Sleep(150)
Send("{RIGHT up}")
Sleep(400)
Sleep (2000)

Send("{LEFT down}")
  Sleep (100)
  Send ("{SPACE down}")
  Sleep (40)
  Send("{SPACE up}")
  Send("{LEFT up}")
  Send("{UP down}")
  Sleep(3000)
  Send("{UP up}")
  Send("{RIGHT down}")
  Sleep (100)
  Send("{RIGHT up}")
  while $t < 10
	 Send ("{R 1}")
	 Sleep (700)
	 $t = $t + 1
	 WEnd
	 Send("{RIGHT down}")
  Sleep (60)
  Send ("{RIGHT up}")
	 WEnd