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
  (cond (and (
