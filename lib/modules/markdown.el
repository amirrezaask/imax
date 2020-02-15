(defun module-markdown--install-packages ()
  (pkgmgr-install '(markdown-mode)))

(defun module-markdown-setup ()
  (module-markdown--install-packages))

(provide 'modules/markdown)
