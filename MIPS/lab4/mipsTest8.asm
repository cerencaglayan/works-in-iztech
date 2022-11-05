
.data
msg: .asciiz "\nTotal is:"

.text
.globl main
		
main:

	li $a1, 5
	li $a2, 11
	
	jal addNumbers
	
	la $a0, msg
	li $v0, 4
	syscall
	
	li $v0, 1
	move $a0, $v1
	syscall
	
	
ending:	
	li $v0, 10
	syscall
	
	
addNumbers:
	add $v1, $a1, $a2
	jr $ra

	