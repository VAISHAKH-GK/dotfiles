;; -*- lexical-binding: nil; -*-
;; Disable package.el at startup
(setq package-enable-at-startup nil)

;; Disable GUI elements early
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

;; Improve startup speed
(setq gc-cons-threshold most-positive-fixnum)

(add-hook 'emacs-startup-hook
          (lambda ()
            (setq gc-cons-threshold (* 50 1000 1000))))
