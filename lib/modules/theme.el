(defun module-theme--install-packages ()
  (pkgmgr-install '(doom-themes)))


(defun module-theme-setup ()
  (module-theme--install-packages)
  (load-theme negev-theme  t)
  )

(provide 'modules/theme)
