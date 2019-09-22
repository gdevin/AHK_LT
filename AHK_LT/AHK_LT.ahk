
; Finish Race
#IfWinActive ahk_exe LiveTime.exe
^f::
HalfSW := A_ScreenWidth / 2
HalfSH := A_ScreenHeight /2
ImageSearch, FoundX, FoundY, 0, %HalfSH%, %HalfSW%, A_ScreenHeight, *128 FinishRace.JPG
FoundX += 40
FoundY += 10
Click, %FoundX%, %FoundY%
Return

; Wreck (False Start)
#IfWinActive ahk_exe LiveTime.exe
^w::
HalfSW := A_ScreenWidth / 2
HalfSH := A_ScreenHeight /2
ImageSearch, FoundX, FoundY, 0, %HalfSH%, %HalfSW%, A_ScreenHeight, *128 FalseStart.JPG
FoundX += 40
FoundY += 10
Click, %FoundX%, %FoundY%
Return

; Click Yes (same as alt-y)
#IfWinActive ahk_exe LiveTime.exe
^y::
Send !y ; ! = alt
Return

; Next Round
#IfWinActive ahk_exe LiveTime.exe
^g::
;Schedule
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *128 Schedule.JPG
FoundX += 40
FoundY += 10
Click, %FoundX%, %FoundY%
Sleep, 1000
;Create Next Round
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *128 CreateNextRound.JPG
FoundX += 40
FoundY += 10
Click, %FoundX%, %FoundY%
Sleep, 1000
;Generate
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *128 Generate.JPG
FoundX += 40
FoundY += 10
Click, %FoundX%, %FoundY% 
Sleep, 2000
;Racing
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *128 Racing.JPG
FoundX += 40
FoundY += 10
Click, %FoundX%, %FoundY%
Return
