(setq user-emacs-directory (file-name-directory 
          (or load-file-name (buffer-file-name))))
(add-to-list 'load-path (concat user-emacs-directory "/lib"))


(setq imax-font "Hack")
(setq imax-font-size 12)
(setq imax-theme 'doom-dracula)
(setq debug-on-error 0)
      
(setq imax-modules '(
		     ;; core imax modules
		     base
		     autocomplete
		     language-server-protocol
		     ;; version control 
		     git

		     ;; languages
		     go
		     elisp
		     python
		     php
		     markdown
		     yaml
		     json

		     ;; devops
		     k8s
		     ansible
		     docker
		     gitlabci
		     ))

(require 'imax)

(imax-initialize)
