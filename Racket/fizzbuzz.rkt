#!/usr/bin/env racket
#lang racket

(define (fizzbuzz i)
  (format "~a - ~a" i
          (match (list (modulo i 3) (modulo i 5))
            [(list 0 0) "fizzbuzz"]
            [(list 0 _) "fizz"]
            [(list _ 0) "buzz"]
            [(list _ _) ""])))

(for ([i (in-range 1 101)])
  (println (fizzbuzz i)))
