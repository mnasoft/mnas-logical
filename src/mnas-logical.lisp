;;;; mnas-logical.lisp

(in-package #:mnas-logical)

(export 'and-func)
(defun and-func (lst)
  "@b(Описание:) and-func аналог макроса and, выполняемого поэлементно для элементов списка;
@b(Пример использования:)
@begin[lang=lisp](code)
 (and-func (mapcar #'(lambda(el) (null el)) '(nil nil (1)))) => NIL
 (apply #'and (mapcar #'(lambda(el) (null el)) '(nil nil (1)))) => ERROR: Undefined function: AND
@end(code)
"
  (let ((rez t))
    (mapcar #'(lambda (el) (setf rez (and rez (not (null el))))) lst)
    rez))

(export 'or-func)
(defun or-func(lst)
  "@b(Описание:) аналог макроса or, выполняемого поэлементно для элементов списка;
@b(Пример использования:)
@begin[lang=lisp](code)
 (or-func (mapcar #'(lambda(el) (not(null el))) '(nil nil (1))))    => T
 (apply #'or (mapcar #'(lambda(el) (not(null el))) '(nil nil (1)))) => ERROR: Undefined function: OR
@end(code)
"
  (let ((rez nil))
    (mapcar #'(lambda (el) (setf rez (or rez (not (null el))))) lst)
    rez))
