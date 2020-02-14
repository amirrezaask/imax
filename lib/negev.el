(require 'pkgmgr)

(defun load-modules ()
  (interactive)
  (add-to-list 'load-path (concat user-emacs-directory "/modules")))
  
(defun negev-message (msg)
  (message (concat ":::::::NEGEV: " msg)))
(defun setup-modules ()
  (interactive)
  (dolist (module negev-modules)
    (require module)
          (funcall
	   (intern (concat "module-" (symbol-name module) "-setup")))))
    
  
(defun negev-initialize ()
  (setq negev-packages '())
  (pkgmgr-initialize)
  (load-modules)
  (setup-modules)
  (set-face-attribute 'default nil
		      :family negev-font
		      :height 135
		      :weight 'normal
		      :width 'normal)
  
  (cua-mode t)
  (setq cua-auto-tabify-rectangles nil)
  (transient-mark-mode 1)
  (setq cua-keep-region-after-copy t)
  (install-missing-packages negev-packages)
  (setq make-backup-files nil)
  (setq inhibit-startup-message t)
  (load-theme negev-theme t)
  (global-linum-mode t)
  )

(provide 'negev)
