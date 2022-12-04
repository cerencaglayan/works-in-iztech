.data
# String to be printed:
name: .asciiz "Enter the name of the song: "
duration: .asciiz "Enter the duration: "


.text ## Assembly language instructions go in text segment
main: ## Start of code section
	li $v0, 9
	li $a0, 8
	syscall
	move $t2, $v0
	    
    li $v0, 4
    la $a0, name
    syscall
#string alma:
	li $v0, 9
	li $a0, 64
	syscall
	move $t3, $v0

    li $v0, 8
    move $a0, $t3
    li $a1, 64
    syscall

    sw  $t3, 0($t2)
#integer alma:
    li $v0, 4
    la $a0, duration
    syscall

    li $v0, 5
    syscall
    move  $a0, $v0
    
    sw  $a0, 4($t2)

    move $a0, $t2
	jal printElement

    li $v0, 10 
    syscall

printElement:
#printing values : 
    li $v0, 4 
    lw $a0, 0($t2) 
    syscall 

    li $v0, 1 
    lw $a0, 4($t2) 
    syscall 

    jr $ra,


	    lw $t1 , 4($a0) #size ı aldım
	    addi $t1, $t1, 1
        sw $t1 , 4($a0) #size 1 arttı herhalde



        lw $t1 , 4($a0) #size ı aldım 
        mul $t2, $t1, 4
        li $t0, 0 


        lw $s1 , 8($a0) #arraysumuz
    	loop:
        
		
        
		lw $t0, 0($s1)
		beq $t0  , $zero , justgo

		bne $t0,$t2 ,loop



        lw $t0 , 8($a0) # array










