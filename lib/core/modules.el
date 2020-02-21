
(setq modules-path (concat user-emacs-directory "lib/modules"))
(defvar imax-modules '() "list of modules which imax setups") 

(defun imax/activate-modules (&rest modules)
  (dolist (module modules)
    (add-to-list 'imax-modules module)))
(defun module? (name) (string= (car (last (split-string name "\\."))) "el"))

(defun list-of-all-modules ()
  (mapcar (lambda (name) (combine-and-quote-strings (butlast (split-string name "\\.") 1) "\\.")) (seq-filter 'module? (directory-files modules-path))))

(defun modules-setup-modules ()
  (dolist (module imax-modules)
    (funcall
     (intern (concat "module-" (symbol-name module) "-setup")))))

(defun modules-require-modules ()
  (interactive)
  (dolist (module (list-of-all-modules))
    (require (intern (concat "modules/" module)))))
(provide 'core/modules)
