#lang racket

(println "Problem 1")
(define (my-last p) (last p))
(my-last '(a b c d))

(println "Problem 2")
(define (my-but-last p)
  (let [(q (rest p))]
    (if (= 2 (length q)) q (my-but-last q))))
(my-but-last '(a b c d))

(println "Problem 3")
(define (element-pop p i x)
  (if (empty? p) '()
      (let ([q (rest p)]
            [j (+ i 1)])
        (if (= j x) (first p)
            (element-pop q j x)))))

(define (element-at p i)
  (if (empty? p) '() (element-pop p 0 i)))
(element-at '(a b c d e) 3)

(println "Problem 4")
(define (my-length p)
  (if (string? p)
      (length (string->list p))
      (length p)))

(my-length "Hello, World!")
(my-length '(a b c d e))

(println "Problem 5")
(define (my-reverse p)
  (if (string? p)
      (list->string (reverse (string->list p)))
      (reverse p)))
(my-reverse "Hello, World!")
(my-reverse '(a b c d e))

(println "Problem 6")
(define (palindrome? p)
  (equal? p (if (string? p)
                (list->string (reverse (string->list p)))
                (reverse p))))

(palindrome? '(1 2 3))
(palindrome? "madamimadam")

(println "Problem 7")
(define (my-flatten orig-list)
  (if (empty? orig-list)
      null
      (let ([elem (car orig-list)]
            [rest-list (cdr orig-list)])
        (if (list? elem)
            (append (my-flatten elem) (my-flatten rest-list))
            (append (cons elem null) (my-flatten rest-list))))))
(my-flatten '(a (b (c d) e)))

;; (println "Problem 8")
;; (compress '(a a a a b c c a a d e e e e))
