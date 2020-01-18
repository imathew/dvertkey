; dvertkey
; AutoHotKey script
; Sends the Qwerty equivalent of a Dvorak key when ctrl, alt, and/or win keys are pressed
#NoEnv
#UseHook
SendMode Input

; *** Selective layout section ***
; This whole section can be commented out if you only ever use dvorak
; Otherwise it can be used to ensure translation only occurs when using a specified layout

; Set this to the ID of your keyboard layout
; (Determine this yourself by uncommenting the 'Layout finder' snippet below)
dvorak := 0xF0020C09

get_layout() {
  SetFormat, Integer, H
  WinGet, WinID,, A
  threadID := DllCall("GetWindowThreadProcessId", "UInt", WinID, "UInt", 0)
  localeID := DllCall("GetKeyboardLayout", "UInt", threadID, "UInt")
  return localeID
}

; Layout finder
; 1. Ensure you're dvorak layout is active
; 2. Uncomment the three lines below these steps, save
; 3. Run the script, copy the value of 'what_is_my_layout' from the debug output and paste it above as the 'dvorak' value above
; 4. Stop the script, recomment these lines, save, enjoy
;what_is_my_layout:=get_layout()
;ListVars
;Pause

; only translate if using our specified dvorak layout
#If get_layout() = dvorak
; *** End selective layout section ***

; Wildcard (*) is zero or more other modifier keys, catering for ctrl-alt or ctrl-alt-shift etc.
; Shift alone is not transformed (in order to type capitals), so we need one for each other case
; <wildcard>+ctrl+<key>::
; <wildcard>+alt+<key>::
; <wildcard>+win+<key>::Send {Blind}<qwertykey>
*^[::
*![::
*#[::Send {Blind}-

*^]::
*!]::
*#]::Send {Blind}=

*^'::
*!'::
*#'::Send {Blind}q

*^,::
*!,::
*#,::Send {Blind}w

*^.::
*!.::
*#.::Send {Blind}e

*^p::
*!p::
*#p::Send {Blind}r

*^y::
*!y::
*#y::Send {Blind}t

*^f::
*!f::
*#f::Send {Blind}y

*^g::
*!g::
*#g::Send {Blind}u

*^c::
*!c::
*#c::Send {Blind}i

*^r::
*!r::
*#r::Send {Blind}o

*^l::
*!l::
*#l::Send {Blind}p

*^/::
*!/::
*#/::Send {Blind}[

*^=::
*!=::
*#=::Send {Blind}]

*^o::
*!o::
*#o::Send {Blind}s

*^e::
*!e::
*#e::Send {Blind}d

*^u::
*!u::
*#u::Send {Blind}f

*^i::
*!i::
*#i::Send {Blind}g

*^d::
*!d::
*#d::Send {Blind}h

*^h::
*!h::
*#h::Send {Blind}j

*^t::
*!t::
*#t::Send {Blind}k

*^n::
*!n::
*#n::Send {Blind}l

*^s::
*!s::
*#s::Send {Blind};

*^-::
*!-::
*#-::Send {Blind}'

*^;::
*!;::
*#;::Send {Blind}z

*^q::
*!q::
*#q::Send {Blind}x

*^j::
*!j::
*#j::Send {Blind}c

*^k::
*!k::
*#k::Send {Blind}v

*^x::
*!x::
*#x::Send {Blind}b

*^b::
*!b::
*#b::Send {Blind}n

*^w::
*!w::
*#w::Send {Blind},

*^v::
*!v::
*#v::Send {Blind}.

*^z::
*!z::
*#z::Send {Blind}/