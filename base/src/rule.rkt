#lang racket

(require "./hai.rkt")

(define same-color?
  (lambda (lst)
    (andmap (lambda (a) (eq? (hai-color a) (hai-color (car lst))))
            lst)))

(define shuntsu? 
  (lambda (lst-of-hai)
    (if (and (= (length lst-of-hai) 3)
             (same-color? lst-of-hai) 
             (= (foldl (lambda (a r) (+ r (hai-number a))) 0 lst-of-hai) 
                (* 3 (second (sort (map (lambda (a) (hai-number a)) lst-of-hai) <))))
             (not (= (hai-number (car lst-of-hai)) (hai-number (second lst-of-hai)))))
      #t
      #f)))

(define koutsu?
  (lambda (lst-of-hai)
    (if (and (= (length lst-of-hai) 3)
             (same-color? lst-of-hai)
             (andmap (lambda (a) (= (hai-number a) (hai-number (car lst-of-hai)))) lst-of-hai))
      #t
      #f)))

(define kantsu?
  (lambda (lst-of-hai)
    (if (and (= (length lst-of-hai) 4)
             (same-color? lst-of-hai)
             (andmap (lambda (a) (= (hai-number a) (hai-number (car lst-of-hai)))) lst-of-hai))
      #t
      #f)))

(define toitsu?
  (lambda (lst-of-hai)
    (if (and (= (length lst-of-hai) 2)
             (same-color? lst-of-hai)
             (= (hai-number (car lst-of-hai)) (hai-number (second lst-of-hai))))
      #t
      #f)))

(provide (all-defined-out))
