(define (my-filter pred s) (if (null? s) s (if (pred (car s)) (cons (car s) (my-filter pred (cdr s))) (my-filter pred (cdr s)))))

(define (interleave lst1 lst2) (cond ((and (null? lst1) (null? lst2)) nil)
                                 ((and (null? lst1) (not(null? lst2))) lst2)
                                 ((and (null? lst2) (not(null? lst1))) lst1)
                                 ((and (not(null? lst1))(not(null? lst2))) (cons (car lst1) (cons (car lst2) (interleave (cdr lst1) (cdr lst2)))))
                                 ))

(define (accumulate joiner start n term)
  (if (= n 0) start (joiner (term n) (accumulate joiner start (- n 1) term))) )

(define (no-repeats lst) (if (null? lst) lst
                           (cons (car lst) (no-repeats (my-filter (lambda (x) (not (= x (car lst)))) (cdr lst)))
                           )))
