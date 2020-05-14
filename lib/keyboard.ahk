;VimLikeArrows = 0

SetCapsLockState, AlwaysOff
#include %A_LineFile%\..\remote-desktop.ahk.
; diable the NumLock so as to only use the number pad for numbers
; SetNumlockState, AlwaysOn

;-----------------------------------o
CapsLock & `::                                  ;CapsLock + ` | {CapsLock}
GetKeyState, CapsLockState, CapsLock, T
if CapsLockState = D
    SetCapsLockState, AlwaysOff
else
    SetCapsLockState, AlwaysOn
return

; ~$CapsLock::
; KeyWait, CapsLock, U		; wait for z to be released
; KeyWait, CapsLock, D, T0.2		; and pressed again within 0.2 seconds
; if (ErrorLevel = 0)			; timed-out (only a single press
; CoordMode, Mouse, Screen
; MouseMove, (A_ScreenWidth // 2), (A_ScreenHeight // 2)
; Return


; move mouse to center of the screen
CapsLock & [:: 
CoordMode, Mouse, Screen
MouseMove, (A_ScreenWidth // 4), (A_ScreenHeight // 2)
Send, { Click Left }
Return

CapsLock & ]:: 
CoordMode, Mouse, Screen
MouseMove, (A_ScreenWidth // 5) * 4, (A_ScreenHeight // 5) * 4
Send, { Click Left }
Return


CapsLock & 1:: keyWithCtrlAltShift("F1","1")        ;F1 - F12
CapsLock & 2:: keyWithCtrlAltShift("F2","2")
CapsLock & 3:: keyWithCtrlAltShift("F3","3")
CapsLock & 4:: keyWithCtrlAltShift("F4","4")
CapsLock & 5:: keyWithCtrlAltShift("F5","5")
CapsLock & 6:: keyWithCtrlAltShift("F6","6")
CapsLock & 7:: keyWithCtrlAltShift("F7","7")
CapsLock & 8:: keyWithCtrlAltShift("F8","8")
CapsLock & 9:: keyWithCtrlAltShift("F9","9")
CapsLock & 0:: keyWithCtrlAltShift("F10","0")
Capslock & -:: keyWithCtrlAltShift("F11","-")
Capslock & =:: keyWithCtrlAltShift("F12","=")


CapsLock & q:: Send ^q           ;ESC
CapsLock & w:: Send ^w
CapsLock & e:: Send ^e
CapsLock & r:: Send ^r
CapsLock & t:: Send ^t
CapsLock & y:: Send ^y
CapsLock & o:: Send ^o 
CapsLock & p:: Send ^p
CapsLock & a:: Send ^a
CapsLock & d:: Send ^d
CapsLock & s:: Send ^s
CapsLock & f:: Send ^f   
CapsLock & g:: Send ^g
CapsLock & h:: Send, { BackSpace }
CapsLock & z:: Send ^z
CapsLock & x:: Send ^x
CapsLock & c:: Send ^c
CapsLock & v:: Send ^v
CapsLock & b:: Send ^b
CapsLock & \:: Send ^\


CapsLock & Space:: Send, { ESC }
!Space:: Send ^g
CapsLock & Enter:: Send, ^{Enter}
AppsKey::WheelUp
RAlt::LWin
CapsLock & ,::Browser_Back
CapsLock & .::Browser_Forward  
CapsLock & `;::keyWithCtrlAltShift("Home", ",")      ;Home
CapsLock & '::keyWithCtrlAltShift("End", ".")      ;End
CapsLock & BackSpace:: keyWithCtrlAltShift("Del","BackSpace")       ;Del
;CapsLock & `;:: Send, { AppsKey }               ;Context Menu
; CapsLock & ]:: Send, { Click Right }            ;Click Right
; CapsLock & [:: Send, { Click Left }             ;Click Left
LWin::LCtrl

CapsLock & u::keyWithCtrlAltShift("PgUp","u")       ;PageUp
CapsLock & m::keyWithCtrlAltShift("PgDn","m")       ;PageDown

; navigation keys
CapsLock & i::keyWithCtrlAltShift("Up", "i")        ;Up
CapsLock & j::keyWithCtrlAltShift("Left", "j")      ;Left
CapsLock & k::keyWithCtrlAltShift("Down", "k")      ;Down
CapsLock & l::keyWithCtrlAltShift("Right", "l")     ;Right
