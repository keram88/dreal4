(set-logic QF_NRA)
(declare-fun vhat3 () Real)
(declare-fun thhat3 () Real)
(declare-fun v4 () Real)
(declare-fun vhat4 () Real)
(declare-fun thhat4 () Real)
(declare-fun zph_4_3 () Real)
(declare-fun zqh_4_3 () Real)
(assert (<= vhat3 2))
(assert (>= vhat3 0))
(assert (<= thhat3 4))
(assert (>= thhat3 -4))
(assert (<= v4 2))
(assert (>= v4 0))
(assert (<= vhat4 2))
(assert (>= vhat4 0))
(assert (<= thhat4 4))
(assert (>= thhat4 -4))
(assert (<= zph_4_3 3))
(assert (>= zph_4_3 -3))
(assert (<= zqh_4_3 3))
(assert (>= zqh_4_3 -3))
(assert (and (and (< (- zph_4_3 (- (- (* (^ v4 2) 0.068916) (* vhat4 (* vhat3 (* 0.068916 (cos (- thhat4 thhat3)))))) (* vhat4 (* vhat3 (* 0.057532 (sin (- thhat4 thhat3))))))) 0.500000) (> (- zph_4_3 (- (- (* (^ v4 2) 0.068916) (* vhat4 (* vhat3 (* 0.068916 (cos (- thhat4 thhat3)))))) (* vhat4 (* vhat3 (* 0.057532 (sin (- thhat4 thhat3))))))) -0.500000)) (and (< (- zqh_4_3 (- (- (- 0 (* (^ vhat4 2) 0.068916)) (* vhat4 (* vhat3 (* 0.057532 (cos (- thhat4 thhat3)))))) (* vhat4 (* vhat3 (* 0.068916 (sin (- thhat4 thhat3))))))) 0.500000) (> (- zqh_4_3 (- (- (- 0 (* (^ vhat4 2) 0.068916)) (* vhat4 (* vhat3 (* 0.057532 (cos (- thhat4 thhat3)))))) (* vhat4 (* vhat3 (* 0.068916 (sin (- thhat4 thhat3))))))) -0.500000))))
(check-sat)
(exit)
