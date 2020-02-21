(defun module-editor--install-packages ()
     (pkgmgr-install '(move-text multiple-cursors)))     

(defun module-editor-setup ()
  (module-editor--install-packages)
  (move-text-default-bindings))
  
(provide 'modules/editor)
