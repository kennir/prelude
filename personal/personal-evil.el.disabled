;;;
;;;
;;;


(prelude-require-packages '(goto-chg
                            evil-leader
                            evil-matchit
                            evil-nerd-commenter
                            evil-anzu
                            evil-org
                            ))

;;; use , as my leader key
(require 'evil-leader)
(global-evil-leader-mode)
(evil-leader/set-leader ",")


;;config for evil-matchit
(require 'evil-matchit)
(global-evil-matchit-mode 1)

;;evil nerd commemter configs
(evilnc-default-hotkeys)


(require 'evil-anzu)

(require 'evil-org)

(define-key evil-normal-state-map "n" 'evil-ex-search-next)
(define-key evil-normal-state-map "N" 'evil-ex-search-previous)
(define-key evil-normal-state-map "*" 'evil-ex-search-word-forward)
(define-key evil-normal-state-map "#" 'evil-ex-search-word-backward)
(define-key evil-normal-state-map "/" 'evil-ex-search-forward)

(define-key evil-normal-state-map (kbd "C-k") 'evil-scroll-up)
(define-key evil-normal-state-map (kbd "C-j") 'evil-scroll-down)
;;; enable ace-jump mode with evil-mode
(define-key evil-normal-state-map (kbd "SPC") 'ace-jump-char-mode)



;; leader key
(evil-leader/set-key
  "s1" 'delete-other-windows
  "s2" 'split-window-below
  "s3" 'split-window-right
  "s0" 'delete-window

  "xb" 'ido-switch-buffer
  "xk" 'ido-kill-buffer
  "xf" 'ido-find-file

  ",w" 'evil-ace-jump-word-mode
  ",l" 'evil-ace-jump-line-mode

  "xi" 'imenu

  "nl" 'evil-ex-nohighlight

  "/" 'evilnc-comment-or-uncomment-lines
  )
