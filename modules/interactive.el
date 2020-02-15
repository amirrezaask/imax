(defun module-interactive--install-packages ()
  (pkgmgr-install '(ido-vertical-mode)))

(defun module-interactive-setup ()
  (interactive)
  (module-interactive--install-packages)
  (require 'ido)
  (setq ido-enable-flex-matching t)
  (setq ido-everywhere t)
  (ido-mode t)
  (ido-vertical-mode 1))

(provide 'interactive)
