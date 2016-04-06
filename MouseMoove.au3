#NoTrayIcon
HotKeySet("{ESC}","stopwile")
Local $x0 = 300
Local $y0 = 300
Local $x
Local $y
Local $R = 150
Local $f = 0
Local $R1 = 30


;~ Send("{CapsLock on}")
;~ Local $Flag = False
;~ $ROM = DriveGetDrive("CDROM")
;~ If Not @error Then
;~     For $i = 1 to $ROM[0]
;~         CDTray($ROM[$i] , "Open")
;~     Next
;~ EndIf
$cnt = 11
While 1
;~    Send("{NumLock toggle}") ;Включает NumLock
;~    Send("{CapsLock toggle}") ;Выключает CapsLock
;~    Send("{ScrollLock toggle}") ;Переключает состояние ScrollLock
if $cnt >= 1 Then
  $x = $x0 + $R * Cos($f)
  $y = $y0 + $R * Sin($f)
  if $f <= (2* 3.14) Then
	 $f = $f + 0.01
	 if $f >= (2* 3.14) Then
;~ 		$Flag = False
		 $f = 0
	  EndIf
	  $cnt = 0
  EndIf

Else
     $z = $x + $R1 * Cos($f)
  $z1 = $y + $R1 * Sin($f)
  if $f <= (2* 3.14) Then
	 $f = $f + 0.01
	 if $f >= (2* 3.14) Then
;~ 		$Flag = False
		 $f = 0
	  EndIf
	  $cnt = $cnt + 1
  EndIf
   MouseMove($z,$z1,1)
EndIf
;~   If $Flag = False Then
;~ 	 $f = $f - 0.1
;~ 	 if $f <= 0 Then
;~ 		$Flag = True
;~ 	 EndIf
;~ 	 EndIf

MouseMove($x,$y,1)


WEnd

Func stopwile()
   Exit 0
   EndFunc