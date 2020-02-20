(require 'core/pkgmgr)
(require 'core/modules)
  
(defun imax-message (msg)
  (message (concat "# " msg)))

(defun imax/initialize ()
  (modules-setup-modules))

(defun imax/-initialize ()
  (pkgmgr-initialize)
  (modules-require-modules)
  (imax/activate-modules 'base))
    
(imax/-initialize)
(provide 'imax)
