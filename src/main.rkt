#lang racket

(require framework)
(require racket/gui/base)

(define frame-enter (new frame% [label "gMahjong"]
                         [height 675]
                         [width 1200]))

(define test-msg (new message% [parent frame-enter]
                      [label "Hello............"]))

(define btn-single (new button% [parent frame-enter]
                        [label "Single Play"]
                        [callback
                         (lambda (button envent)
                           ;;Single play
                           (send test-msg set-label "Single Play"))]))

(define btn-online (new button% [parent frame-enter]
                        [label "Online Game"]
                        [callback
                         (lambda (button envent)
                           ;;Online Game
                           (send test-msg set-label "Online Game"))]))

(define btn-setting (new button% [parent frame-enter]
                         [label "Settings"]
                         [callback
                          (lambda (button envent)
                            ;;Settings
                            (send test-msg set-label "Settings"))]))

(define btn-help (new button% [parent frame-enter]
                      [label "Help"]
                      [callback
                       (lambda (button envent)
                         ;;Help
                         (send test-msg set-label "Help"))]))

(define btn-exit (new button% [parent frame-enter]
                      [label "Exit"]
                      [callback
                       (lambda (button envent)
                         (exit))]))

(send frame-enter show #t)
