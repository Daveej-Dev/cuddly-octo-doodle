;;; This is a function to call a function on every element of an arbitrary value and return that modified value
(defun map_val (f Y)
    (cond
        ;;Base case: the input is empty
        ((null Y) nil)
        
        ;;Case 1: The head is a list
        ((listp (car Y))
            (cons (map_val f (car Y)) (map_val f (cdr Y)))
        )
        
        ;;Case 2: The head is a value
        (t
            (cons (funcall f (car Y)) (map_val f (cdr Y)))
        )
    )
)
