;;;
;;;
;;;


(prelude-require-packages '(switch-window
                            window-numbering))

;; http://tapoueh.org/emacs/switch-window.html
(require 'switch-window)

(global-set-key (kbd "C-x o") 'switch-window)


(require 'window-numbering)
;; highlight the window number in pink color
(custom-set-faces '(window-numbering-face ((t (:foreground "DeepPink" :underline "DeepPink" :weight bold)))))
(window-numbering-mode 1)
