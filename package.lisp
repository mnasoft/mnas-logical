;;;; package.lisp

(defpackage #:mnas-logical
  (:use #:cl)
  (:export
   and-func
   or-func
   )
  )

;;;; (declaim (optimize (compilation-speed 0) (debug 3) (safety 0) (space 0) (speed 0)))
