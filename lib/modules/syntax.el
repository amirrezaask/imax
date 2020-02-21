(defun module-syntax--install-packages ()
  (pkgmgr-install '(flycheck)))
(defun module-syntax-setup ()
  (module-syntax--install-packages)
  (global-flycheck-mode))

(provide 'modules/syntax)
