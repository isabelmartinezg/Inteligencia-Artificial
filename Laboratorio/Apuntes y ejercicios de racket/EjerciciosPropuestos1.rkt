#lang racket

(define (suma a b c)
  (/ (+ (* b -1) (sqrt (- (expt b 2) (* 4 a c))))(* 2 a)))

(define (resta a b c)
  (/ (- (* b -1) (sqrt (- (expt b 2) (* 4 a c))))(* 2 a)))

(define (ec-segundo-grado a b c)
  (append(list(suma a b c ))(list(resta a b c))))


(define (es-positivo n)
  (cond
    ((>= n 0)"Es positivo")
    ((< n 0)"Es negativo")))

(define (positivo? x)
  (if(> x 0) "Positivo"
  "Negativo"))

(define (es-entero-positivo n)
  (and (positive? n)(integer? n )))

(es-entero-positivo -5)