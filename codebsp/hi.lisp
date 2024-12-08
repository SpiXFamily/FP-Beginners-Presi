(print "Ich bin nicht alt, sondern nachhaltig!")
(define fact
    (lambda (n)
    (if (= n 0) ; Basisfall
        #;(= n 1)
        1 ; Identitaet von *
        (* n (fact (- n 1))))))
