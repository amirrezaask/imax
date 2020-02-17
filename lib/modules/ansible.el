(defun module-ansible--install-packages ()
  (pkgmgr-install '(ansible)))

(defun module-ansible-setup ()
  (interactive)
  (module-ansible--install-packages)
  (add-hook 'yaml-mode-hook '(lambda () (ansible 1))))

(provide 'modules/ansible)
