
(defun module-clojure--install-packages ()
  (pkgmgr-install '(cider clojure-mode)))
(defun module-clojure-setup ()
  (module-clojure--install-packages))
  
(provide 'modules/clojure)
