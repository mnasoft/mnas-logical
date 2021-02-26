;;;; mnas-logical.asd

(defpackage #:mnas-logical
  (:use #:cl)
  (:export and-func
           or-func))

(defsystem #:mnas-logical
  :description "Describe mnas-logical here"
  :author "Nick Matvyeyev <mnasoft@gmail.com>"
  :license "GNU GENERAL PUBLIC LICENSE Version 3, 29 June 2007 or later"  
  :serial nil
  :components ((:module "src" 
                :serial nil
                :components
                ((:file "mnas-logical")))))
