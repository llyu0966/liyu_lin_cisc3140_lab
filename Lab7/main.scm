; Examples with scheme
; for CISC 3140 Spring 2021
;; Author: Liyu Lin

; An example of recursion - computing factorials
(define factorial 
  (lambda (x) ; Function & Parameter Declaration
    (if(< x 1) ;; if statement
      1        ;;; true branch
      (* x (factorial(- x 1)))))) ;;; false branch
;; Tested (factorial 5)
;; output=> 120

; A function to check if an input is a palindrome
(define (isPalindrome? str)
  (let ((chars (string->list str)))
    (equal? chars (reverse chars))))
;; Tested (isPalindrome? "abcdefggfedcba")
;; output=> #t
;; Tested (isPalindrome? "asfjllncjkjlllk")
;; output=> #f
