(use-package paredit :ensure t :hook (emacs-lisp-mode . paredit-mode))

(use-package parinfer :ensure t :hook (emacs-lisp-mode . parinfer-mode))
(use-package rainbow-delimiters :ensure :hook (emacs-lisp-mode . rainbow-delimiters-mode))

(provide 'elisp)
