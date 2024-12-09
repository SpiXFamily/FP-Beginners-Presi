(defun print-message ()
  (print "Ich bin nicht alt, sondern nachhaltig!"))
(defun fact (n)
  (if (= n 0) ; Basisfall
      1 ; Identität von 0!
      (* n (fact (- n 1))))) ; Rekursive Berechnung
(print-message)
(format t "~a" (fact 5)) ; 5! = 120
