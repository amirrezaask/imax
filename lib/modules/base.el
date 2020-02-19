(defun module-base--install-packages ()
    (pkgmgr-install '(ido-vertical-mode ido-completing-read+ doom-modeline doom-themes dracula-theme)))


(defun module-base-setup ()
  (module-base--install-packages)
  (set-face-attribute 'default nil
          :family imax-font
          :height (* imax-font-size 10)
          :weight 'normal
          :width 'normal)
  (require 'ido)
  (setq ido-enable-flex-matching t)
  (setq ido-everywhere t)
  
  (ido-mode t)
  (ido-vertical-mode 1)
  (ido-ubiquitous-mode 1)
  (require 'doom-modeline)
  (doom-modeline-mode 1)
  (tool-bar-mode 0)
  (scroll-bar-mode 0)
  (menu-bar-mode 0)
  (global-linum-mode t) 
  (setq inhibit-startup-message t)
  (load-theme imax-theme  t))  






(provide 'modules/base)
