.data
prompt: .asciiz "\n Enter the string \n" str: .space 32
res: .asciiz "\n The reversed string is \n"
.globl main
.text
main:
li $v0,4
la $a0,prompt
syscall
li $v0,8
la $a0,str
syscall
li $v0,4
la $a0,res
syscall
li $t2,0
strLen:
lb $t0, str($t2)
add $t2, $t2, 1
bne $t0, $zero, strLen
li $v0, 11
Loop:
sub $t2, $t2, 1
la $t0, str($t2)
lb $a0, ($t0)
syscall
bnez $t2, Loop
li $v0, 10
syscall
