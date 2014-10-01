#lang racket

(require "./hai.rkt")

(struct hand
        (hai-lst fuuro sutepai riichi?) ;; LIST LIST LIST BOOLEAN
        )

;;(defstruct hand
;;          ((hai-lst [:HAI]) (fuuro [:HAI]) (sutepai [:HAI]) (riichi? :BOOL)))

(define init-hand
  (lambda ()
    (hand '() '() '() #f)))
