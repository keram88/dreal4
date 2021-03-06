(set-logic QF_NRA)
(declare-fun x1 () Real)
(assert (<= -3.0 x1))
(assert (<= x1 3.14))
(assert
 (forall
  ((x2 Real [7.0, 50.0]))
  (and
   (>= (* x1 x2) (- 50.0))
   (>= (- 7.0) (* x1 x2)))))
(check-sat)
(exit)
