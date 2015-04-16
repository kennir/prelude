;;; package --- ...
;;; Code:
;;; Commentary:
(prelude-require-packages '(dired+
                            dired-single
                            neotree))


(require 'neotree)
;; (setq projectile-switch-project-action 'neotree-projectile-action)

(add-hook 'neotree-mode-hook
          (lambda ()
            (define-key evil-normal-state-local-map (kbd "TAB") 'neotree-enter)
            (define-key evil-normal-state-local-map (kbd "SPC") 'neotree-enter)
            (define-key evil-normal-state-local-map (kbd "q") 'neotree-hide)
            (define-key evil-normal-state-local-map (kbd "RET") 'neotree-enter)))



(autoload 'dired-single-buffer "dired-single" "" t)
(autoload 'dired-single-buffer-mouse "dired-single" "" t)
(autoload 'dired-single-magic-buffer "dired-single" "" t)
(autoload 'dired-single-toggle-buffer-name "dired-single" "" t)
