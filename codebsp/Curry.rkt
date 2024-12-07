#lang racket
(define (add x y)
  (+ x y))
(define (main)
  (define result (add 2 6))
  (displayln (string-append "Ergebnis: " (number->string result))))
(main)
