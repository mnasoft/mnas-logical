(defpackage #:mnas-logical/docs
  (:use #:cl ) 
  (:nicknames "MLOG/DOCS")
  (:export make-all)
  (:documentation "Пакет @b(mnas-logical/docs) содержит функции
  генерирования и публикации документации."))

(in-package :mnas-logical/docs)

(defun make-document ()
  (loop
    :for i :in
    '((:mnas-logical          :mnas-logical)
      )
    :do (apply #'mnas-package:document i)))

(defun make-graphs ()
  (loop
    :for i :in
    '(:mnas-logical
      )
    :do (mnas-package:make-codex-graphs i i)))

(defun make-all (&aux
                   (of (if (find (uiop:hostname)
                                 mnas-package:*intranet-hosts*
                                 :test #'string=)
                           '(:type :multi-html :template :gamma)
                           '(:type :multi-html :template :minima))))
  "@b(Описание:) функция @b(make-all) служит для создания документации.

 Пакет документации формируется в каталоге
~/public_html/Common-Lisp-Programs/mnas-logical.
"
  (mnas-package:make-html-path :mnas-logical)
  (make-document)
  (make-graphs)
  (mnas-package:make-mainfest-lisp
   '(:mnas-logical :mnas-logical/docs)
   "Mnas-Logical"
   '("Mykola Matvyeyev")
   (mnas-package:find-sources "mnas-logical")
   :output-format of)
  (codex:document :mnas-logical)
  (make-graphs)
  (mnas-package:copy-doc->public-html "mnas-logical")
  (mnas-package:rsync-doc "mnas-logical"))

;;;; (make-all)
