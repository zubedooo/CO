.data
n: .word 3
msg_true: .asciiz "\n Prime Number \n"
msg_false: .asciiz "\n Not Prime Number \n"
msg: .asciiz "\n Enter N \n"
.globl main
.text
main:
li $v0,4
la $a0,msg
syscall
li $v0, 5
syscall
li $s1, 2
loop:
beq $v0, $s1, prime div $v0, $s1
mfhi $t0
beq $0, $t0, notprime addi $s1, $s1, 1
prime:
li $v0,4
la $a0,msg_true
syscall
j terminate
notprime:
li $v0,4
la $a0,msg_false
syscall
terminate:
      li $v0,10
syscall
