(defun module-gitlabci--install-packages ()
  (pkgmgr-install '(gitlab-ci-mode)))

(defun module-gitlabci-hook ()
  (gitlab-ci-mode-flycheck-enable)
  (flycheck-mode))

(defun module-gitlabci-setup ()
  (module-gitlabci--install-packages))

(provide 'modules/gitlabci)
