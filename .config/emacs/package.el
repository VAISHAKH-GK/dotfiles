;; Load package system
(require 'package)

;; Package repositories
(setq package-archives
      '(("melpa" . "https://melpa.org/packages/")
        ("gnu" . "https://elpa.gnu.org/packages/")))

;; Initialize packages
(package-initialize)

;; Refresh package contents if missing
(unless package-archive-contents
  (package-refresh-contents))

;; Install use-package if missing
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)

;; Automatically install missing packages
(setq use-package-always-ensure t)
