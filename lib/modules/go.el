(defun module-go--install-packages ()
  (pkgmgr-install '(go-mode company company-go flycheck gotest)))

(defun go-path () (getenv "GOPATH"))

(defun add-go-path-bin-to-exec-path ()
  (add-to-list 'exec-path (concat (go-path) "/bin")))
(defun module-go-hook ()
  (set (make-local-variable 'company-backends) '(company-go))
  (add-hook 'before-save-hook 'gofmt-before-save)
  (local-set-key (kbd "M-.") #'godef-jump)
  (local-set-key (kbd "M-*") 'pop-tag-mark)
  (setq company-begin-commands '(self-insert-command))
  (let ((map go-mode-map))
    (define-key map (kbd "C-c a") 'go-test-current-project) ;; current package, really
    (define-key map (kbd "C-c m") 'go-test-current-file)
    (define-key map (kbd "C-c .") 'go-test-current-test)
    (define-key map (kbd "C-c c") 'go-run))
  )
(defun module-go-setup ()
  (interactive)
  (module-go--install-packages)
  (add-go-path-bin-to-exec-path)
  (add-hook 'go-mode-hook 'module-go-hook))
  
(provide 'modules/go)
  
