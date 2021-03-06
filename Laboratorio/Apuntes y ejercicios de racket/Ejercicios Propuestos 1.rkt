#lang racket

;Ejercicio 1

;(+ 1 2)
;(- 2 1)
;(* 2 3)
;(/ 4 2)
;(+ (* 1 2) (* 2 3))

;Ejercicio 2

(define (expresion1 x y)
  (+ x y (* 3 x y)))
;(expresion1 1 2)

(define (factorial n)
  (cond ((= n 0) 1)
        (else (* n (factorial (- n 1))))))
;(factorial 5)

(define (e n)
  (cond ((= n 0)1)
  (else (+(/ 1 (factorial n))(e (- n 1))))))

(define (en n)
  (exact->inexact(e n)))
;(en 20)

(define (expresion2)
  (expt (e 20) (* (sqrt -1) pi 74)))
;(expresion2)

(define (expresion3 r)
  (* (/ 4 3) pi (expt r 3)))
;(expresion3 1)

(define (expresion4 l G)
  (* 2 pi (sqrt (/ l G))))
;(expresion4 8 2)

;Ejercicio 3

;(sqrt 3)
;(expt 3 1/2)
;(log 3 10)
;(log 2 10)

;Ejercicio 4

(define (calcular-medida-en-grados)
  (/ (* (acos 0.846) 180) pi))
;(calcular-medida-en-grados)

;Ejercicio 5

(define (valor-e n)
  (if (= n 0)1
      (+ (/ 1 (factorial n)) (valor-e (- n 1)))))
;(exact->inexact(valor-e 20))


;Ejercicio 8

(define (transformar-calificacion n)
  (cond ((< n 5)"suspenso")
        ((or (= n 5) (< n 7))"aprobado")
        ((or (= n 7) (< n 9))"notable")
        ((or (= n 9) (<= n 10))"sobresaliente")
        (else "nota no valida")))
;(transformar-calificacion 8)

(define (notas n)
    (if (< n 5)"suspenso"
        (if  (or (= n 5)(< n 7))"aprobado"
             (if (or (= n 7) (< n 9))"notable"
                 (if (or (= n 9) (<= n 10))"sobresaliente"
                     "Nota no valida")))))

;Ejercicio 9

(define (lanzamiento-dado)
  (+ 1 (random 6)))
;(lanzamiento-dado)

;Ejercicio 10

(define (suma a b c)
  (/ (+ (* b -1) (sqrt (- (expt b 2) (* 4 a c)))) (* 2 a)))

(define (resta a b c)
  (/ (- (* b -1) (sqrt (- (expt b 2) (* 4 a c)))) (* 2 a)))

(define (ec-segundo-grado a b c)
  (append(list(suma a b c))(list(resta a b c))))
;(ec-segundo-grado 1 -5 6)

;Ejercicio 11

(define (es-positivo n)
  (cond ((> n 0)"Es positivo")
        (else "No es positivo")))
;(es-positivo 4)

;Ejercicio examen

(define (casino)
  (define n (+ (random 5) 1))
  (if (< n 3)"cruz"
     "cara"))
(casino)