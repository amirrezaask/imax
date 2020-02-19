
(defun module-language-server-protocol--install-packages ()
  (pkgmgr-install '(lsp-mode lsp-ui company-lsp)))
(defun module-language-server-protocol-setup ()
  (module-language-server-protocol--install-packages)
  (setq lsp-enable-file-watchers 1)
  (setq lsp-file-watch-threshold 10000))

(provide 'modules/language-server-protocol)
