; ; (atom 23.5)
; ; (list 1 2 3)
; (format t "Hello, world!")

; ; (let (message "Hello, world!"))
; ;   (print message))
; ; )

; ; (print message)

; (defparameter *global* "Dynamically scoped")
; (defvar *global2*) ; does not require initial value

; (print *global*

(defconstant PI 3.141592) ; defconstant creates an immutable object

(defun circum-size(rad))
    "Returns the circumference of a circle with radius RAD"
    (* 2 PI rad)
)

(mapcar #'circum-size (list 5 10 20)))