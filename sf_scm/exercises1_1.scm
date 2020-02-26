;; This buffer is for notes you don't want to save, and for Lisp evaluation.
;; If you want to create a file, visit that file with C-x C-f,
;; then enter the text in that file's own buffer.

(+ 1 1)

(define (square x) (* x x))

;; Exercises 1.1

;; 1

;; ;; input

10
(+ 5 4 3)
(- 9 1)
(/ 6 2)
(define a 3)
(define b (+ a 1))
(+ a b (* a b))
(= a b)
(if (and (> b a) ( < b (* a b )))
    b
    a)
(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))
(+ 2 (if (> b a) b a))
(* (cond ((> a b) a)
	 ((< a b) b)
	 (else -1))
   (+ a 1))

;; ;; output
10
12
8
3
a ;; 3
b ;; 4
;; #f
19
4
16
6
16

;; 2

;; ;; prefix form of expression

(/ (+ 5 (/ 1 2)
      (- 2
	 (- 3
	    (+ 6 (/ 1 3)))))
   (* 3 (- 6 2) (- 2 7)))

;; 3

;; ;; define a procedure that takes 3 numbers as arguments and returns the sum of the squares of the two larger numbers

(define (sum-of-top-two x y z)
  (cond ((and (or (< x y) (= x y)) (or (< x z) (= x z))) (+ y z))
	((and (or (< y x) (= y x)) (or (< y z) (= y z))) (+ x z))
	((and (or (< z x) (= z x)) (or (< z y) (= z y))) (+ x y))))

;; 4

;; ;; Describe behavior of the following procedure

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

;; if b is greater than 0, return the sum of a and b
;; else return the difference between a and b
;; (b, being negativem results in the sum of a and the abs value of b)


;; 5

;; ;; if the interpreter is using applicative-order evaluation (evaluate arguments and then apply)
;; ;; then Ben will observe an output of 0 (evaluates if statement to true, returns 0)

;; ;; if the interpeter is using normal-order evaluation (fully expands then evaluates)
;; ;; then Ben won't see anything as the procedure will infinitely expand to itself

