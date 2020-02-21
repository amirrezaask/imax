(tool-bar-mode 0)
(scroll-bar-mode 0)
(menu-bar-mode 0)
(global-linum-mode t)
(set-face-attribute 'default nil
		    :family "Fira Code"
		    :height 120
		    :weight 'normal
		    :width 'normal)


;; (use-package dracula-theme :ensure t :defer t)

(use-package spacemacs-theme :ensure t :defer t)


(load-theme 'spacemacs-dark t)
(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook)
  (setq dashboard-startup-banner 2))
(use-package doom-modeline :ensure t :config (doom-modeline-mode 1))

(use-package ido-vertical-mode :ensure t :config
    (require 'ido)
    (setq ido-enable-flex-matching t)
    (setq ido-everywhere t)
    (ido-mode t)
    (ido-vertical-mode t))



(provide 'ui)
