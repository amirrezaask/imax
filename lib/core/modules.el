(defun modules-load-modules ()
  (interactive)
  ;; (add-to-list 'load-path user-modules)
  (add-to-list 'load-path (concat user-emacs-directory "/modules")))

(defun imax/activate-modules (&rest modules)
  (setq imax-modules modules))

(defun modules-setup-modules ()
  (dolist (module imax-modules)
    (funcall
     (intern (concat "module-" (symbol-name module) "-setup")))))
(defun modules-require-modules ()
  (interactive)
  (modules-load-modules)
  (dolist (module imax-modules)
    (require (intern (concat "modules/" (symbol-name module))))
    (imax-message (concat "Module " (symbol-name module) " has been loaded into imax"))))
(provide 'core/modules)
