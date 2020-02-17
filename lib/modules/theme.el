(defun module-theme--install-packages ()
  (pkgmgr-install '(doom-themes dracula-theme)))


(defun module-theme-setup ()
  (module-theme--install-packages)
  (load-theme imax-theme  t)
  )

(provide 'modules/theme)
