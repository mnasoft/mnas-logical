;;;; mnas-logical.lisp

(in-package #:mnas-logical)

(defun and-func(lst)
  "Аналог макроса and, выполняемого поэлементно для элементов списка;
Пример использования:
;;;; (and-func (mapcar #'(lambda(el) (null el)) '(nil nil (1))))
;;;; => NIL
;;;; (apply #'and (mapcar #'(lambda(el) (null el)) '(nil nil (1))))
;;;; => ERROR: Undefined function: AND
"
  (let ((rez t))
    (mapcar #'(lambda (el) (setf rez (and rez (not (null el))))) lst)
    rez))

(defun or-func(lst)
  "Аналог макроса or, выполняемого поэлементно для элементов списка;
Пример использования:
;;;; (or-func (mapcar #'(lambda(el) (not(null el))) '(nil nil (1))))
;;;; => T
;;;; (apply #'or (mapcar #'(lambda(el) (not(null el))) '(nil nil (1))))
;;;; => ERROR: Undefined function: OR
"
  (let ((rez nil))
    (mapcar #'(lambda (el) (setf rez (or rez (not (null el))))) lst)
    rez))
