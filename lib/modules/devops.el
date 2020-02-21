(defun module-devops--install-packages ()
  (pkgmgr-install '(kubernetes docker docker-compose-mode ansible gitlab-ci-mode)))


(defun module-gitlabci-hook ()
  (gitlab-ci-mode-flycheck-enable)
  (flycheck-mode))

(defun module-devops-setup ()
  (add-hook 'yaml-mode-hook '(lambda () (ansible 1))))

(provide 'modules/devops)
