Mov r0,#1
LDR r1,=0x00004000
Mov r2,#0
loop:
Str r0,[r1,r2]
Add r0,r0,#1
Add r2,r2,#4
Cmp r0,#6
BNE loop
Mov r3,#0
mov r4,#0
loop1:
LDR r0,[r1,r3]
ADD r3,r3,#4
ADD r4,r4,r0
CMP r3,#20
BNE loop1
swi 0x11
