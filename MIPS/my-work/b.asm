.data
prompt:     .asciiz     "asd"
prompt2:    .asciiz     "asd"


.text

   
main:


    la $a0 , prompt
    la $a1 , prompt2

compareString: 

	
	li $t0 , 0 #1 found 0 not found, 0 as default

    move $t3, $a0 # t3 first string 

    move  $t4, $a1 # t4 second string 

	# string compare loop (just like strcmp)
	loopforcompare:
		lb      $t2,0($t3)                
		lb      $t1,0($t4)  
		               
		seq     $t5 ,$t2, $t1  # eq 1 else 0         
		bne     $t5,1,finish        

		beq     $t1,$zero,equal          

		addi    $t3,$t3,1                  
		addi    $t4,$t4,1                   
		j       loopforcompare 

	
	equal:
		li $t0 , 1 # set 1 , theyre equal
        j finish

	finish:

	li $v0,1
    move $a0, $t0
    syscall

	move $v0, $t0

	jr $ra
	