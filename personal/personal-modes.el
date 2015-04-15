;;;
;;;
;;;


(prelude-require-packages '(lua-mode
                            gradle-mode
                            protobuf-mode))

;; Lua modes
(autoload 'lua-mode "lua-mode" "Lua editing mode." t)
(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
(add-to-list 'interpreter-mode-alist '("lua" . lua-mode))


(require 'gradle-mode)
(add-to-list 'auto-mode-alist '("\\.gradle$" . gradle-mode))


(require 'protobuf-mode)
(add-to-list 'auto-mode-alist '("\\.proto$" . protobuf-mode))
