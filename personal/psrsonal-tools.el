;;;
;;;
;;;


(prelude-require-packages '(ag
                            flycheck-pyflakes
                            yasnippet))


(require 'flycheck-pyflakes)
(add-hook 'python-mode-hook 'flycheck-mode)

(require 'yasnippet)
(add-to-list 'yas/root-directory "~/.emacs.d/snippets")
(yas/initialize)
