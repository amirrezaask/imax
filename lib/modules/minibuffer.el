(defun module-minibuffer--install-packages ()
  (pkgmgr-install '(ido-vertical-mode)))

(defun module-minibuffer-setup ()
  (interactive)
  (module-minibuffer--install-packages)
  (require 'ido)
  (setq ido-enable-flex-matching t)
  (setq ido-everywhere t)
  (ido-mode t)
  (ido-vertical-mode 1))

(provide 'modules/minibuffer)