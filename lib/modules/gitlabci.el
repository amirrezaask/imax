(defun module-gitlabci--install-packages ()
  (pkgmgr-install '(gitlab-ci-mode )))

(defun module-gitlabci-hook ()
  (message "hook kalled")
  (gitlab-ci-mode-flycheck-enable)
  (flycheck-mode))           
(defun module-gitlabci-setup ()
  (module-gitlabci--install-packages))

(provide 'modules/gitlabci)
