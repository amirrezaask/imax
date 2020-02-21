(require 'package)

(setq package-enable-at-startup nil)


(package-initialize)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")))


(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package) 
(setq use-package-verbose t)
(setq use-package-minimum-reported-time 0.000001)

(tool-bar-mode 0)
(scroll-bar-mode 0)
(menu-bar-mode 0)
(global-linum-mode t)
(set-face-attribute 'default nil
         :family "Fira Code"
         :height 120
         :weight 'normal
         :width 'normal)
(cua-mode t)
(setq make-backup-files 0)
(setq create-lockfiles nil)
(setq cua-auto-tabify-rectangles nil)
(transient-mark-mode 1) 
(setq cua-keep-region-after-copy t)


(use-package general :ensure t
  :config
  (general-define-key
   :states '(normal visual insert emacs)
   :prefix "SPC"
   :non-normal-prefix "C-SPC"
   "bl" 'switch-to-buffer
   "ff" 'find-file
   "sv" 'split-window-vertically
   "sh" 'split-window-horizontally
   "wc" '
   ))

(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook)
  (setq dashboard-startup-banner 2))
(use-package doom-modeline :ensure t :config (doom-modeline-mode 1))

(use-package dracula-theme :ensure t :defer t)

(use-package spacemacs-theme :ensure t :defer t)

(use-package ido-vertical-mode :ensure t :config
    (require 'ido)
    (setq ido-enable-flex-matching t)
    (setq ido-everywhere t)
    (ido-mode t)
    (ido-vertical-mode t))

(load-theme 'spacemacs-dark t)

(use-package company :ensure t :config
  (setq company-tooltip-limit 30)
  (setq company-idle-delay .1)
  (setq company-echo-delay 0)
  (global-company-mode))


(use-package flycheck :ensure t :config (flycheck-mode))
;; devops y stuff
(use-package docker :ensure t)
(use-package docker-compose-mode :ensure t :hook yaml-mode)
(use-package ansible :ensure t :hook yaml-mode :config
  (add-hook 'yaml-mode-hook '(lambda () (ansible))))
(use-package kubernetes :ensure t)
(use-package gitlab-ci-mode :ensure t :hook yaml-mode)


(use-package paredit :ensure t :hook (emacs-lisp-mode . paredit-mode))

(use-package parinfer :ensure t :hook (emacs-lisp-mode . parinfer-mode))
(use-package rainbow-delimiters :ensure :hook (emacs-lisp-mode . rainbow-delimiters-mode))

(use-package magit :ensure t)

(use-package json-mode :ensure t :mode "\\.json\\'"
  :init
  (add-hook 'json-mode-hook (lambda () 'before-save-hook 'json-mode-beautify)))

(use-package py-autopep8 :ensure t :hook python-mode)
(use-package yasnippet  :ensure t)
(use-package yasnippet-snippets :ensure t)

(use-package lsp-mode :ensure t
  :config
  (setq lsp-enable-file-watchers 1)
  (setq lsp-file-watch-threshold 100000))

(use-package lsp-ui :ensure t)
(use-package company-lsp :ensure t)

(use-package yaml-mode :ensure t :config 
  (add-to-list 'auto-mode-alist '("\\.ya?ml\\'" . yaml-mode)))



(use-package markdown-mode :ensure t :mode "\\.md\\'")
(use-package js2-mode :ensure t :mode "\\.js\\'")

(defun my-go-hook ()
  (lsp)
  (flymake-mode-on)
  (yas-minor-mode-on)
  (add-hook 'before-save-hook #'lsp-format-buffer t t)
  (add-hook 'before-save-hook #'lsp-organize-imports t t)
  (add-hook 'go-mode-hook 'go-eldoc-setup)
  (local-set-key (kbd "M-.") #'godef-jump)
  (local-set-key (kbd "M-*") 'pop-tag-mark))

(defun go-path () (getenv "GOPATH"))

(use-package go-mode :ensure t :config
  (add-to-list 'exec-path (concat (go-path) "/bin"))
  (add-hook 'go-mode-hook 'my-go-hook))

(use-package go-add-tags :ensure t :hook go-mode-hook)
(use-package go-stacktracer :ensure t :hook go-mode-hook)
(use-package go-eldoc :ensure t :hook go-mode-hook)
(use-package gotest :ensure t :hook go-mode-hook)
(use-package evil :ensure t :config (evil-mode t))
(use-package general :ensure t)
(use-package php-mode :ensure t)
(use-package flycheck :ensure t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (counsel ivy yasnippet-snippets which-key use-package spacemacs-theme rainbow-delimiters py-autopep8 projectile php-mode pfuture parinfer paredit multiple-cursors move-text lsp-ui kubernetes js2-mode ido-vertical-mode ido-completing-read+ hydra helm-spotify gotest go-stacktracer go-eldoc go-add-tags gitlab-ci-mode general flycheck flx evil dracula-theme doom-themes doom-modeline docker-compose-mode docker dashboard cyberpunk-theme company-lsp company-go cider centaur-tabs ansible ace-window))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
