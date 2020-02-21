
(defun module-javascript--install-packages ()
  (pkgmgr-install '(js2-mode)))
(defun module-javascript-setup ()
  (module-javascript--install-packages))

(provide 'modules/javascript)
