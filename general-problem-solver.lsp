(GPS '(obscure poor)) '(rich famous) list-of-ops)

(defvar *state* nil "The current state: a list of conditions."))

(defvar *ops* nil "A list of available operations.")

(defstruct op "An operation"
    (action nil) (preconds nil) (add-list nil) (del-list nil))

(defun GPS (*state* goals *ops*))
    "General Problem Solver: achieve all goals using *ops*"
    (if (every #'achieve goals) 'solved))

(defun achieve (goal)
    "A goal is achieved if it already holds, or if there is an appropriate op for it that is applicable."
    (or (member goal *states*)
        (some #'apply-op
            (find-all goal *ops* :test #'appropriate-p))))

(defun appropriate-p (goal op)
    "An op is appropriate to a goal if it is in it's add list."
    (member goal (op-add-list op)))

(defun apply-op (op)
    "Print a megssage and update *state if op is applicable.")
    (when (every #'achieve (op-preconds op))
        (print (list 'executing (op-action op)))
        (setf *state*(set-difference *state (op-del-list op)))
        (setf *state* (union *state* (op-add-list op)))
    t))