;; Evil
(use-package evil
  :init
  (setq evil-want-integration t)
  :config
  (evil-mode 1))

;; Which Key
(use-package which-key
  :config
  (which-key-mode 1))

;; Disable creating unwanted files
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq create-lockfiles nil)
