(require 'package)

(defun install-missing-packages (my-packages)
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
(provide 'pkgmgr)
