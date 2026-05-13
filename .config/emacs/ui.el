;; UI
(column-number-mode 1)

(setq display-line-numbers-type t)
(global-display-line-numbers-mode 1)

(setq inhibit-startup-message t)

;; Theme
(use-package gruber-darker-theme
  :config
  (load-theme 'gruber-darker t))

;; Enable line numbers in programming modes
(add-hook 'prog-mode-hook #'display-line-numbers-mode)

;; Setting font
(add-to-list 'default-frame-alist '(font . "CaskaydiaCove Nerd Font-21"))
