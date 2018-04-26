LDR r0,= hello
LDR r1,=world
BL strcopy
swi 0x11
strcopy:
SUB sp,sp,#4
STR sp,[sp,#0]
mov r4,#0
L1:
ADD r2,r4,r1
LDRB r3,[r2,#0]
ADD r12,r4,r0
CMP r3,#0
BEQ L2
STRB R3,[R12,#0]
ADD r4,r4,#1
B L1
L2:
LDR r4,[SP,#0]
ADD SP,SP,#4
MOV PC, LR
hello:
.ascii "hellotoday\0"
world:
.ascii "world\0"
