;; Apply .editorconfig file configurations
(editorconfig-mode 1)

;; Global defaults
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq-default standard-indent 4)

;; Language indentation
(setq-default c-basic-offset 4)
(setq python-indent-offset 4)
(setq js-indent-level 4)
(setq lua-indent-level 4)

;; Go
(use-package go-mode
  :hook
  (go-mode . (lambda ()
               (setq-local tab-width 4)
               (setq-local indent-tabs-mode t))))

;; Lisp indentation
(setq lisp-body-indent 2)

;; Disable electric indentation
(electric-indent-mode -1)

;; Autoclose pairs
(electric-pair-mode 1)

;; Auto reload changed files
(global-auto-revert-mode 1)

;; Save minibuffer history
(savehist-mode 1)

;; Remember cursor positions
(save-place-mode 1)

;; Better scrolling
(setq scroll-conservatively 101)

;; Short prompts
(fset 'yes-or-no-p 'y-or-n-p)
