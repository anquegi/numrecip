#|
  This file is a part of numrecip project.
|#

#|
  NUMRECIP.
|#

(in-package :cl-user)
(defpackage numrecip-asd
  (:use :cl :asdf))
(in-package :numrecip-asd)

(defsystem numrecip
  :version "1.0.0"
  :author "Bill Schottstaedt <bil@ccrma.Stanford.EDU>"
  :maintainer "Antonio Juan Querol <antonio.querol@cuaqea.com>"
  :homepage "https://github.com/anquegi/numrecip"
  :bug-tracker "https://github.com/anquegi/numrecip/issues"
  :source-control (:git "git@github.com:anquegi/numrecip.git")
  :license "TODO"
  :components ((:module "src"
                        :components ((:file "fft")
                                     (:file "numrecip"))))
  :description "Common Lisp library of mathematical functions."
  :in-order-to ((test-op (test-op numrecip-test))))
