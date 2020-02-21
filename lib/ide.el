
(use-package company :ensure t :config
  (setq company-tooltip-limit 30)
  (setq company-idle-delay .1)
  (setq company-echo-delay 0)
  (global-company-mode))


(use-package flycheck :ensure t :config (flycheck-mode))
(use-package yasnippet  :ensure t)
(use-package yasnippet-snippets :ensure t)

(use-package lsp-mode :ensure t
  :config
  (setq lsp-enable-file-watchers 1)
  (setq lsp-file-watch-threshold 100000))

(use-package lsp-ui :ensure t)
(use-package company-lsp :ensure t)


(use-package flycheck :ensure t)

(use-package magit :ensure t)

(provide 'ide)
