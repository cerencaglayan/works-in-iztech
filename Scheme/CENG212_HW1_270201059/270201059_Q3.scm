#lang scheme

;Q3

(define square (lambda (x) (* x x))) ;defining square method for using in our method

;Algoritm explained:
;We take first element of the list and other parts of the list for creating pair in recursively.

;Reason i used pair is if i use list output will behave like : (4 (16) ) .. which is wrong.

;In lecture slide ( week5_6_Functional_Languages_Scheme_part1_part2, 70-78th pages),explains
;structure of pair for using this question respectively.

(define (make_square the_list)
  (cond
   ((= (length the_list) 0) (list )) ;base case (returning an empty)
   
   ((= (length the_list) 1) ;base case (returnig last element that making square of) 
      (cons (square (car the_list)) (list )))
   (else (cons (square (car the_list)) (make_square (cdr the_list))))
       ))
  
(make_square (list 4 7))
(make_square (list -3))
(make_square (list 3))
(make_square (list 1 4 6 2 3 1))