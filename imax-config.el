(setq user-emacs-directory (file-name-directory (or load-file-name (buffer-file-name))))
(add-to-list 'load-path (concat user-emacs-directory "/lib"))

(setq debug-on-error 1)
(require 'imax)

(imax/misc-packages 'cyberpunk-theme 'spacemacs-theme) ;; install only the package in case you don't need a module for that like thems

(imax/font "Hack") ;; sets font of imax
(imax/font-size 12) ;; font size
(imax/theme 'spacemacs-dark)

(imax/activate-modules 'autocomplete
		       'language-server-protocol
		       'git
		       'go
		       'elisp
		       'python
		       'php
		       'markdown
		       'yaml
		       'json
		       'k8s
		       'ansible
		       'docker
		       'gitlabci
		       )

(imax/initialize)
