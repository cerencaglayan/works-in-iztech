##############################################################
#Dynamic array
##############################################################
#   4 Bytes - Capacity
#	4 Bytes - Size
#   4 Bytes - Address of the Elements
##############################################################

##############################################################
#Song
##############################################################
#   4 Bytes - Address of the Name (name itself is 64 bytes)
#   4 Bytes - Duration
##############################################################


.data
space: .asciiz " "
newLine: .asciiz "\n"
tab: .asciiz "\t"
menu: .asciiz "\n● To add a song to the list-> \t\t enter 1\n● To delete a song from the list-> \t enter 2\n● To list all the songs-> \t\t enter 3\n● To exit-> \t\t\t enter 4\n"
menuWarn: .asciiz "Please enter a valid input!\n"
name: .asciiz "Enter the name of the song: "
duration: .asciiz "Enter the duration: "
name2: .asciiz "Song name: "
duration2: .asciiz "Song duration: "
emptyList: .asciiz "List is empty!\n"
noSong: .asciiz "\nSong not found!\n"
songAdded: .asciiz "\nSong added.\n"
songDeleted: .asciiz "\nSong deleted.\n"



copmStr: .space 64

sReg: .word 3, 7, 1, 2, 9, 4, 6, 5
songListAddress: .word 0 #the address of the song list stored here!

.text 
main:

	jal initDynamicArray
	sw $v0, songListAddress
	
	la $t0, sReg
	lw $s0, 0($t0)
	lw $s1, 4($t0)
	lw $s2, 8($t0)
	lw $s3, 12($t0)
	lw $s4, 16($t0)
	lw $s5, 20($t0)
	lw $s6, 24($t0)
	lw $s7, 28($t0)

menuStart:
	la $a0, menu    
    li $v0, 4
    syscall

	li $v0,  5
    syscall
	li $t0, 1
	beq $v0, $t0, addSong
	li $t0, 2
	beq $v0, $t0, deleteSong
	li $t0, 3
	beq $v0, $t0, listSongs
	li $t0, 4
	beq $v0, $t0, terminate
	

	la $a0, menuWarn    
    li $v0, 4
    syscall
	b menuStart
	
addSong:
	jal createSong
	lw $a0, songListAddress
	move $a1, $v0
	jal putElement
	b menuStart
	
deleteSong:
	lw $a0, songListAddress
	jal findSong
	lw $a0, songListAddress
	move $a1, $v0
	jal removeElement
	b menuStart
	
listSongs:
	lw $a0, songListAddress
	jal listElements
	b menuStart
	
terminate:
	la $a0, newLine		
	li $v0, 4
	syscall
	syscall
	
	li $v0, 1
	move $a0, $s0
	syscall
	move $a0, $s1
	syscall
	move $a0, $s2
	syscall
	move $a0, $s3
	syscall
	move $a0, $s4
	syscall
	move $a0, $s5
	syscall
	move $a0, $s6
	syscall
	move $a0, $s7
	syscall
	
	li $v0, 10
	syscall


initDynamicArray:
	li $v0, 9
	li $a0, 12
	syscall
	move $t2, $v0

	li $t1, 2 #capacity
	sw $t1, 0($t2)
	li $t1, 0 # size 
	sw $t1, 4($t2)
	
	move $t3, $t2 

	li $v0, 9
	li $a0, 8
	syscall
	move $t2, $v0

	li $t1, 0 
	sw $t1, 0($t2)
	sw $t1, 4($t2)

	sw $t2 , 8($t3)

	move $v0, $t3 
	
	jr $ra

putElement:
	# $a0  = dinamik arrayin adres , $a1 = songun adres

	#loop öncesi hazırlık  
	lw $t1 , 0($a0)   # capacity
	lw $t2 , 4($a0)  # size 
	lw $t3 , 8($a0) #array

	sll $t0, $t2, 2 
	add $t0, $t0, $t3
	sw $a1, 0($t0)

	addi $t2, $t2, 1
	sw $t2 , 4($a0) #size 1 arttı 

	bne $t2, $t1 , out

	increase:

		# increasing capacity 
		mul $t1, $t1 , 2
		sw $t1, 0($a0)
		move $a2, $t1 # putting capacity in a2 register

		mul $t1, $t1, 4 # bytes of array needed.

		#using malloc() for reallocate capacity	
		li $v0, 9
		move $a0, $t1 #
		syscall
		move $t4, $v0
		
		# şu an t4 te  yeni array var.
		#t2 de size var 
		# t3 te eski array var.
		#putting elemets in new array

		li $t7 , 0 # index value 
		li $t5 , 0  

		fillNull: 
			sll $t6, $t7, 2  	# t6 = i * 4
			add $t0 ,$t4 ,$t6 
			sw  $t5, 0($t0)   #filling bytes with 0
			addi $t7, $t7, 1	# i += 1
			slt $t6, $t7, $a2   # Fill 0's for all elements in array. 	
			beq $t6, $zero, AssignValues
			
			j fillNull


		AssignValues:
			move $t7, $t5 #assigning 0 
			putElements:	
				sll $t6, $t7, 2  	# t6 = i * 4
				add $t0 ,$t4 ,$t6 #t0 in new array 
				add $t5, $t3, $t6 #t5 in old array

				lw $t8 , 0($t5)
				sw $t8 , 0($t0)

				addi $t7, $t7, 1	# i += 1
				slt $t6, $t7, $t2   # i=size ? 	
				beq $t6, $zero, out
				j putElements

		 
	out:

	li $v0, 4
	la $a0, songAdded
	syscall
	jr $ra

removeElement:
## DIDNT WORK 
## There are some errors in all subroutines connected to this subroutine.
	move $a2, $a0 #a2=a0
	
	lw $t1 , 0($a2)   # capacity 
	lw $t2 , 4($a2)  # size 
	lw $t3 , 8($a2) #array

	addi $t2, $t2, -1
	sw $t2 , 4($a2) #size--

	jal findSong
	bne $v0, -1 , remove 

	remove:
		move $t0, $v0
		add $t4 , $t3 , $t0 
		sw $zero, 0($t4)


		li $v0, 4
		la $a0, songDeleted
		syscall




	
	jr $ra

listElements:

 	add $sp, $sp ,-4
	sw $ra , 0($sp)

	move $t7, $a0 #storing dynamic array in another register 

	#loop öncesi hazırlık  
	lw $t4 , 4($t7)  # size
	lw $t5 , 8($t7) #arrayimiz

	beq $t4, $zero, printEmpty

	li $t3 , 0  # i = 0
	
	LOOP1:	

		sll $t6, $t3, 2  	# t6 = i * 4
		add $t7 ,$t5 ,$t6
		lw $a0, 0($t7)
		jal printElement
		addi $t3, $t3, 1	
		slt $t1, $t3, $t4	
		beq $t1, $zero, bye

		j LOOP1

	printEmpty:
		li $v0, 4 
		la $a0, emptyList
		syscall 
		j bye 

	bye:


		lw $ra , 0($sp)
		addu $sp, $sp ,4      

		jr $ra


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


	move $v0, $t0

	jr $ra
	
	
printElement:
	
    subu $sp, $sp ,8
	sw $ra , 0($sp)
	sw $a0 , 4($sp)

	jal printSong

	lw $a0 , 4($sp)
	lw $ra , 0($sp)
	addu $sp, $sp ,8

    
	move $v0, $a0

	jr $ra

createSong:

	li $v0, 9
	li $a0, 8
	syscall
	move $t2, $v0
	    
    li $v0, 4
    la $a0, name
    syscall

#string :
	li $v0, 9
	li $a0, 64
	syscall
	move $t3, $v0

    li $v0, 8
    move $a0, $t3
    li $a1, 64
    syscall

    sw  $t3, 0($t2)
#integer:
    li $v0, 4
    la $a0, duration
    syscall

    li $v0, 5
    syscall
    move  $a0, $v0
    
    sw  $a0, 4($t2)


#printing values : 
    li $v0, 4 
    lw $a0, 0($t2) 
    syscall 

    li $v0, 1 
    lw $a0, 4($t2) 
    syscall 

	move $v0, $t2 
	
	jr $ra

findSong:
	
	add $sp, $sp ,-4
	sw $ra , 0($sp)


	move $a0, $t0 # move dynamic array into t0

	lw $t2, 4($t0) #size 

	li $v0, 4
    la $a0, name
    syscall

	li $v0, 8
	move $a0, $t3 # take first string in $t3
	li $a1, 64
	syscall

	li $t5, 0 #index 
	findLoop:
		sll $t6, $t5, 2  	# t6 = i * 4
		add $t6 ,$t0 ,$t6


		lw $a0, 0($t6) #first string element
		move $a1 , $t3 #second string element 

		jal compare
		beq $v0 , 1, setindex

		addi $t5, $t5, 1	
		slt $t1, $t5, $t2	
		beq $t1, $zero, notfound
		j findLoop

	setindex:
		move $v0 , $t5 #setting index 
		j END 

	notfound:
		li $t3, -1
		move $v0 , $t5 #setting index 
		
		li $v0, 4
		la $a0, noSong
		syscall		

	END:

	lw $ra , 0($sp)
	addu $sp, $sp ,4      
	jr $ra 


printSong:

	move $t1 , $a0 

    li $v0, 4
    la $a0, name2
    syscall

    li $v0, 4 
    lw $a0, 0($t1) 
    syscall 

    li $v0, 4
    la $a0, duration2
    syscall
	
    li $v0, 1 
    lw $a0, 4($t1) 
    syscall 

	la $a0 , newLine
	li $v0, 4 
	syscall

	la $a0 , newLine
	li $v0, 4 
	syscall
	
	move $a0, $t1

	jr $ra

additionalSubroutines:



