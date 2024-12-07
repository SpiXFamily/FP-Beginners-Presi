#lang racket
;; Def  Maybe type
(define-type Maybe (U (Maybe-Just Integer) Maybe-Nothing))
(define (Maybe-Just value) (list 'just value))
(define (Maybe-Nothing) 'nothing)
(define maybeValue (Maybe-Just 10))
;; Wie bei Haskell auch bind (>>=)
(define (bind maybe f)
  (cond
    [(equal? maybe 'nothing) 'nothing]
    [(equal? (car maybe) 'just) (f (cadr maybe))]))
(define ergebnis
  (bind maybeValue (lambda (x) (Maybe-Just (* x 2)))))

(define (main)
  (displayln ergebnis))

(main)
