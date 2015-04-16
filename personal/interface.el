;;;
;;;
;;;

(prelude-require-packages '(ido-vertical-mode
                            chinese-fonts-setup
                            sublimity
                            powerline-evil
                            smex))

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



(require 'sublimity-scroll)
(sublimity-mode 1)


(require 'powerline-evil)
(powerline-evil-vim-color-theme)


(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
