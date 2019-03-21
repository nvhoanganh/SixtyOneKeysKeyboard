;VimLikeArrows = 0

SetCapsLockState, AlwaysOff
#include %A_LineFile%\..\remote-desktop.ahk.
; diable the NumLock so as to only use the number pad for numbers
SetNumlockState, AlwaysOn

;-----------------------------------o
CapsLock & `::                                  ;CapsLock + ` | {CapsLock}
GetKeyState, CapsLockState, CapsLock, T
if CapsLockState = D
    SetCapsLockState, AlwaysOff
else
    SetCapsLockState, AlwaysOn
KeyWait, ``
return

CapsLock:: Send, { ESC }           ;ESC
CapsLock & ,::keyWithCtrlAltShift("Home", ",")      ;Home
CapsLock & .::keyWithCtrlAltShift("End", ".")      ;End
CapsLock & BackSpace:: keyWithCtrlAltShift("Del","BackSpace")       ;Del
CapsLock & `;:: Send, { AppsKey }               ;Context Menu
; CapsLock & ]:: Send, { Click Right }            ;Click Right
CapsLock & [:: Send, { Click Left }             ;Click Left
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

CapsLock & q:: Send ^q
CapsLock & w:: Send ^w
CapsLock & e:: Send ^e
CapsLock & r:: Send ^r
CapsLock & t:: Send ^t
CapsLock & y:: Send ^y
CapsLock & u::keyWithCtrlAltShift("PgUp","u")       ;PageUp
CapsLock & i::keyWithCtrlAltShift("Up", "i")        ;Up
CapsLock & o:: Send ^o
CapsLock & p:: Send ^p
;
CapsLock & a:: Send ^a
CapsLock & s:: Send ^s
CapsLock & d:: Send ^d
CapsLock & f:: Send ^f   
CapsLock & g:: Send ^g
CapsLock & h:: Send ^h
CapsLock & j::keyWithCtrlAltShift("Left", "j")      ;Left
CapsLock & k::keyWithCtrlAltShift("Down", "k")      ;Down
CapsLock & l::keyWithCtrlAltShift("Right", "l")     ;Right
;
CapsLock & z:: Send ^z
CapsLock & x:: Send ^x
CapsLock & c:: Send ^c
CapsLock & v:: Send ^v
CapsLock & b:: Send ^b
CapsLock & n::keyWithCtrlAltShift("PgDn","n")       ;PageDown
CapsLock & m:: Send ^m
CapsLock & Space:: Send, ^{Space}
CapsLock & Enter:: Send, ^{Enter}
AppsKey::WheelUp  
RCtrl::WheelDown  
RAlt::Ctrl