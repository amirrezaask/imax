(defun module-flycheck--install-packages ()
       (pkgmgr-install '(flycheck)))     
                
(defun module-flycheck-setup ()
  (module-flycheck--install-packages))
(provide 'modules/flycheck)
