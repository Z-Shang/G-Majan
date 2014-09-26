#lang racket

(require "./hai.rkt")

(define same-color?
  (lambda (lst)
    (andmap (lambda (a) (eq? (hai-color a) (hai-color (car lst)))) lst)))

(define shuntsu? 
  (lambda (lst-of-hai)
    (and (= (length lst-of-hai) 3)
             (same-color? lst-of-hai) 
             (= (foldl (lambda (a r) (+ r (hai-number a))) 0 lst-of-hai) 
                (* 3 (second (sort (map (lambda (a) (hai-number a)) lst-of-hai) <))))
             (local ((define lst (map (lambda (a) (hai-number a)) lst-of-hai)))
                    (= (- (apply max lst) (apply min lst)) 2)))))

(define koutsu?
  (lambda (lst-of-hai)
    (and (= (length lst-of-hai) 3)
             (same-color? lst-of-hai)
             (andmap (lambda (a) (= (hai-number a) (hai-number (car lst-of-hai)))) lst-of-hai))))

(define kantsu?
  (lambda (lst-of-hai)
    (and (= (length lst-of-hai) 4)
         (same-color? lst-of-hai)
         (andmap (lambda (a) (= (hai-number a) (hai-number (car lst-of-hai)))) lst-of-hai))))

(define toitsu?
  (lambda (lst-of-hai)
    (and (= (length lst-of-hai) 2)
         (same-color? lst-of-hai)
         (= (hai-number (car lst-of-hai)) (hai-number (second lst-of-hai))))))

(define yaochuu?
  (lambda (hai)
    (or (= (hai-number hai) 1) (= (hai-number hai) 9))))

(provide (all-defined-out))

(define test-a (list (hai 1 1 #f) (hai 1 4 #f) (hai 1 7 #f)))
(define test-b (list (hai 1 1 #f) (hai 1 2 #f) (hai 1 3 #f)))

(shuntsu? test-a)
(shuntsu? test-b)
