;;;
;;;
;;;

(prelude-require-packages '(ido-vertical-mode
                            chinese-fonts-setup
                            sublimity
                            smex
                            evil-nerd-commenter
                            ))

(require 'ido)
(require 'ido-vertical-mode)
(ido-mode 1)
(ido-vertical-mode 1)
(setq ido-vertical-show-count t)
(setq ido-use-faces nil)
(setq ido-vertical-define-keys 'C-n-C-p-up-and-down)


(require 'flx-ido)
(flx-ido-mode 1)
(setq ido-enable-flex-matching t)
(setq flx-ido-use-faces 1)

(require 'chinese-fonts-setup)

;; disable ring
(setq ring-bell-function 'ignore)



(require 'sublimity-scroll)
(sublimity-mode 1)


;; (require 'powerline-evil)
;; (powerline-evil-vim-color-theme)

;; (require 'powerline)
;; (powerline-default-theme)




;;; 关闭whitespace模式
(setq prelude-whitespace nil)


(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)


;;; evil nerd commenter
(evilnc-default-hotkeys)
