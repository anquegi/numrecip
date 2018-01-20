#|
  This file is a part of numrecip project.
|#

(in-package :cl-user)
(defpackage numrecip-test-asd
  (:use :cl :asdf))
(in-package :numrecip-test-asd)

(defsystem numrecip-test
  :version "1.0.0"
  :author "Bill Schottstaedt <bil@ccrma.Stanford.EDU>"
  :maintainer "Antonio Juan Querol <antonio.querol@cuaqea.com>"
  :license "MIT"
  :depends-on (:numrecip
               :parachute)
  :components ((:module "t"
                :components
                ((:file "numrecip"))))
  :description "Test system for numrecip"
  :defsystem-depends-on (:prove-asdf)
  :perform (test-op (op c)
                    (uiop:symbol-call :parachute :test :numrecip-test)))
