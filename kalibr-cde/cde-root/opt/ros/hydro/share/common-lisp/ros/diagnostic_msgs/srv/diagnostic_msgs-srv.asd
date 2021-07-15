
(cl:in-package :asdf)

(defsystem "diagnostic_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :diagnostic_msgs-msg
)
  :components ((:file "_package")
    (:file "SelfTest" :depends-on ("_package_SelfTest"))
    (:file "_package_SelfTest" :depends-on ("_package"))
  ))