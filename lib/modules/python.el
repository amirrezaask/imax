(defun module-python--install-packages ()
  (pkgmgr-install '(py-autopep8)))
;; in order for python module to have auto complete you need to install python-language-server from pypi
(defun module-python-setup ()
  (module-python--install-packages)
  (require 'py-autopep8)

  (add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

  (add-hook 'python-mode-hook #'lsp))

(provide 'modules/python)
