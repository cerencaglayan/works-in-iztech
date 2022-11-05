#lang scheme

;Q4

(define cube (lambda (x) (* x x x))) ;defining cube method for using in our method

;Algoritm explained:
;We take first element of the list and other parts of the list for creating pair in recursively.

;Reason i used pair is if i use list output will behave like : (8 (64) ) .. which is wrong.

;In lecture slide ( week5_6_Functional_Languages_Scheme_part1_part2, 70-78th pages),explains
;structure of pair for using this question respectively.

;Q4 and Q3's algorithms and functions' skeleton have already same structure:

(define (make_cube the_list)
  (cond
   ((= (length the_list) 0) (list )) ;base case (returning an empty)
   
   ((= (length the_list) 1) ;base case (returnig last element that taking cube of)
      (cons (cube (car the_list)) (list )))
       (else (cons (cube (car the_list)) (make_cube (cdr the_list)))
       ))
  )

(make_cube (list 5))
(make_cube (list 0))
(make_cube (list 1 6))
(make_cube (list 1 4 6 2 3 1))