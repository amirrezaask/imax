(require 'package)

(setq package-enable-at-startup nil)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")))

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package) 

(tool-bar-mode 0)
(scroll-bar-mode 0)
(menu-bar-mode 0)
(global-linum-mode t)

(use-package doom-modeline :ensure t :config (doom-modeline-mode 1))
(use-package dracula-theme :ensure t)
(use-package spacemacs-theme :ensure t)
(use-package ido-vertical-mode :ensure t :config
  (lambda ()
    (require 'ido)
    (setq ido-enable-flex-matching t)
    (setq ido-everywhere t)
    (ido-mode t)
    (ido-vertical-mode t))))



