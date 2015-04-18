;;;
;;;
;;;


(prelude-require-packages '(ag
                            flycheck-pyflakes
                            yasnippet
                            youdao-dictionary))

(server-mode)

;;; 启动后直接进入Agenda
(add-hook 'after-init-hook 'org-agenda-list)
(delete-other-windows)
(add-hook 'after-init-hook 'calendar)


(require 'flycheck-pyflakes)
(add-hook 'python-mode-hook 'flycheck-mode)

(require 'yasnippet)
(add-to-list 'yas/root-directory "~/.emacs.d/snippets")
(yas/initialize)


;; Enable Cache
(setq url-automatic-caching t)

;; Example Key binding
(global-set-key (kbd "C-x y") 'youdao-dictionary-search-at-point)
