;;;
;;;
;;;


(prelude-require-packages '(ag
                            flycheck-pyflakes
                            yasnippet))


(require 'flycheck-pyflakes)
(add-hook 'python-mode-hook 'flycheck-mode)


(require 'yasnippet)
(yas-global-mode 1)
