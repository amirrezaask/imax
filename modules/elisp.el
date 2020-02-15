(defun elisp--install-packages ()
  (interactive)
  (package-install 'paredit)
  (package-install 'parinfer)
  (package-install 'rainbow-delimiters))
(defun elisp--setup ()
  (interactive)
  (require 'paredit)
  (require 'parinfer)
  (require 'rainbow-delimiters)
  (paredit-mode t)
  (parinfer-mode t)
  (rainbow-delimiters-mode t))


(defun module-elisp-setup ()
  (interactive)
  (elisp--install-packages)
  (add-hook 'elisp-mode-hook 'elisp--setup))
  

(provide 'elisp)
