(require 'pkgmgr)

(defun negev-initialize ()
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
