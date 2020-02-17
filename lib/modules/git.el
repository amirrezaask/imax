(defun module-git--install-packages ()
  (pkgmgr-install '(magit)))
(defun module-git-setup ()
  (module-git--install-packages))
  

(provide 'modules/git)
