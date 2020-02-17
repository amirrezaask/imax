(require 'core/pkgmgr)
(require 'core/modules)
  
(defun imax-message (msg)
  (message (concat "# " msg)))

  
(defun imax-initialize ()
  
  (pkgmgr-initialize)
  
  (modules-setup-modules)
  
  (setq cua-auto-tabify-rectangles nil)
  (transient-mark-mode 1)
  (setq cua-keep-region-after-copy t)
  (setq make-backup-files nil))
  

(provide 'imax)
