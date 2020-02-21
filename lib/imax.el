(require 'core/pkgmgr)
(require 'core/modules)


(defvar imax/misc-packages '() "Other packages you need to install")
(defun imax/misc-packages (&rest pkgs)
  (dolist (pkg pkgs)
    (add-to-list 'imax/misc-packages pkg)))

(defun imax/other-packages ()
  (pkgmgr-install imax/misc-packages))

(defun imax-message (msg)
  (message (concat "# " msg)))

(defun imax/initialize ()
  (imax/activate-modules 'base)
  (modules-setup-modules)
  (imax/other-packages))

(defun imax/-initialize ()
  (pkgmgr-initialize)
  (modules-require-modules))


(imax/-initialize)
(provide 'imax)
