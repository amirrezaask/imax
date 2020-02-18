(defun module-python--install-packages ()
  (pkgmgr-install '(py-autopep8 elpy)))
;; in order for python module to have auto complete you need to install python-language-server from pypi
(defun module-python-setup ()
  (require 'py-autopep8)

  (add-hook 'elpy-mode-hook 'flycheck-mode)
  (add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

  (add-hook 'python-mode-hook #'lsp)
  (elpy-enable))

(provide 'modules/python)
