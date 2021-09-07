
(cl:in-package :asdf)

(defsystem "rcnn_pkg-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "graymask" :depends-on ("_package_graymask"))
    (:file "_package_graymask" :depends-on ("_package"))
  ))