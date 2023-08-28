(asdf:defsystem :collider-plot
  :name "collider-plot"
  :depends-on (
               :cl-collider
               :kai
               :iterate
               )
  :serial t
  :components ((:file "package")
               (:file "main")))
