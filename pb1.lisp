(defun onion(x y)
	(cond 
		((> x 0) (list(onion  (- x 1) y)))
		( t y)
	)
)

(trace onion)
(onion 5 '*)

(defun chh(x y z)
	(cond 
		((null z) nil)
		(( equal (car z) x) (cons y (chh x y (cdr z))))
		(t (cons(car z) (chh x y (cdr z))))
	)
)

(trace chh)
(chh 5 '* '(1 5 5 4 5 6 7))


(defun copy1 (l)
	(cond
		((null l) l)
		
		(t (list (copy (cdr l)) (car l) ))
	)
)

(defun copy (l)
	(cond
		((null l) nil)
		((null nil) (list(copy (cdr l)) (car l)))
		(t l)
	)
)


(trace copy)
(copy '(1 2 3 4))


(defun del (l1 l2 &optional z3)
	(cond
		(

)))

(defun inf-pref(l)
  (cond 
    ((null l) nil)
    ((atom l) l)
    (t (eval (list (cadr l) (inf-pref (car l))  (inf-pref (caddr l)))))
  )
)