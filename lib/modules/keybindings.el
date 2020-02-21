(defun module-keybindings--install-packages ()
  (pkgmgr-install '(evil general)))

(defun setup-keybindings ()
  (require 'general))

(defun module-keybindings-setup ()
  (module-keybindings--install-packages)
  (evil-mode 1))


(provide 'modules/keybindings)
