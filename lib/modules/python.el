(defun module-python--install-packages ()
  (pkgmgr-install '(elpy)))
(defun add-elpa-company-backend ()
   (add-to-list 'company-backends 'elpy-company-mode))
(defun module-python-setup ()
  (elpy-enable)
  (add-hook 'python-mode 'add-elpa-company-backed))
 
(provide 'modules/python)
