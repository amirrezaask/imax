(setq user-emacs-directory (file-name-directory 
          (or load-file-name (buffer-file-name))))
(add-to-list 'load-path (concat user-emacs-directory "/lib"))

(require 'imax)

(imax/font "Hack")
(imax/font-size 12)
(imax/theme 'doom-dracula)


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
		       'gitlabci)
 


(imax/initialize)
