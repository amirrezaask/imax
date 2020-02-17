(defun module-git--install-packages ()
  (pkgmgr-install '(magit)))
(defun module-git-setup ()
  (module-git--install-packages)
  (setq magit-completing-read-function 'magit-ido-completing-read))
  

(provide 'modules/git)
