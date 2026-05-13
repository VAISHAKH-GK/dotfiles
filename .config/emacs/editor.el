;; Apply .editorconfig file configurations
(editorconfig-mode 1)

;; Tab width
;; Global defaults
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq-default standard-indent 4)

;; C / C++
(setq-default c-basic-offset 4)

;; JavaScript
(setq js-indent-level 4)

;; Python
(setq python-indent-offset 4)

;; Lua
(setq lua-indent-level 4)

;; Lisp family
(setq lisp-body-indent 2)

;; Emacs Lisp
(add-hook 'emacs-lisp-mode-hook
          (lambda ()
            (setq-local indent-tabs-mode nil)))

;; Common Lisp
(add-hook 'lisp-mode-hook
          (lambda ()
            (setq-local indent-tabs-mode nil)))

;; Scheme
(add-hook 'scheme-mode-hook
          (lambda ()
            (setq-local indent-tabs-mode nil)))

;; Go
(add-hook 'go-mode-hook
          (lambda ()
            ;; Use real tabs
            (setq-local indent-tabs-mode t)

            ;; Display width of tabs
            (setq-local tab-width 4)

            ;; Make TAB insert literal tabs
            (local-set-key (kbd "TAB") #'self-insert-command)))

(electric-indent-mode -1)
(electric-pair-mode 1)


;; Automatically reload changed files
(global-auto-revert-mode 1)

;; ;; Preserve minibuffer history
(savehist-mode 1)

;; ;; Remember cursor positions
(save-place-mode 1)

;; Better scrolling
(setq scroll-conservatively 101)

;; Short answers
(fset 'yes-or-no-p 'y-or-n-p)
