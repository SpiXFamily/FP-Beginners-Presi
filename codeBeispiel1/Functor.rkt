#lang racket
(define-type Maybe (U (Maybe-Just Integer) Maybe-Nothing))
(define (Maybe-Just value) (list 'just value))
(define (Maybe-Nothing) 'nothing)
(define maybeWert (Maybe-Just 5))
(define (fmap f maybe)
  (cond
    [(equal? maybe 'nothing) 'nothing]
    [(equal? (car maybe) 'just) (Maybe-Just (f (cadr maybe)))]))

(define incrementedWert (fmap (lambda (x) (+ 1 x)) maybeWert))

(define (main)
  (define result incrementedWert)
  (displayln result))

(main)
