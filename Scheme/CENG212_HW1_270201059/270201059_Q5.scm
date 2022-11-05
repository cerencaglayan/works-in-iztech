#lang scheme

;Q5

;I explained the algorithm (In Q4 and Q3 files.).

;higher order procedure
(define (make_list_change <job> the_list)
  (cond
   ((= (length the_list) 0) (list )) 
   ((= (length the_list) 1) 
      (cons (<job> (car the_list)) (list )))
   (else (cons (<job> (car the_list)) (make_list_change <job> (cdr the_list))))
       )
  )


;q3:
(define square (lambda (x)
                 (* x x)))

(define (make_square list_for_square)
   (make_list_change square list_for_square)
    )
 


;q4:

(define cube (lambda (x)
                 (* x x x)))

(define (make_cube list_for_cube)
   (make_list_change cube list_for_cube)
    )


;calling procedures:

(make_square (list 4 5 6))
(make_cube (list 4 5 6))