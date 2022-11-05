#lang scheme
;Q1

(define summation_for_even_numbers (lambda (x) 
                              (if (= x 0) 0    ;base case
                                  ;Explanation :if number given is odd,add 0(do nothing) and move right before even number; else sum and find other even (recursively).
                                  (if (= (modulo x 2) 1) (+ 0 (summation_for_even_numbers (- x 1))) (+ x (summation_for_even_numbers (- x 2)))))))

(summation_for_even_numbers 7)
(summation_for_even_numbers 8)
(summation_for_even_numbers 1)
(summation_for_even_numbers 2)
(summation_for_even_numbers 0)