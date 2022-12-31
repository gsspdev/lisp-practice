; (atom 23.5)
; (list 1 2 3)
; (format t "Hello, world!")

; (let (message "Hello, world!"))
;   (print message))
; )

; (print message)

(defparameter *global* "Dynamically scoped")
(defvar *global2*) ; does not require initial value

(print *global*)