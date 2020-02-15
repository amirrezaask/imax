(defun module-window--install-packages ()
  (pkgmgr-install '(doom-modeline)))
(defun module-window-setup ()
  (module-window--install-packages)
  (tool-bar-mode 0)
  (scroll-bar-mode 0)
  (menu-bar-mode 0)
  (require 'doom-modeline)
  (doom-modeline-mode 1))
  


(provide 'modules/window)
