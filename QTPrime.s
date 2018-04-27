.data
N : .word 0
X : .word 1, 2, 4, 5, 6
M : .word 2
prompt: .asciiz "Enter the number"
prime : .asciiz "Prime number"
nprime : .asciiz "Not aPrime number"

.globl main
.text
main:

lw $s1,M
la $t1,X
lw $s3,N

li $v0,4		#printing string
la $a0,prompt
syscall

li $v0,5
syscall

move $s0,$v0	#taking input


loop:

div $s0,$s1
mfhi $a1
beq $a1,0,nprime1
addi $s1,$s1,1
bne $s0,$s1,loop


j prime1



prime1:
li $v0,4		#printing string
la $a0,prime
syscall
j end			#jump to label 'end'


nprime1:
li $v0,4		#printing string
la $a0,nprime
syscall

end:

li $v0,10

syscall
