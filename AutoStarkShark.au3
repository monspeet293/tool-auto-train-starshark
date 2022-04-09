#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=..\IconShark.ico
#AutoIt3Wrapper_Res_Comment=Auto Train Aventure & Arena
#AutoIt3Wrapper_Res_Fileversion=1.0.1.4
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#include <ButtonConstants.au3>
#include <ComboConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include <GDIPlus.au3>

;MsgBox($MB_SYSTEMMODAL, "", "The die landed on number " & Random(1, 99, 1) & ".")
#Region ### START Koda GUI section ### Form=d:\tools\autoil\ui\auto.kxf
$Form1 = GUICreate("Auto StarShark", 281, 280, 267, 130)
GUISetBkColor(0x000000)
$Port = GUICtrlCreateLabel("Port", 24, 38, 63, 31)
GUICtrlSetFont(-1, 16, 800, 0, "Snap ITC")
GUICtrlSetColor(-1, 0xFFFFFF)
$Turn = GUICtrlCreateLabel("Turn", 24, 128, 63, 31)
GUICtrlSetFont(-1, 16, 800, 0, "Snap ITC")
GUICtrlSetColor(-1, 0xFFFFFF)
$Position = GUICtrlCreateLabel("Position", 24, 80, 112, 31)
GUICtrlSetFont(-1, 16, 800, 0, "Snap ITC")
GUICtrlSetColor(-1, 0xFFFFFF)
$BtnTrain = GUICtrlCreateButton("Train", 152, 125, 105, 33)
GUICtrlSetFont(-1, 14, 800, 0, "Showcard Gothic")
;$inputPort = GUICtrlCreateInput("", 104, 40, 153, 25)
$inputPort = GUICtrlCreateCombo("List Port", 104, 40, 153, 25, BitOR($CBS_DROPDOWN,$CBS_AUTOHSCROLL))
GUICtrlSetData (-1 , GetDataPort())
GUICtrlSetFont(-1, 10, 400, 0, "Snap ITC")
$cbTurn = GUICtrlCreateCombo("10", 96, 128, 49, 25, BitOR($CBS_DROPDOWN,$CBS_AUTOHSCROLL))
GUICtrlSetData (-1 , "9|8|7|6|5|4|3|2|1|0")
GUICtrlSetFont(-1, 10, 800, 0, "Snap ITC")
$Label3 = GUICtrlCreateLabel("b y  S l u r p  F i r e",  100, 14, 100, 17)
GUICtrlSetFont(-1, 9, 800, 0, "Times New Roman")
GUICtrlSetColor(-1, 0xFFFFFF)
GUICtrlSetBkColor(-1, 0x000000)
;$rd2Star = GUICtrlCreateRadio("", 24, 16, 17, 17)
;$rd3Star = GUICtrlCreateRadio("", 104, 16, 17, 17)
;$rd4Star = GUICtrlCreateRadio("", 184, 16, 17, 17)
;GUICtrlSetState(-1, $GUI_CHECKED)
;$Label4 = GUICtrlCreateLabel("2 Star", 40, 16, 56, 21)
;GUICtrlSetFont(-1, 9, 800, 0, "Snap ITC")
;GUICtrlSetColor(-1, 0xFFFFFF)
;GUICtrlSetBkColor(-1, 0x000000)
;$Label5 = GUICtrlCreateLabel("3 Star", 120, 16, 57, 21)
;GUICtrlSetFont(-1, 9, 800, 0, "Snap ITC")
;GUICtrlSetColor(-1, 0xFFFFFF)
;GUICtrlSetBkColor(-1, 0x000000)
;$Label2 = GUICtrlCreateLabel("4 Star", 200, 16, 57, 21)
;GUICtrlSetFont(-1, 9, 800, 0, "Snap ITC")
;GUICtrlSetColor(-1, 0xFFFFFF)
;GUICtrlSetBkColor(-1, 0x000000)
$CheckArena = GUICtrlCreateCheckbox("", 128, 176, 17, 33)
;GUICtrlSetState(-1, $GUI_CHECKED)
GUICtrlSetFont(-1, 16, 800, 0, "Snap ITC")
GUICtrlSetColor(-1, 0xFFFFFF)
GUICtrlSetBkColor(-1, 0x000000)
$Label6 = GUICtrlCreateLabel("Arena", 24, 176, 79, 31)
GUICtrlSetFont(-1, 16, 800, 0, "Snap ITC")
GUICtrlSetColor(-1, 0xFFFFFF)
GUICtrlSetBkColor(-1, 0x000000)
$cbPosition = GUICtrlCreateCombo("Top-Left", 152, 80, 105, 25, BitOR($CBS_DROPDOWN,$CBS_AUTOHSCROLL))
GUICtrlSetData (-1 , "Top-Right|Bot-Left|Bot-Right")
GUICtrlSetFont(-1, 10, 400, 0, "Snap ITC")
$Label1 = GUICtrlCreateLabel("Reward", 24, 224, 99, 31)
GUICtrlSetFont(-1, 16, 800, 0, "Snap ITC")
GUICtrlSetColor(-1, 0xFFFFFF)
GUICtrlSetBkColor(-1, 0x000000)
$CheckReward = GUICtrlCreateCheckbox("", 128, 232, 17, 17)
;GUICtrlSetState(-1, $GUI_CHECKED)
;$BtnStop = GUICtrlCreateButton("Stop", 152, 176, 105, 33)
;GUICtrlSetFont(-1, 14, 800, 0, "Showcard Gothic")

$Label2 = GUICtrlCreateLabel("Rank", 160, 176, 66, 31)
GUICtrlSetFont(-1, 16, 800, 0, "Snap ITC")
GUICtrlSetColor(-1, 0xFFFFFF)
GUICtrlSetBkColor(-1, 0x000000)
$CheckRank = GUICtrlCreateCheckbox("", 240, 184, 17, 17)

$Label2 = GUICtrlCreateLabel("Star", 152, 224, 64, 31)
GUICtrlSetFont(-1, 16, 800, 0, "Snap ITC")
GUICtrlSetColor(-1, 0xFFFFFF)
GUICtrlSetBkColor(-1, 0x000000)
$cbStar = GUICtrlCreateCombo("1", 224, 224, 41, 25, BitOR($CBS_DROPDOWN,$CBS_AUTOHSCROLL))
GUICtrlSetData (-1 , "2|3|4")
GUICtrlSetFont(-1, 10, 400, 0, "Snap ITC")



GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###


;									Function Support

;Choose Card & Fight
Func chooseCard()
   ;Choose Card
   Local $x = 190
   Local $stringX = ''
   While $x <= 816
	  $stringX = String($x)
	  RunWait(@ComSpec & ' /c adb -s ' & $port & ' shell input swipe ' & $stringX & ' 408 ' & $stringX-70 & ' 408', "", @SW_HIDE)
	  $x = $x + 50
   WEnd

   ;Fight
   RunWait(@ComSpec & ' /c adb -s ' & $port & ' shell input tap 836 337' , "", @SW_HIDE)
EndFunc

;Get Position x & y
Func GetPosition($pos, ByRef $x, ByRef $y)
	If ($pos = "Top-Left") Then
		$x = 788
		$y = 360
	ElseIf ($pos = "Top-Right") Then
		$x = 1750
		$y = 360
	ElseIf ($pos = "Bot-Left") Then
		$x = 788
		$y = 876
	Else
		$x = 1750
		$y = 876
	EndIf
EndFunc

;Get port from cmd
Func _GetDOSOutput($sCommand)
   Local $iPID, $sOutput = ''
   $iPID = Run('"cmd"' & @ComSpec & '" /c' & $sCommand, "",@SW_HIDE, 2)
   While 1
      $sOutput &= StdoutRead($iPID,False, False)
      If @error Then
		ExitLoop
      EndIf
      Sleep(10)
   WEnd
   Return $sOutput
EndFunc

Func GetDataPort()
	Local $dataPort = ''
	Local $sString = StringReplace(StringReplace(StringTrimLeft(_GetDOSOutput('adb devices'), 27), 'device', ''), '	', '')
	      $sString = StringReplace(StringReplace(StringTrimLeft(_GetDOSOutput('adb devices'), 27), 'device', ''), '	', '')
	Local $arrPort = StringSplit($sString, @LF)
	For $i = 1 to $arrPort[0] Step +1
		$dataPort &= $arrPort[$i]
		If ($i < $arrPort[0]) Then
			$dataPort &= '|'
		EndIf
	Next
	Return $dataPort
EndFunc

;Open Box
Func OpenBox($xFight, $yFight)
	;Back Home
	RunWait(@ComSpec & ' /c adb -s ' & $port & ' shell input tap 830 38' , "", @SW_HIDE)
	RunWait(@ComSpec & ' /c adb -s ' & $port & ' shell input tap 830 38' , "", @SW_HIDE)

	;Reward
	RunWait(@ComSpec & ' /c adb -s ' & $port & ' shell input tap 46 364' , "", @SW_HIDE)

	$arrConfirm = PixelSearch($xFight-488, $yFight-160, $xFight-476, $yFight-147, 0xCDE6F0)
	While IsArray($arrConfirm) <> 1
		RunWait(@ComSpec & ' /c adb -s ' & $port & ' shell input tap 466 273' , "", @SW_HIDE)
			$arrConfirm = PixelSearch($xFight-488, $yFight-160, $xFight-476, $yFight-147, 0xCDE6F0)
	WEnd
	Sleep(500)
	RunWait(@ComSpec & ' /c adb -s ' & $port & ' shell input tap 464 292' , "", @SW_HIDE)
EndFunc

;Check Star
Func CheckStar()
	$check = GUICtrlRead($cbStar)
	If ($check == 3) Then
		RunWait(@ComSpec & ' /c adb -s ' & $port & ' shell input tap 500 239' , "", @SW_HIDE)
		Sleep(2000)
	ElseIf ($check == 4) Then
		RunWait(@ComSpec & ' /c adb -s ' & $port & ' shell input tap 709 213' , "", @SW_HIDE)
		Sleep(2000)
	ElseIf ($check == 2) Then
		RunWait(@ComSpec & ' /c adb -s ' & $port & ' shell input tap 361 212' , "", @SW_HIDE)
		Sleep(2000)
	EndIf
EndFunc

;Check stop
Func CheckStop()
	$checkSt = GUICtrlRead($CheckReward)
	If ($checkSt == 1) Then
		;ExitLoop
		MsgBox(0,"Notication", "Stop")
	EndIf
EndFunc

;								Function Train
;Adventure
Func accessAdventure($port, $turn, $xFight, $yFight)
	;Back 1 Star
	RunWait(@ComSpec & ' /c adb -s ' & $port & ' shell input tap 245 218' , "", @SW_HIDE)
	RunWait(@ComSpec & ' /c adb -s ' & $port & ' shell input tap 245 218' , "", @SW_HIDE)
	RunWait(@ComSpec & ' /c adb -s ' & $port & ' shell input tap 245 218' , "", @SW_HIDE)
	;Check 2 3 4 Star
	CheckStar()

	;Button Start
	If $turn > 0 Then
		RunWait(@ComSpec & ' /c adb -s ' & $port & ' shell input tap 730 388' , "", @SW_HIDE)
		Local $flag = $turn
	EndIf
	While $turn > 0
		;Start
		If $flag > $turn Then
			RunWait(@ComSpec & ' /c adb -s ' & $port & ' shell input tap 730 388' , "", @SW_HIDE)
			$flag = $turn
			Sleep(2000)
		EndIf

		;Check Button Fight
		$arr = PixelSearch($xFight, $yFight, $xFight+25, $yFight+20, 0xFFFFFD)
		If IsArray($arr) Then
			chooseCard()
		EndIf

		;Check Win
		Sleep(1500)
		$arrWin = PixelSearch($xFight, $yFight-225, $xFight+60, $yFight-184, 0xF7FCC1)
		$arrLose = PixelSearch($xFight, $yFight-225, $xFight+60, $yFight-184, 0x3E5B64)
		If IsArray($arrWin) Then
			Sleep(3000)
			RunWait(@ComSpec & ' /c adb -s ' & $port & ' shell input tap 813 397' , "", @SW_HIDE)
			$turn = $turn - 1
			Sleep(3000)
		ElseIf IsArray($arrLose) Then
			Sleep(3000)
			RunWait(@ComSpec & ' /c adb -s ' & $port & ' shell input tap 813 397' , "", @SW_HIDE)
			Sleep(3000)
			RunWait(@ComSpec & ' /c adb -s ' & $port & ' shell input tap 730 388' , "", @SW_HIDE)
		EndIf
	WEnd
EndFunc

;Arena
Func accessArena($port, $xFight, $yFight)
   Local $turn = 2
   Local $round = 6
   While $turn > 0
	  ;Start
	  ;Click Button Arena
	  RunWait(@ComSpec & ' /c adb -s ' & $port & ' shell input tap 800 180' , "", @SW_HIDE)
	  Sleep(2000)

	  ;Check Button Fight
	  $arrFight = PixelSearch($xFight, $yFight, $xFight+25, $yFight+20, 0xFFFFFD)

	  If IsArray($arrFight) Then
		$round = $round - 1
		;Check 6 round to Surender
		If ($round == 0) Then
			RunWait(@ComSpec & ' /c adb -s ' & $port & ' shell input tap 891 44' , "", @SW_HIDE)
			RunWait(@ComSpec & ' /c adb -s ' & $port & ' shell input tap 467 274' , "", @SW_HIDE)
			RunWait(@ComSpec & ' /c adb -s ' & $port & ' shell input tap 402 295' , "", @SW_HIDE)
			Sleep(3000)
			RunWait(@ComSpec & ' /c adb -s ' & $port & ' shell input tap 813 397' , "", @SW_HIDE)
			$turn = $turn - 1
			$round = 6
			Sleep(3000)
		EndIf
		RunWait(@ComSpec & ' /c adb -s ' & $port & ' shell input tap 836 337' , "", @SW_HIDE)
	  EndIf

	  ;Check lose before finish 6 round
	  $boolean = IsArray(PixelSearch($xFight, $yFight-225, $xFight+60, $yFight-184, 0x3E5B64))
	  If $boolean = 1  And $round < 6 Then
			Sleep(3000)
			RunWait(@ComSpec & ' /c adb -s ' & $port & ' shell input tap 813 397' , "", @SW_HIDE)
			$turn = $turn - 1
			$round = 6
			Sleep(3000)
	  EndIf

	  ;Check Button Dismiss
	  $arrDismiss = PixelSearch($xFight-371, $yFight-13, $xFight-286, $yFight+12, 0x832020)
	  If IsArray($arrDismiss) Then
		  ;Swipe about 5 card to Dismiss
		  RunWait(@ComSpec & ' /c adb -s ' & $port & ' shell input swipe 332 400 332 345', "", @SW_HIDE)
		  RunWait(@ComSpec & ' /c adb -s ' & $port & ' shell input swipe 402 400 402 345', "", @SW_HIDE)
		  RunWait(@ComSpec & ' /c adb -s ' & $port & ' shell input swipe 450 400 450 345', "", @SW_HIDE)
		  RunWait(@ComSpec & ' /c adb -s ' & $port & ' shell input swipe 512 400 512 345', "", @SW_HIDE)
		  RunWait(@ComSpec & ' /c adb -s ' & $port & ' shell input swipe 560 400 560 345', "", @SW_HIDE)
		  ;Click Button Dismiss
		  RunWait(@ComSpec & ' /c adb -s ' & $port & ' shell input tap 458 326' , "", @SW_HIDE)
	  EndIf

   WEnd

EndFunc

Func TrainDaily($port, $turn, $xFight, $yFight, $checkAre, $checkRw)
	;Aventure
	RunWait(@ComSpec & ' /c adb -s ' & $port & ' shell input tap 815 280' , "", @SW_HIDE)
	accessAdventure($port, $turn, $xFight, $yFight)

	;Back Home
	RunWait(@ComSpec & ' /c adb -s ' & $port & ' shell input tap 38 31' , "", @SW_HIDE)

	;Arena
	If ($checkAre == 1) Then
		accessArena($port, $xFight, $yFight)
		Sleep(3000)
	EndIf

	;CheckDaily
	RunWait(@ComSpec & ' /c adb -s ' & $port & ' shell input tap 203 429' , "", @SW_HIDE)
	RunWait(@ComSpec & ' /c adb -s ' & $port & ' shell input tap 402 302' , "", @SW_HIDE)
	RunWait(@ComSpec & ' /c adb -s ' & $port & ' shell input tap 717 182' , "", @SW_HIDE)


	;Reward
	If ($checkRw == 1) Then
		OpenBox($xFight, $yFight)
	EndIf
EndFunc

Func TrainRank($port, $xFight, $yFight)
	;Start
	;Click Button Arena
	RunWait(@ComSpec & ' /c adb -s ' & $port & ' shell input tap 850 180' , "", @SW_HIDE)
	Sleep(2000)
	While 1
		While 1
			$arrFight = PixelSearch($xFight, $yFight, $xFight+25, $yFight+20, 0xFFFFFD)
			$arrWin = PixelSearch($xFight, $yFight-225, $xFight+60, $yFight-184, 0xF7FCC1)
			$arrLose = PixelSearch($xFight, $yFight-225, $xFight+60, $yFight-184, 0x3E5B64)
			;Check Win or Lose
			If IsArray($arrWin) Or IsArray($arrLose) Then
				ExitLoop
			ElseIf IsArray($arrFight) Then
				chooseCard()
				Sleep(1500)
			EndIf
		WEnd
		Sleep(3000)
		RunWait(@ComSpec & ' /c adb -s ' & $port & ' shell input tap 813 397' , "", @SW_HIDE)
		Sleep(3000)
		RunWait(@ComSpec & ' /c adb -s ' & $port & ' shell input tap 850 180' , "", @SW_HIDE)
		RunWait(@ComSpec & ' /c adb -s ' & $port & ' shell input tap 850 180' , "", @SW_HIDE)
		Sleep(2000)
   WEnd
EndFunc

While 1
	$nMsg = GUIGetMsg()
	$checkStop = 0
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		Case $BtnTrain
			$port = GUICtrlRead($inputPort)
			$turn = GUICtrlRead($cbTurn)
			$xFight = 0
			$yFight = 0
			;$checkStar = GUICtrlRead($rd2Star)
			$checkAre = GUICtrlRead($CheckArena)
			$checkRw = GUICtrlRead($CheckReward)
			$checkRanked = GUICtrlRead($CheckRank)
			$position = GUICtrlRead($cbPosition)
			GetPosition($position, $xFight, $yFight)

			If ($checkRanked == 1) Then
				TrainRank($port, $xFight, $yFight)
			Else
				TrainDaily($port, $turn, $xFight, $yFight, $checkAre, $checkRw)
			EndIf

			;MsgBox(0,"Notication", $checkStar)
			MsgBox(0,"Notication", "Finish")
	EndSwitch
WEnd
