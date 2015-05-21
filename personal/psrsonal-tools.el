;;;
;;;
;;;


(prelude-require-packages '(ag
                            flycheck-pyflakes
                            yasnippet
                            youdao-dictionary
                            ox-pandoc))

(server-mode)

;;; 启动后直接进入Agenda
;; (add-hook 'after-init-hook 'org-agenda-list)
;; (delete-other-windows)

(require 'flycheck-pyflakes)
(add-hook 'python-mode-hook 'flycheck-mode)

(require 'yasnippet)
(add-to-list 'yas/root-directory "~/.emacs.d/snippets")
(yas/initialize)


;; Enable Cache
(setq url-automatic-caching t)

;; Example Key binding
(global-set-key (kbd "C-x y") 'youdao-dictionary-search-at-point)


(require 'ox-pandoc)
;; default options for all output formats
(setq org-pandoc-options '((standalone . t)))
;; cancel above settings only for 'docx' format
(setq org-pandoc-options-for-docx '((standalone . nil)))
;; special settings for beamer-pdf and latex-pdf exporters
(setq org-pandoc-options-for-beamer-pdf '((latex-engine . "xelatex")))
(setq org-pandoc-options-for-latex-pdf '((latex-engine . "xelatex")))
