(defun module-theme--install-packages ()
  (pkgmgr-install '(doom-thems)))

(defun module-theme-setup ()
  (load-theme negev-theme  t)
  )

(provide 'modules/theme)
