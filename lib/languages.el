
(use-package json-mode :ensure t :mode "\\.json\\'"
  :init
  (add-hook 'json-mode-hook (lambda () 'before-save-hook 'json-mode-beautify)))

(use-package py-autopep8 :ensure t :hook python-mode)

(use-package markdown-mode :ensure t :mode "\\.md\\'")
(use-package js2-mode :ensure t :mode "\\.js\\'")
(use-package php-mode :ensure t)


(provide 'languages)
