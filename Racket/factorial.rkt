#!/usr/bin/env racket
#lang racket

(define (factorial n)
  (if (= n 0) 1 (* n (factorial (- n 1)))))

(factorial 10)
(factorial 100)
(factorial 1000)
