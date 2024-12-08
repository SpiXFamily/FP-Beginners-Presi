#lang racket
(define-type Maybe (U (Maybe-Just Integer) Maybe-Nothing))
;; Konstruktor für den Maybe-Just-Wert, der einen Integer-Wert enthält
(define (Maybe-Just value) (list 'just value))
;; Konstruktor für den Maybe-Nothing-Wert, der anzeigt, dass kein Wert vorhanden ist
(define (Maybe-Nothing) 'nothing)
;; Erstelle einen Maybe-Wert mit dem Wert 10
(define maybeValue (Maybe-Just 10))
;; Definiere die bind-Funktion, ähnlich wie in Haskell
(define (bind maybe f)
  (cond
    [(equal? maybe 'nothing) 'nothing] ;; Wenn nicht dann nicht
    ;; Wenn der Maybe-Wert ein 'just'-Wert ist, wende die Funktion f auf den enthaltenen Wert an
    [(equal? (car maybe) 'just) (f (cadr maybe))]))
;; Wende die bind-Funktion auf maybeValue an und verdopple den Wert
(define ergebnis
  (bind maybeValue (lambda (x) (Maybe-Just (* x 2)))))

(define (main)
  (displayln ergebnis))
(main)
