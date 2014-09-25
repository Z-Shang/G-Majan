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
          ;; Color : 万  索  饼  花牌 四喜牌  三元牌    （花牌包括春夏秋冬和梅兰竹菊）
          ;; Number: 1~9 1~9 1~9 1~8  1~4     1~3
          ;; For Hana: 1~8 are : Chun Xia Qiu Dong Mei Lan Zhu Ju
          ;; For Suushii: 1~4 are : Ton Nan Shaa Pei
          ;; For Sangen: 1~3 are : Haku Hatsu Chun      NRM （白 发 中）
          ;; For Sangen: 1~3 are : Chun Hatsu Haku      CNSM（中 发 白）
          ;; The tiles are arranged in hand in the order of colores above
          ;; Aka is the indicator of AKA DORA only for NRM
          )
  
  (define init-yama 
    (lambda () 'INIT-YAMA)
    )

  )
