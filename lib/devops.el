(use-package docker :ensure t)
(use-package docker-compose-mode :ensure t :hook yaml-mode)
(use-package ansible :ensure t :hook yaml-mode :config
  (add-hook 'yaml-mode-hook '(lambda () (ansible))))
(use-package kubernetes :ensure t)
(use-package gitlab-ci-mode :ensure t :hook yaml-mode)

(use-package yaml-mode :ensure t :config 
  (add-to-list 'auto-mode-alist '("\\.ya?ml\\'" . yaml-mode)))




(provide 'devops)
