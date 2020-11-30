#lang racket

#|==========================================================
   Func: map : proc list ... -> list
   Obj: Aplica un procedimiento a una o varias listas
  ==========================================================|#

#|==========================================================
   Func: cadar : (car (cdr (car lista)))
  ==========================================================|#

;(car(cdr '(x y z)))
;(cadar '((x 1) (y 2) (z 3)))
;(null? '((( ))))

;(cons (car '(1 2 3))
;           (cons (car (cdr '(1 2 3)))
;                          (cons (car (cdr (cdr '(1 2 3) ))) null)))


;((lambda (x) (+ x x)) 2)
;((lambda (x) (+ x x)) 3/2)
;(lambda (𝑝𝑖) (+ 𝑝𝑖 𝑝𝑖)) 23)

(let [(a 2)]
  (let
      [(a 4)
        (b a)]
    (let [(y (+ a b))] (display y))))


