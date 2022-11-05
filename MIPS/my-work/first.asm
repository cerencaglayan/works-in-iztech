# Arithmetic Operations

.data # variable declaration
number1: .word 10
number2: .word 5
result: .word 0
end: .asciiz "Hello, World"

.text #instructions


main:

#li : "load immediate" value into register
# $t => temporary variable
    #li $t0, 10
    #li $t1, 5
    #li $s0, 0  # $s => "saved" values of final computed results.
    #add $s0, $t0, $t1

    la $t0 , number1 #la => load adress of number 1
    lw $t2 0($t0)  #get the value of $t0 by adress
    lw $t1 , number2
    lw $s0 , result
    
    add $s0, $t1, $t2

    li $t3 , 15
    li $t4 , 10
    li $s1,  0

    sub		$s1, $t3, $t4		# $t0 = $t1 - $t2
    addi	$t3, $t4 , 1 		
    
    li $v0 , 10 # $v => evulation & function results, 10 means finish
    syscall

#end