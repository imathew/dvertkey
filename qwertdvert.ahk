; qwertdvert
; AutoHotKey script
; Sends the Dvorak equivalent of a Qwerty key, unless the ctrl, alt, and/or win keys are pressed
; Assumes that a Qwerty layout is active in Windows
#NoEnv
#UseHook
SendMode Input

; -- Pattern --
; First row is the single key qwerty-to-dvorak transform, the next three rows are when holding a modifier
; Wildcard (*) is zero or more other modifier keys, catering for ctrl-alt or ctrl-alt-shift etc.
; Shift alone is not transformed (in order to type capitals), so we need to provide a transform  for each other case
;
; <key>::<dvorakkey>
; <wildcard>+ctrl+<key>::
; <wildcard>+alt+<key>::
; <wildcard>+win+<key>::Send {Blind}<key>

; -- Number row --
-::[
*^-::
*!-::
*#-::Send {Blind}-

=::]
*^=::
*!=::
*#=::Send {Blind}=

; -- Top letter row --
q::'
*^q::
*!q::
*#q::Send {Blind}q

w::,
*^w::
*!w::
*#w::Send {Blind}w

e::.
*^e::
*!e::
*#e::Send {Blind}e

r::p
*^r::
*!r::
*#r::Send {Blind}r

t::y
*^t::
*!t::
*#t::Send {Blind}t

y::f
*^y::
*!y::
*#y::Send {Blind}y

u::g
*^u::
*!u::
*#u::Send {Blind}u

i::c
*^i::
*!i::
*#i::Send {Blind}i

o::r
*^o::
*!o::
*#o::Send {Blind}o

p::l
*^p::
*!p::
*#p::Send {Blind}p

[::/
*^[::
*![::
*#[::Send {Blind}[

]::=
*^]::
*!]::
*#]::Send {Blind}]


; -- Middle letter row --
s::o
*^s::
*!s::
*#s::Send {Blind}s

d::e
*^d::
*!d::
*#d::Send {Blind}d

f::u
*^f::
*!f::
*#f::Send {Blind}f

g::i
*^g::
*!g::
*#g::Send {Blind}g

h::d
*^h::
*!h::
*#h::Send {Blind}h

j::h
*^j::
*!j::
*#j::Send {Blind}j

k::t
*^k::
*!k::
*#k::Send {Blind}k

l::n
*^l::
*!l::
*#l::Send {Blind}l

`;::s
*^`;::
*!`;::
*#`;::Send {Blind}`;

'::-
*^'::
*!'::
*#'::Send {Blind}'

; -- Bottom letter row --
z::`;
*^z::
*!z::
*#z::Send {Blind}z

x::q
*^x::
*!x::
*#x::Send {Blind}x

c::j
*^c::
*!c::
*#c::Send {Blind}c

v::k
*^v::
*!v::
*#v::Send {Blind}v

b::x
*^b::
*!b::
*#b::Send {Blind}b

n::b
*^n::
*!n::
*#n::Send {Blind}n

,::w
*^,::
*!,::
*#,::Send {Blind},

.::v
*^.::
*!.::
*#.::Send {Blind}.

/::z
*^/::
*!/::
*#/::Send {Blind}s

; -- End --
