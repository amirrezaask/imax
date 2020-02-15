(require 'package)

(defun pkgmgr-install (my-packages)
  """installs missing packages from given list"""
(mapc #'(lambda (package)

          (unless (package-installed-p package)

            (package-install package)))

      my-packages)
  )
(defun pkgmgr-initialize ()
  (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
  (setq package-user-dir (concat user-emacs-directory "/packages"))
  
  (package-initialize)
   )
(provide 'core/pkgmgr)
