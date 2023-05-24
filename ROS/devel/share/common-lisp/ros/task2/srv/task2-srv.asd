
(cl:in-package :asdf)

(defsystem "task2-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ImageRecognition" :depends-on ("_package_ImageRecognition"))
    (:file "_package_ImageRecognition" :depends-on ("_package"))
  ))