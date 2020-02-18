
(defun module-lsp--install-packages ()
  (pkgmgr-install '(lsp-mode lsp-ui company-lsp)))
(defun module-lsp-setup ()
  (module-lsp--install-packages)
  (setq lsp-enable-file-watchers 1)
  (setq lsp-file-watch-threshold 10000))

(provide 'modules/lsp)
