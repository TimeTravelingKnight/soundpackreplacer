.arm.little
.Open "Vol2.pck","Output/Vol2.pck",0
size equ filesize("Vol2.pck")
.org 0x3A196FF
.incbin "wem/joey_A2498ED0.wem"  


.org 0x1BA6C98
.incbin "wem/joeytheme.wem"

.org 0xD093ED6
.incbin "wem/shape.wem"

.org 0x7865FE7
.incbin "wem/piece.wem"

.org 0x57EFF0F
.incbin "wem/nice.wem"


.org size
Noko:
.incbin "wem/nokonoo5_3796D5AC.wem"


.org 0x263C
.dw filesize("wem/nokonoo5_3796D5AC.wem")
.dw Noko


.Close