ЛАБОРАТОРНАЯ #2

3. Функция, заменяющаю в списке все вхождения x на y.
(defun chh(x y z)
	(cond 
		((null z) nil)
		(( equal (car z) x) (cons y (chh x y (cdr z))))
		(t (cons(car z) (chh x y (cdr z))))
	)
)

(trace chh)
(chh 5 '* '(1 5 5 4 5 6 7))

6.  Функция, строящая список "луковица" с уровнем вложенности n для параметра x.
(defun onion(x y)
	(cond 
		((> x 0) (list(onion  (- x 1) y)))
		( t y)
	)
)

(trace onion)
(onion 5 '*)

15.  Функция, преобразующая список по следующему правилу: (a s d f g) –> (((((a) s) d) f) g).
(defun copy1 (l)
	(cond
		((null l) l)
		(t (list (copy1 (cdr l)) (car l) ))
	)
)

*. Функция копирования
(defun copy (l)
	(cond
		((null l) nil)
		((null nil) (list(copy (cdr l)) (car l)))
		(t l)
	)
)

(trace copy)
(copy '(1 2 3 4))


ЛАБОРАТОРНАЯ #3
3. Функция, пpеобpазующаю инфиксную запись выpажения в пpединфиксную и возвpащающую значение выpажения
(defun inf-pref(l)
  (cond 
    ((null l) nil)
    ((atom l) l)
    (t (eval (list (cadr l) (inf-pref (car l))  (inf-pref (caddr l)))))
  )
)
