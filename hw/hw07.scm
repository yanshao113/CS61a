(define (cddr s) (cdr (cdr s)))

(define (cadr s) (car(cdr s)))

(define (caddr s) (car(cddr s)))

(define (ascending? asc-lst) (if (< (length asc-lst) 2) #t (and (<= (car asc-lst) (cadr asc-lst)) (ascending? (cdr asc-lst)))))


(define (square n) (* n n))

(define (pow base exp) (if (= base 1) 1
                                      (cond
                                        ((= exp 0) 1)
                                        ((= exp 1) base)
                                        ((even? exp) (square (pow base (/ exp 2))))
                                        ((odd? exp) (* (pow base (- exp 1)) base))
                                        )))
