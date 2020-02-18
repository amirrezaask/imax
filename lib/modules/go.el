(defun module-go--install-packages ()
  (pkgmgr-install '(go-mode go-add-tags go-stacktracer go-eldoc company company-go flycheck gotest)))

(defun go-path () (getenv "GOPATH"))

(defun add-go-path-bin-to-exec-path ()
  (add-to-list 'exec-path (concat (go-path) "/bin")))

(defun module-go-hook ()
  (lsp)
  (yas-minor-mode-on)
  (add-hook 'before-save-hook #'lsp-format-buffer t t)
  (add-hook 'before-save-hook #'lsp-organize-imports t t)
  (add-hook 'go-mode-hook 'go-eldoc-setup)
  (local-set-key (kbd "M-.") #'godef-jump)
  (local-set-key (kbd "M-*") 'pop-tag-mark))

(defun module-go-setup ()
  (interactive)
  (module-go--install-packages)
  (add-go-path-bin-to-exec-path)
  (add-hook 'go-mode-hook 'module-go-hook))
  
(provide 'modules/go)
  
