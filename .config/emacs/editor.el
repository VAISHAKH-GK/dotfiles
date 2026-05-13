;; Tab width
;; (setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq-default standard-indent 2)

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
