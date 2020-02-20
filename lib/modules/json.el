(defun module-json--install-packages ()
  (pkgmgr-install '(json-mode)))
(defun module-json-hook ()
   (add-hook 'before-save-hook 'json-mode-beautify))
(defun module-json-setup ()
  (module-json--install-packages)
  (add-hook 'json-mode-hook 'module-json-hook))
 
(provide 'modules/json)
