
(defun my-go-hook ()
  (lsp)
  (flymake-mode-on)
  (yas-minor-mode-on)
  (add-hook 'before-save-hook #'lsp-format-buffer t t)
  (add-hook 'before-save-hook #'lsp-organize-imports t t)
  (add-hook 'go-mode-hook 'go-eldoc-setup)
  (local-set-key (kbd "M-.") #'godef-jump)
  (local-set-key (kbd "M-*") 'pop-tag-mark))

(defun go-path () (getenv "GOPATH"))

(use-package go-mode :ensure t :config
  (add-to-list 'exec-path (concat (go-path) "/bin"))
  (add-hook 'go-mode-hook 'my-go-hook))

(use-package go-add-tags :ensure t :hook go-mode-hook)
(use-package go-stacktracer :ensure t :hook go-mode-hook)
(use-package go-eldoc :ensure t :hook go-mode-hook)
(use-package gotest :ensure t :hook go-mode-hook)


(provide 'go)
