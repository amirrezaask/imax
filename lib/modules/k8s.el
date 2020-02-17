(defun module-k8s--install-packages ()
         (pkgmgr-install '(kubernetes)))    

(defun module-k8s-setup ()
  (module-k8s--install-packages))


(provide 'modules/k8s)
