(defun module-docker--install-packages ()
  (pkgmgr-install '(docker docker-compose-mode)))

(defun module-docker-setup ()
  (module-docker--install-packages))

(provide 'modules/docker)
