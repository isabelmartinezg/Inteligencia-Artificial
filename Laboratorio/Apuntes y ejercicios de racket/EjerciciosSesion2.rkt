#lang racket

;EJERCICIOS 1,2 y 3

; (car p) retorna el primer elemento del par p
; (car '(1 2)) --> 1
; (car (cons 2 3)) --> (car '(2,3)) --> 2

; (cdr p) retorna el segundo elemento de un par p
; (cdr '(1 2)) --> '(2)
; (cdr '(1)) --> '()
(car (cdr '(x y z)))
(car '(((por))(que)(no)esta))
(car '(((hoy))(no)(es)jueves))
(car (car '(((hoy))(no))))
(caar '(((hoy))(no)))
(cdr '(((hoy)(no))))

; (cdar v) --> (cdr (car v))
(cdar '(((hoy))(no)))

; (cons a d) retorna un nuevo par cuyo primer elemento es a y segundo es d
(cons '(a b) '(c d))

; (list (list p) (list c)) retorna una lista que contiene la lista p y c como
;                          sus elementos
(list '(a b) '(c d))

; (append list ...) retorna una lista que contiene todos los elementos de las
;                   listas recibidas en orden.
(append '(a b) '(c d))

;EJERCICIO 5: Funcion "poner-en-cola" que dados una lista y un elemento añada
;             a la cola por el final. Repetir añadiendo el elemento por el
;             principio y en la segunda posicion.

#|==========================================================
   Func: list : v ... -> list
   Obj: Retorna una nueva lista que contiene los vs como
        elementos.
  ==========================================================|#

#|==========================================================
   Func: list* : elem, ..., list -> list
   Obj: El ultimo argumento es usado como una cola del
        resultado, en vez de un elemento final. El resultado
        será una lista si su ultimo elemento es una lista
  ==========================================================|#

(define (poner-en-cola-primero elem lista)
  (list* elem lista))

(define (poner-en-cola-segundo elem lista)
  (list* (car lista) elem (cdr lista)))

(define (poner-en-cola-ultimo elem lista)
  (append lista (list elem)))


;EJERCICIO 6: Funciones que, para una lista dada, encuentre el segundo elemento,
;el tercero, el último, el antepenúltimo y todos ellos.

#|==========================================================
   Func: list-ref :lista posicion -> elem
   Obj: Retorna el elemento de una lista en una posición dada
  ==========================================================|#

(define (encuentra-segundo lista)
  (list-ref lista 1))


;EJERCICIO 7: Predicado que, para una lista dada, compruebe si tiene al menos
;dos elementos.

(define (comprobar-longitud lista)
  (cond ((< (length lista) 2) "Longitud de la lista menor que 2")
        (else "Longitud de la lista mayor que 2")))


;EJERCICIO 8: Función que emule a la primitiva “length”, es decir que dada una
;lista, calcule el número de sus elementos.

(define (calcular-elementos lista)
  (cond ((empty? lista) 0)
        (else( + 1 (calcular-elementos (cdr lista))))))


;EJERCICIO 9: Función que emule a la primitiva “reverse”, recibiendo listas
;y devolviéndolas en el orden contrario.

(define (reversito lista)
  (cond ((empty? lista) '())
        (else(append (reversito(cdr lista))(list(car lista))))))

;EJERCICIO 10: Función que, dada una lista numérica, produzca su suma.

(define (suma-lista lista)
  (cond ((empty? lista)0)
        (else (+ (car lista) (suma-lista (cdr lista))))))


;EJERCIO 11: Función que, dada una lista numérica, produzca la suma de los cuadrados de sus elementos.
(define (suma-cuadrados-lista lista)
  (cond ((empty? lista)0)
        (else (+ (expt(car lista) 2)(suma-cuadrados-lista (cdr lista))))))


;EJERCICIO 15: Función que, dada una cadena de símbolos, produzca la cadena en orden invertido.
(define (cadena-invertida cadena)
  (list->string(reverse (string->list cadena))))

;EJERCICIO 16: Función que, dada una cadena, compruebe si es un palíndromo (se lea igual en orden inverso).
(define (es-palindromo cadena)
  (cond ((string=? cadena (list->string(reverse(string->list cadena))))"Es palindromo")
  (else "No es palindromo")))


;PROGRAMA PRINCIPAL
;(poner-en-cola-primero 6 (list 1 2 3 4 5))
;(poner-en-cola-segundo 6 (list 1 2 3 4 5))
;(poner-en-cola-ultimo 6 (list 1 2 3 4 5))
;(encuentra-segundo (list 1 2 3 4 5))
;(comprobar-longitud (list 1 2 3 4 5))
;(calcular-elementos (list 1 2 3 4 5))
;(reversito (list 1 2 3 4 5))
;(suma-lista (list 1 2 3 4 5))
;(suma-cuadrados-lista (list 1 2 3 4 5))
;(cadena-invertida "hola")
;(es-palindromo "hola")