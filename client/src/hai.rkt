;; The Mahjong tile module
#lang racket

(module gmajan racket 
  (provide aka-dora 
           set-aka-dora 
           game-mode 
           set-game-mode
           hai

           )

  (define aka-dora #t)
  (define set-aka-dora 
    (lambda (b)
      (set! aka-dora b)))

  (define game-mode 'NRM)       ;;NRM - Nihon Richii Majann, CNSM - Chinese National Standard Mahjong
  (define set-game-mode 
    (lambda (m)
      (set! game-mode m)))

  (struct hai (color number aka)
          ;; Color : 1   2   3   4    5       6 
          ;; Color : Man Sou Pin Hana Suushii Sangen
          ;; Number: 1~9 1~9 1~9 1~8  1~4     1~3
          ;; For Hana: 1~8 are : Chun Xia Qiu Dong Mei Lan Zhu Ju
          ;; For Suushii: 1~4 are : Ton Nan Shaa Pei
          ;; For Sangen: 1~3 are : Haku Hatsu Chun
          ;; The tiles are arranged in the order of color above
          ;; Aka is the indicator of AKA DORA only for NRM
          )
  
  (define init-yama 
    (lambda () 'INIT-YAMA)
    )

  )
