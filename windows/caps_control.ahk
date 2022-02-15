;
; AutoHotkey Version: 1.x
; Language:       English
; Platform:       Win9x/NT
; Written by Philipp Otto, Germany
;
; Script Function:
;	Template script (you can customize this template by editing "ShellNew\Template.ahk" in your Windows folder)
;

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetCapsLockState, AlwaysOff

CoordMode, Mouse, Screen

CapsLock & H::
       if getkeystate("shift") = 0
			if getkeystate("alt") = 0
                Send,^{Left}
            else
                Send,!^{PgUp}
       else
               Send,+^{Left}
return

CapsLock & I::
       if getkeystate("shift") = 0
			if getkeystate("alt") = 0
                if getkeystate("Ctrl") = 0
                    Send,{Up}
                else
                    Send, !{Up}
			else
				Send,!^{Numpad8}
       else
               Send,{PgUp}
return

CapsLock & J::
       if getkeystate("shift") = 0
			if getkeystate("alt") = 0
                if getkeystate("Ctrl") = 0
                    Send,{Left}
                else
                    Send, !{Left}
			else
               Send,!^{Numpad4}
       else
               Send,^{Left}
return

CapsLock & K::
       if getkeystate("shift") = 0
			if getkeystate("alt") = 0
                if getkeystate("Ctrl") = 0
                    Send,{Down}
                else
                    Send, !{Down}
			else
               Send,!^{Numpad5}
       else
               Send,{PgDn}
return

CapsLock & L::
       if getkeystate("shift") = 0
			if getkeystate("alt") = 0
                if getkeystate("Ctrl") = 0
                    Send,{Right}
                else
                    Send, !{Right}
			else
               Send,!^{Numpad6}
       else
               Send,^{Right}
return

CapsLock & M::
    if getkeystate("alt") = 0
        Send,{{}
    else
        Send,!^{Numpad1}
return

CapsLock & O::
       if getkeystate("shift") = 0
			if getkeystate("alt") = 0
                Send,{End}
            else
                Send,!^{Numpad9}
       else
               Send,+{End}
return

CapsLock & U::
       if getkeystate("shift") = 0
			if getkeystate("alt") = 0
                Send,{Home}
            else
                Send,!^{Numpad7}
       else
               Send,+{Home}
return

CapsLock & Space::
    Send,_
return

CapsLock & 1:: Send, #1
CapsLock & 2:: Send, #2
CapsLock & 3:: Send, #3
CapsLock & 4:: Send, #4
CapsLock & 5:: Send, #5

CapsLock & 9::
       if getkeystate("shift") = 0
            Send,{[}
       else
            Send,{{}
return

CapsLock & 0::
       if getkeystate("shift") = 0
            Send,{]}
       else
            Send,{}}
return

CapsLock & 8::
       if getkeystate("shift") = 0
			if getkeystate("alt") = 0
                Send,^{Up}
            else
                Send,#{Up}
       else
               Send,+^{Up}
return

CapsLock & ,::
       if getkeystate("shift") = 0
			if getkeystate("alt") = 0
                Send,^{Down}
            else
                Send,!^{Numpad2}
       else
               Send,+^{Down}
return

CapsLock & .::
    if getkeystate("alt") = 0
        Send,{}}
    else
        Send,!^{Numpad3}
return

; semicolon
CapsLock & SC027::
    if getkeystate("alt") = 0
        Send,{F7}
    else
        Send,^!{PgDn}
return

CapsLock & /::
       if getkeystate("shift") = 0
            Send,\
       else
            Send,?
return

+Enter::
	if WinActive("ahk_exe WindowsTerminal.exe")
		Send,{F9}
	else
		Send,+{Enter}
return

CapsLock & Enter::Send,{Escape}

CapsLock & Backspace::Send,{Delete}

!`::Send,!{F4}
!Esc::Send,!{F4}

;Used with WinSplit
!^,:: Send, !^{Numpad2}
!^.:: Send, !^{Numpad3}
!^;:: Send, !^{Numpad6}
:o:\pyserver::python -m SimpleHTTPServer 8888 &

;More ways to hit Escape
CapsLock &  Tab:: Send, {Escape}

;For C++
:o:\std::std::

;Multi monitor stuff
F13:: 
MouseGetPos, xpos, ypos
Sleep, 10
if (xpos>0) {
  MouseMove, -1920, 0, 0, R
} else {
  MouseMove, 1920, 0, 0, R
}
return

;compatibility for control-Z in odd applications
#z::Send, ^z

; fixes for 60% keyboard
CapsLock & '::
	Send,``
return
+Esc::~

;rename in TTS
CapsLock & R::
	BlockInput, On
	Click, 0, 0, Right, Relative
	Sleep, 50
	MouseMove, 125, 9999, 0, R
	MouseMove, 0, -45, 0, R
	Sleep, 200
	Click, 0, 0, Relative
	Sleep, 50
	Send, {Home}
	BlockInput, Off
return

;apply deck backd in MPC
CapsLock & D::
	WinActivate, Playing Card - Google Chrome ahk_class Chrome_WidgetWin_1
	Click, 1152, 419, 0
	Sleep, 62
	Click, 1152, 419 Left, Down
	Sleep, 125
	Click, 1145, 419, 0
	Click, 1141, 419, 0
	Sleep, 16
	Click, 1122, 419, 0
	Click, 1118, 419, 0
	Sleep, 15
	Click, 1088, 417, 0
	Click, 1081, 417, 0
	Sleep, 16
	Click, 1039, 414, 0
	Click, 1029, 413, 0
	Sleep, 16
	Click, 986, 410, 0
	Click, 979, 410, 0
	Sleep, 15
	Click, 926, 407, 0
	Click, 918, 407, 0
	Sleep, 16
	Click, 865, 404, 0
	Click, 848, 404, 0
	Sleep, 16
	Click, 787, 401, 0
	Click, 772, 400, 0
	Sleep, 15
	Click, 722, 397, 0
	Click, 710, 396, 0
	Sleep, 16
	Click, 667, 393, 0
	Click, 659, 392, 0
	Sleep, 15
	Click, 625, 389, 0
	Click, 620, 389, 0
	Sleep, 16
	Click, 588, 386, 0
	Click, 584, 385, 0
	Sleep, 16
	Click, 566, 383, 0
	Click, 565, 382, 0
	Sleep, 15
	Click, 560, 381, 0
	Click, 559, 381, 0
	Sleep, 16
	Click, 557, 380, 0
	Sleep, 187
	Click, 557, 380 Left, Up
	Sleep, 47
	Click, 565, 380, 0
	Click, 567, 380, 0
	Sleep, 16
	Click, 594, 382, 0
	Click, 599, 382, 0
	Sleep, 16
	Click, 658, 387, 0
	Click, 665, 388, 0
	Sleep, 15
	Click, 704, 391, 0
	Click, 712, 391, 0
	Sleep, 16
	Click, 798, 397, 0
	Click, 807, 398, 0
	Sleep, 15
	Click, 866, 403, 0
	Click, 880, 404, 0
	Sleep, 16
	Click, 937, 410, 0
	Click, 946, 411, 0
	Sleep, 16
	Click, 1003, 416, 0
	Click, 1010, 417, 0
	Sleep, 15
	Click, 1049, 421, 0
	Click, 1054, 421, 0
	Sleep, 16
	Click, 1087, 425, 0
	Click, 1093, 426, 0
	Sleep, 16
	Click, 1115, 430, 0
	Click, 1118, 430, 0
	Sleep, 15
	Click, 1131, 433, 0
	Click, 1132, 433, 0
	Sleep, 16
	Click, 1136, 434, 0
	Click, 1136, 435, 0
	Sleep, 172
	Click, 1137, 435, 0
	Sleep, 15
	Click, 1138, 434, 0
	Sleep, 32
	Click, 1140, 433, 0
	Sleep, 15
	Click, 1140, 432, 0
	Sleep, 16
	Click, 1141, 431, 0
	Sleep, 31
	Click, 1142, 431, 0
	Sleep, 16
	Click, 1142, 431 Left, Down
	Sleep, 47
	Click, 1140, 431, 0
	Sleep, 15
	Click, 1126, 431, 0
	Click, 1122, 431, 0
	Sleep, 16
	Click, 1097, 431, 0
	Click, 1091, 431, 0
	Sleep, 15
	Click, 1056, 430, 0
	Click, 1055, 430, 0
	Sleep, 16
	Click, 1013, 428, 0
	Click, 1006, 428, 0
	Sleep, 16
	Click, 953, 425, 0
	Click, 948, 425, 0
	Sleep, 15
	Click, 907, 423, 0
	Click, 894, 423, 0
	Sleep, 16
	Click, 857, 422, 0
	Click, 848, 421, 0
	Sleep, 16
	Click, 798, 419, 0
	Click, 792, 418, 0
	Sleep, 15
	Click, 763, 416, 0
	Click, 759, 416, 0
	Sleep, 16
	Click, 738, 414, 0
	Click, 736, 414, 0
	Sleep, 15
	Click, 725, 413, 0
	Sleep, 16
	Click, 721, 412, 0
	Click, 720, 412, 0
	Sleep, 203
	Click, 720, 412 Left, Up
	Sleep, 31
	Click, 721, 412, 0
	Click, 723, 412, 0
	Sleep, 16
	Click, 745, 412, 0
	Click, 748, 412, 0
	Sleep, 16
	Click, 769, 414, 0
	Click, 773, 414, 0
	Sleep, 15
	Click, 812, 417, 0
	Click, 816, 418, 0
	Sleep, 16
	Click, 865, 420, 0
	Click, 874, 421, 0
	Sleep, 16
	Click, 919, 421, 0
	Click, 928, 422, 0
	Sleep, 15
	Click, 975, 425, 0
	Click, 982, 426, 0
	Sleep, 16
	Click, 1021, 429, 0
	Click, 1026, 429, 0
	Sleep, 15
	Click, 1058, 431, 0
	Click, 1061, 432, 0
	Sleep, 16
	Click, 1086, 433, 0
	Click, 1090, 433, 0
	Sleep, 16
	Click, 1105, 433, 0
	Sleep, 15
	Click, 1113, 433, 0
	Sleep, 16
	Click, 1115, 433, 0
	Click, 1116, 433, 0
	Sleep, 109
	Click, 1117, 433, 0
	Sleep, 16
	Click, 1121, 432, 0
	Sleep, 16
	Click, 1125, 431, 0
	Sleep, 15
	Click, 1127, 431, 0
	Sleep, 16
	Click, 1129, 430, 0
	Sleep, 15
	Click, 1131, 429, 0
	Click, 1132, 429, 0
	Sleep, 16
	Click, 1135, 428, 0
	Sleep, 16
	Click, 1141, 428, 0
	Sleep, 15
	Click, 1148, 427, 0
	Click, 1149, 427, 0
	Sleep, 16
	Click, 1154, 426, 0
	Sleep, 16
	Click, 1157, 426, 0
	Sleep, 31
	Click, 1157, 426 Left, Down
	Sleep, 31
	Click, 1156, 426, 0
	Click, 1155, 426, 0
	Sleep, 16
	Click, 1145, 426, 0
	Click, 1142, 426, 0
	Sleep, 15
	Click, 1127, 425, 0
	Click, 1121, 425, 0
	Sleep, 16
	Click, 1100, 423, 0
	Click, 1096, 423, 0
	Sleep, 16
	Click, 1068, 422, 0
	Click, 1062, 422, 0
	Sleep, 15
	Click, 1033, 420, 0
	Click, 1028, 420, 0
	Sleep, 16
	Click, 986, 419, 0
	Click, 979, 419, 0
	Sleep, 15
	Click, 954, 418, 0
	Click, 950, 417, 0
	Sleep, 16
	Click, 925, 416, 0
	Click, 920, 416, 0
	Sleep, 16
	Click, 902, 416, 0
	Sleep, 15
	Click, 880, 416, 0
	Click, 875, 416, 0
	Sleep, 16
	Click, 856, 415, 0
	Click, 855, 415, 0
	Sleep, 16
	Click, 846, 414, 0
	Click, 845, 414, 0
	Sleep, 15
	Click, 840, 414, 0
	Click, 839, 414, 0
	Sleep, 141
	Click, 839, 413, 0
	Sleep, 15
	Click, 839, 413 Left, Up
	Sleep, 47
	Click, 843, 413, 0
	Sleep, 16
	Click, 859, 413, 0
	Click, 862, 413, 0
	Sleep, 16
	Click, 888, 413, 0
	Click, 893, 414, 0
	Sleep, 15
	Click, 925, 415, 0
	Click, 929, 415, 0
	Sleep, 16
	Click, 964, 417, 0
	Click, 970, 417, 0
	Sleep, 15
	Click, 1010, 418, 0
	Click, 1015, 418, 0
	Sleep, 16
	Click, 1045, 420, 0
	Click, 1051, 421, 0
	Sleep, 16
	Click, 1078, 422, 0
	Click, 1081, 422, 0
	Sleep, 15
	Click, 1109, 423, 0
	Click, 1114, 424, 0
	Sleep, 16
	Click, 1141, 425, 0
	Click, 1144, 425, 0
	Sleep, 16
	Click, 1160, 427, 0
	Click, 1162, 427, 0
	Sleep, 15
	Click, 1171, 427, 0
	Click, 1173, 428, 0
	Sleep, 16
	Click, 1178, 428, 0
	Sleep, 15
	Click, 1179, 428, 0
	Sleep, 188
	Click, 1178, 428, 0
	Sleep, 16
	Click, 1175, 428, 0
	Sleep, 15
	Click, 1170, 428, 0
	Sleep, 16
	Click, 1164, 428, 0
	Click, 1163, 428, 0
	Sleep, 15
	Click, 1157, 428, 0
	Sleep, 16
	Click, 1154, 428, 0
	Sleep, 47
	Click, 1154, 428 Left, Down
	Sleep, 62
	Click, 1150, 428, 0
	Click, 1149, 428, 0
	Sleep, 16
	Click, 1142, 428, 0
	Click, 1141, 428, 0
	Sleep, 16
	Click, 1128, 428, 0
	Click, 1126, 428, 0
	Sleep, 15
	Click, 1109, 426, 0
	Click, 1106, 426, 0
	Sleep, 16
	Click, 1086, 424, 0
	Click, 1081, 423, 0
	Sleep, 16
	Click, 1061, 422, 0
	Click, 1058, 422, 0
	Sleep, 15
	Click, 1038, 420, 0
	Click, 1035, 420, 0
	Sleep, 16
	Click, 1022, 419, 0
	Click, 1021, 419, 0
	Sleep, 15
	Click, 1015, 419, 0
	Click, 1014, 419, 0
	Sleep, 16
	Click, 1013, 419, 0
	Sleep, 516
	Click, 1013, 419 Left, Up
	Sleep, 50
	Send, {Down}{Down}{Down}{Down}{Down}{Down}
return
