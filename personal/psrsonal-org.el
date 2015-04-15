;;;
;;;
;;;



(prelude-require-packages '(org-bullets
                            ))


(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

;; My org directory
(setq org-directory "~/Documents/emacs/org")
(appt-activate 1)
(setq diary-file (concat org-directory "/diary.org"))
(setq org-default-notes-file (concat org-directory "/note.org"))

;; agenda files
(setq org-agenda-files (file-expand-wildcards (concat org-directory "/*.org")))


(setq org-capture-templates
      '(("p" "Project" entry (file+headline (concat org-directory "/project.org") "project") "** TODO %?\n %i\n  %a")
        ("i" "Inbox" entry (file (concat org-directory "/inbox.org")) "** TODO %? %^G %i\n %a")
        ("s" "Personal" entry (file+headline (concat org-directory "/personal.org") "personal") "** TODO %? %^G\n %a")
        ("n" "Note" entry (file+datetree (concat org-directory "/note.org")) "* %?\nEntered on %U\n %i\n  %a")
))

;; show diary in calendar
(setq view-diary-entries-initially t
      mark-diary-entries-in-calendar t
      number-of-diary-entries 7)


(setq org-todo-keywords
      '((sequence "TODO(t!)"
                  "NEXT(n)"
                  "WAITTING(w)"
                  "BUG(b)"
                  "SOMEDAY(s)"
                  "|"
                  "DONE(d@/!)"
                  "ABORT(a@/!)")))  


(setq org-tag-alist '((:startgroup . "where")
                      ("@office" . ?o)
                      ("@home" . ?h)
                      ("@outdoor" . ?O)
                      (:endgroup . nil)
                      (:startgroup . "when")
                      ("@computer" . ?c)
                      ("@call" . ?l)
                      (:endgroup . nil)
                      (:startgroup . "what")
                      ("@work" . ?w)
                      ("@finance" . ?f)
                      ("@document" . ?D)
                      (:endgroup . nil)
                      ))
