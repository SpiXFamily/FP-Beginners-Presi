#lang racket

;; Define a Maybe type
(define-type Maybe (U (Maybe-Just Integer) Maybe-Nothing))
(define (Maybe-Just value) (list 'just value))
(define (Maybe-Nothing) 'nothing)

;; Example with Maybe
(define maybeWert (Maybe-Just 5))

;; fmap function to apply a function to the value inside Maybe
(define (fmap f maybe)
  (cond
    [(equal? maybe 'nothing) 'nothing]
    [(equal? (car maybe) 'just) (Maybe-Just (f (cadr maybe)))]))

;; Increment the value inside Maybe
(define incrementedWert (fmap (lambda (x) (+ 1 x)) maybeWert))

;; Main function to print the result
(define (main)
  (define result incrementedWert)
  (displayln result))

(main)
