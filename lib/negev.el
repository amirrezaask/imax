(require 'pkgmgr)
(require 'modules)
  
(defun negev-message (msg)
  (message (concat "NEGEV => " msg)))


(defun add-default-modules ()
  (add-to-list 'negev-modules 'display))
  
(defun negev-initialize ()
  (setq negev-packages '())

  (add-default-modules)
  (pkgmgr-initialize)
  
  (modules-setup-modules)
  
  (setq cua-auto-tabify-rectangles nil)
  (transient-mark-mode 1)
  (setq cua-keep-region-after-copy t)
  (setq make-backup-files nil)
  (setq inhibit-startup-message t)
  )

(provide 'negev)
