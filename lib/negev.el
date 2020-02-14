(require 'pkgmgr)

(defun load-modules ()
  (interactive)
  (add-to-list 'load-path (concat user-emacs-directory "/modules")))
  

(defun setup-modules ()
  (interactive)
  (dolist (module negev-modules)
    (message (intern "elisp"))
    (require (intern module))))
;;(intern (concat "module-" module "-setup"))))
    
  
(defun negev-initialize ()
  (setq negev-packages '())
  
  (set-face-attribute 'default nil
		      :family negev-font-face
		      :height 150
		      :weight 'normal
		      :width 'normal)
  
  (cua-mode t)
  (setq cua-auto-tabify-rectangles nil)
  (transient-mark-mode 1)
  (setq cua-keep-region-after-copy t)
  (pkgmgr-initialize)
  (install-missing-packages negev-packages)
  (setq make-backup-files nil)
  (setq inhibit-startup-message t)
  (load-theme negev-theme t)
  (global-linum-mode t)
  )

(provide 'negev)
