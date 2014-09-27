#lang racket

(require "./hai.rkt")

(define same-color?
  (lambda (lst)
    (andmap (lambda (a) (= (hai-color a) (hai-color (car lst)))) lst)))

(define same-number?
  (lambda (lst)
    (andmap (lambda (a) (= (hai-number a) (hai-number (car lst)))) lst)))

(define shuntsu?          ;;顺子
  (lambda (lst-of-hai)
    (and (= (length lst-of-hai) 3)
         (same-color? lst-of-hai) 
         (local ((define lst (sort (map (lambda (a) (hai-number a)) lst-of-hai) >)))
                (and (= (- (car lst) (last lst)) 2)
                     (= (* 3 (second lst)) (apply + lst)))))))

(define toitsu?           ;;对子
  (lambda (lst-of-hai)
    (and (= (length lst-of-hai) 2)
         (same-color? lst-of-hai)
         (same-number? lst-of-hai))))

(define koutsu?           ;;刻子
  (lambda (lst-of-hai)
    (and (= (length lst-of-hai) 3)
         (same-color? lst-of-hai)
         (same-number? lst-of-hai))))

(define kantsu?           ;;杠子
  (lambda (lst-of-hai)
    (and (= (length lst-of-hai) 4)
         (same-color? lst-of-hai)
         (same-number? lst-of-hai))))

(define yaochuu?          ;;幺九
  (lambda (hai)
    (or (= (hai-number hai) 1) (= (hai-number hai) 9))))

(provide (all-defined-out))

(define test-a (list (hai 1 1 #f) (hai 1 4 #f) (hai 1 7 #f)))
(define test-b (list (hai 1 1 #f) (hai 1 2 #f) (hai 1 3 #f)))

(shuntsu? test-a)
(shuntsu? test-b)
