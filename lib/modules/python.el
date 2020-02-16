(defun module-python--install-packages ()
  (pkgmgr-install '(elpy py-autopep8 blacken)))
(defun add-elpa-company-backend ()
   (add-to-list 'company-backends 'elpy-company-mode))
(defun module-python-setup ()
  (module-python--install-packages)
  (elpy-enable)
  
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode)

  (require 'py-autopep8)

  (add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

  (add-hook 'python-mode 'add-elpa-company-backed))

(provide 'modules/python)
