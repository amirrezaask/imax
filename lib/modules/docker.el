(defun module-docker--install-packages ()
  (pkgmgr-install '(docker)))

(defun module-docker-setup ()
  (module-docker--install-packages))

(provide 'modules/docker)
