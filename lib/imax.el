(require 'core/pkgmgr)
(require 'core/modules)
  
(defun imax-message (msg)
  (message (concat "# " msg)))

(defun imax/initialize ()
  (modules-setup-modules))
(defun imax/-initialize ()
  (pkgmgr-initialize)
  (add-to-list 'imax-modules 'base)
  (modules-require-modules))
    
(imax/-initialize)
(provide 'imax)
