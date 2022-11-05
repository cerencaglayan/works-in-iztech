#lang scheme

;Q2
(define sum_list (lambda (x)
                    (cond 
                            ((null? x) 0)    ; base case                           
                            ((= (length x) 1) (car x)) ; base case
                            (else (+ (car x) (sum_list (cdr x)))) ; addition with first element of the list and then call other parts for using recursively.
                            )
                   ))
                                  
(sum_list (list 1 5 89))
(sum_list (list -1 1))
(sum_list (list 2 3))
(sum_list (list 1))