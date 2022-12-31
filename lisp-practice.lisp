; (write-line "Hello, World"); this is a simple lisp command

; (write-line "another sentence")

;here is a comment

;MACROS IN LISP

;(defmacro macro-name (parameter-list)
; "optional documementation string"
; (body-form)
  
; (let ((x 'a) (y 'b)(z 'c))
; (format t "x = ~a y = ~a z = ~a" x y z))

; (prog ((x '(a b c))(y '(1 2 3))(z '(p q 10)))
; (format t "x = ~a y = ~a z = ~a" x y z))


;TYPE SPECIFIERS IN LISP

; array 	fixnum 	package 	simple-string
; atom 	float 	pathname 	simple-vector
; bignum 	function 	random-state 	single-float
; bit 	hash-table 	ratio 	standard-char
; bit-vector 	integer 	rational 	stream
; character 	keyword 	readtable 	string
; [common] 	list 	sequence 	[string-char]
; compiled-function 	long-float 	short-float 	symbol
; complex 	nill 	signed-byte 	t
; cons 	null 	simple-array 	unsigned-byte
; double-float 	number 	simple-bit-vector 	vector

;ARITHMETIC OPERATORS IN LISP

; + 	Adds two operands 	(+A B) will give 30
; - 	Subtracts second operand from the first 	(- A B) will give -10
; * 	Multiplies both operands 	(* A B) will give 200
; / 	Divides numerator by de-numerator 	(/ B A) will give 2
; mod,rem 	Modulus Operator and remainder of after an integer division 	(mod B A )will give 0
; incf 	Increments operator increases integer value by the second argument specified 	(incf A 3) will give 13
; decf 	Decrements operator decreases integer value by the second argument specified 	(decf A 4) will give 9


;COMPARISON OPERATORS IN LISP

; = 	Checks if the values of the operands are all equal or not, if yes then condition becomes true. 	(= A B) is not true.
; /= 	Checks if the values of the operands are all different or not, if values are not equal then condition becomes true. 	(/= A B) is true.
; > 	Checks if the values of the operands are monotonically decreasing. 	(> A B) is not true.
; < 	Checks if the values of the operands are monotonically increasing. 	(< A B) is true.
; >= 	Checks if the value of any left operand is greater than or equal to the value of next right operand, if yes then condition becomes true. 	(>= A B) is not true.
; <= 	Checks if the value of any left operand is less than or equal to the value of its right operand, if yes then condition becomes true. 	(<= A B) is true.
; max 	It compares two or more arguments and returns the maximum value. 	(max A B) returns 20
; min 	It compares two or more arguments and returns the minimum value. 	

; LOGICAL OPERATORS IN LISP

; and 	It takes any number of arguments. The arguments are evaluated left to right. If all arguments evaluate to non-nil, then the value of the last argument is returned. Otherwise nil is returned. 	(and A B) will return NIL.
; or 	It takes any number of arguments. The arguments are evaluated left to right until one evaluates to non-nil, in such case the argument value is returned, otherwise it returns nil. 	(or A B) will return 5.
; not 	It takes one argument and returns t if the argument evaluates to nil. 	(not A) will return T.

;BITWISE OPERATIONS ON NUMBERS

; p 	q 	p and q 	p or q 	p xor q
; 0 	0 	0 	0 	0
; 0 	1 	0 	1 	1
; 1 	1 	1 	1 	0
; 1 	0 	0 	1 	1

; logand 	This returns the bit-wise logical AND of its arguments. If no argument is given, then the result is -1, which is an identity for this operation. 	(logand a b)) will give 12
; logior 	This returns the bit-wise logical INCLUSIVE OR of its arguments. If no argument is given, then the result is zero, which is an identity for this operation. 	(logior a b) will give 61
; logxor 	This returns the bit-wise logical EXCLUSIVE OR of its arguments. If no argument is given, then the result is zero, which is an identity for this operation. 	(logxor a b) will give 49
; lognor 	This returns the bit-wise NOT of its arguments. If no argument is given, then the result is -1, which is an identity for this operation. 	(lognor a b) will give -62,
; logeqv 	This returns the bit-wise logical EQUIVALENCE (also known as exclusive nor) of its arguments. If no argument is given, then the result is -1, which is an identity for this operation. 	(logeqv a b) will give -50


; Sr.No. 	Construct & Description

; 1 	cond
; This construct is used for used for checking multiple test-action clauses. It can be compared to the nested if statements in other programming languages.

; 2 	if
; The if construct has various forms. In simplest form it is followed by a test clause, a test action and some other consequent action(s). If the test clause evaluates to true, then the test action is executed otherwise, the consequent clause is evaluated.

; 3 	when
; In simplest form it is followed by a test clause, and a test action. If the test clause evaluates to true, then the test action is executed otherwise, the consequent clause is evaluated.

; 4 	case
; This construct implements multiple test-action clauses like the cond construct. However, it evaluates a key form and allows multiple action clauses based on the evaluation of that key form.



; LOOPS IN LISP PROGRAMMING

; 1 	loop
; The loop construct is the simplest form of iteration provided by LISP. In its simplest form, it allows you to execute some statement(s) repeatedly until it finds a return statement.

; 2 	loop for
; The loop for construct allows you to implement a for-loop like iteration as most common in other languages.

; 3 	do
; The do construct is also used for performing iteration using LISP. It provides a structured form of iteration.

; 4 	dotimes
; The dotimes construct allows looping for some fixed number of iterations.

; 5 	dolist
; The dolist construct allows iteration through each element of a list.


; DEFINING FUNCTIONS IN LISP

; (defun name (parameter-list) "Optional documentation string." body)

; LISP PREDICATES

; atom - takes on argument and returns t if the argument is an atom, nil otherwise.
; equal - takes two arguments and returns t if they are structurally equal, nil otherwise.
; eq - takes two arguments and returs t if they are same identical objects, sharing the same memory location or nil otherwise.
; eql - takes two arguments and returns t if the arguments are eq, or if they are numbers of the same type with the same value, or if they are character objects thjat represent the same character, or nil otherwise.
; evenp - takes one numeric argument are returns t if the argument is an even number, nil otherwise.
; oddp -- takes one numeric argument are returns t if the argument is an odd number, nil otherwise.
; zerop - takes one numeric argument are returns t if the argument is zero, nil otherwise.
; null - takes one argument and returns t if the argument is nil, nil otherwise.
; listp - takes one argument and returns t if the argument is a list, nil otherwise.
; greaterp - takes one or more argument and returns t if either there is a single argument or the aruments are successively larger from left to right, or nil otherwise.
; lessp - takes one or more argument and returns t if either there is a single argument or the arguiments are succesively smaller from left to right, or nil if otherwiser
; numberp - takes one argument and returns t if the argument is a number, nil otherwise.
; symbolp - takes one argument and returns t if the argument is a symbol, nil otherwise.
; integerp- takes one argument and returns t if the argument is an integer, nil otherwise.
; rationalp - takes one aregument and returns t if the argument is a rational nubmer, nil otherwise.
; floatp - takes one argumenmt and returns t if the argument is a floating point number, nil otherwise.
; realp - takes one argument and returns t if the argument is a real number, nil otherwise.
; complexp - takes one argument and returns t if the argument is a complex number, nil otherwise.
; characterp - takes one argument and returns t if the argument is a character, nil otheerwise..
; stringp - takes one argument and returns t if the argument is a string, nil otherwise.
; arrayp - takes one argument and returns t if the argument is an array, nil otherwise.
; packagep - takes one argument and returns t if the argument is a package, nil otherwise.


; LISP NUMBERIC TYPES

; fixnum - integers in the range of -215 to 215 (machine dependent)
; bignum - very large numbers with size limited by the amount of memory allocated for LISP
; ratio - the ratio of two numbers (numerator/denominator)
; float - non-integer numbers (there are four float data types)
; complex - complex numbers which are dnoted by #c (the real and imaginary parts could both be either rational or floating point)

; LISP NUMBER FUNCTIONS

; +, -, *, / - respective arithmetic operations
; sin, cos, tan, acos, asin, atan - respective trigonometric functions
; sinh, cosh, tanh, acosh, asinh, atanh - respective hyperbolic functions
; exp - exponential function e^x
; expt - exponentiation function, takes base and power both
; sqrt - square root function
; log - natural logarithm function (base e)
; conjugate - returns the complex conjugate
; abs - returns absolute value
; gcd - returns greatest common divisor
; lcm - returns least common multiple
; isqrt - returns greatest integer less than or equal to the square root of the argument
; floor, ceiling, truncate, round - floor returns the largest integer that is not greater than ratio, ceiling chooses the smaller integer that is larger than ratio, truncate chooses the integer of the same sign as ratio with the largest absolute value that is less than absolute value of ratio, and round chooses an integer that is closest to ratio.
; ffloor, fceiling, ftruncate, fround - Does the same as above, but returns the quotient as a floating point.
; mod, rem - returns the remainder in a division operation
; float - converts a real number to a floating point number
; rational, rationalize - converts a real number to a rational number
; numerator, denominator - returns the respective parts of a rational number
; realpart, imagpart - returns the respective parts of a complex number






; (defconstant PI 3.141592)

; (defun area-circle(rad)
;   (terpri)
;   (format t "Radius: ~5f" rad)
;   (format t "~%Area: ~10f" (* PI rad rad)))

; (area-circle 10)



; (defun factorial (num)
;   ;as long as the condition 'num is not equal to zero is true the function will keep calling itself
;   (cond ((zerop num) 1)
;     ;if the condition is not true then the function will call itself with the argument num-1  
;     (t ( * num (factorial (- num 1))))
;   )
; )
; (setq n 6)
; (format t "~% Factorial ~d is: ~d" n (factorial n))



(setf my-array (make-array '(10)))

(aref my-array 9)