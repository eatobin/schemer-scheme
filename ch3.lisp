(load (compile-file "ch2.lisp"))

(defun lat2? (l)
  (cond
    ((null l) t)
    ((atom? (car l)) (lat? (cdr l)))
    (t nil)))

(defun member2? (a lat)
  (cond
    ((null lat) nil)
    (t (or (eq (car lat) a)
           (member? a (cdr lat))))))

(lat? '())
(lat? '(8))
(lat? '(8 (8)))

(member? :a '())
(member? :a '(:a))
(member? :a '(:ax))
(member? :a '(:ax :a))
(member? 'dog '(cat dog))
(member? 'dog '(cat dogg))
