(defun module-modeline--install-packages ()
  (pkgmgr-install '(doom-modeline)))


(defun module-modeline-setup ()
  (module-modeline--install-packages)
  (require 'doom-modeline)
  (doom-modeline-mode 1))


(provide 'modules/modeline)
