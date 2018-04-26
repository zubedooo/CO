Mov r0,#6
Mov r1,#1
loop:
mul r2,r1,r0
mov r1,r2
sub r0,r0,#1
cmp r0,#0
BNE loop
swi 0x11
