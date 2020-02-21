(require 'core/pkgmgr)
(require 'core/modules)
  
(defun imax-message (msg)
  (message (concat "# " msg)))

(defun imax/initialize ()
  (imax/activate-modules 'base)
  (modules-setup-modules))

(defun imax/-initialize ()
  (pkgmgr-initialize)
  (modules-require-modules))


(imax/-initialize)
(provide 'imax)
