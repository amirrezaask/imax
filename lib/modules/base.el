(defun module-base--install-packages ()
    (pkgmgr-install '(ido-vertical-mode ido-completing-read+ doom-modeline doom-themes dracula-theme)))

(setq imax/font "Hack")
(setq imax/font-size 11)
(setq imax/theme 'doom-dracula)

(defun imax/font (font) (setq 'imax/font font))
(defun imax/font-size (size) (setq 'imax/font-size size))
(defun imax/theme (theme) (setq 'imax/theme theme))


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
  (load-theme imax-theme  t)
  (cua-mode t)
  (setq cua-auto-tabify-rectangles nil) ;; Don't tabify after rectangle commands
  (transient-mark-mode 1) ;; No region when it is not highlighted
  (setq cua-keep-region-after-copy t)) ;; Standard Windows behaviour







(provide 'modules/base)
