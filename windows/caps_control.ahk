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

+Enter::Send,{F9}

CapsLock & Enter::Send,{Escape}

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
