;;;; mnas-logical.asd
(defsystem #:mnas-logical
  :description "Describe mnas-logical here"
  :author "Mykola Matvyeyev <mnasoft@gmail.com>"
  :license "GNU GENERAL PUBLIC LICENSE Version 3, 29 June 2007 or later"  
  :serial nil
  :components ((:module "src" 
                :serial nil
                :components
                ((:file "mnas-logical")))))

(defsystem "mnas-logical/docs"
  :description "Зависимости для сборки документации"
  :author "Mykola Matvyeyev <mnasoft@gmail.com>"
  :license "GNU GENERAL PUBLIC LICENSE Version 3, 29 June 2007 or later"
  :depends-on ("mnas-logical" "codex" "mnas-package")
  :components ((:module "src/docs"
		:serial nil
                :components ((:file "docs")))))
