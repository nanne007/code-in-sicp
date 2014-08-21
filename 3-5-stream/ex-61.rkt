#lang racket

(require "ex-60.rkt")

(provide invert-unit-series)
(define (invert-unit-series s)
  (stream-cons
   1
   (mul-series
    (stream-map
     (lambda (x) (* -1 x))
     (stream-rest s))
    (invert-unit-series s))))