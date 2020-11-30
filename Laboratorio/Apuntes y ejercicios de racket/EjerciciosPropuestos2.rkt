#lang racket

(define lista '(1 2 3 4 5 6 7 8 9 10))
(define lista2 '(6 7 5))

;ejemplos varios de map, filter, foldr/foldl y lambdas
(define (mult10 x) (* 10 x))
(map mult10 lista)
(map (lambda (x) (* x 10)) lista)

(filter odd? lista)
;odd -> dice si un numero es impar
(filter (lambda (x) (= (modulo x 2) 1)) lista)

(foldr + 0 lista) ;va sumando los elementos de la lista
(foldr (lambda (x y) (+ x y)) 0 lista) ;x primer valor de la lista, y el acumulador

(foldr cons empty lista)
(foldl cons empty lista) ;Procesa los elementos de la lista de derecha a izquierda
(foldl (lambda (x list) (if (odd? x) (cons x list) list)) empty lista)
(foldr (lambda (x counter) (add1 counter)) 0 lista)

;for con variable i que va de 0 a 10
(for ([i 10]) (printf "~a" i))
(for ([i (in-range 4 10)]) (printf "~a" i))

;¿Hay algun elemento en la lista impar?
(for/or ([value lista]) (odd? value))
;¿Son todos los elementos de la lista impares?
(for/and ([value '(1 3 5 7 9)]) (odd? value))
;Todos los for tienen una variacion for* que recorre las listas de manera anidada
(for ([l1 lista] [l2 lista2]) (printf "~a ~a\n" 11 12)) ;recorrido en paralelo
(for* ([l1 lista] [l2 lista2]) (printf "~a ~a\n" 11 12)) ;recorrido anidado


;Ejercicios 2 - LISTAS
(car '(((por)) (que) (no) (es) (jueves)))
(car '(((hoy)) (no) (es) (jueves)))
(cons '(a b) '(c d)) ;Añade al final de la lista los elementos c d
(list '(a b) '(c d))
(append '(a b) '(c d))
(car (car '(((hoy)) (no)))) 
(caar '( ((hoy)) (no) )) ;Hace un car dentro de otro ((hoy)) --> car '((hoy)) --> (hoy)
(cdr '( ((hoy)) (no) ))
(cdar '( ((hoy)) (no) )) ;Primero car y luego cdr