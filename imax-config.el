(setq user-emacs-directory (file-name-directory 
          (or load-file-name (buffer-file-name))))
(add-to-list 'load-path (concat user-emacs-directory "/lib"))


(setq imax-font "Hack")
(setq imax-theme 'doom-dracula)
(setq debug-on-error 0)
      
(setq imax-modules '(
		     ;; core imax modules
		     font
		     theme
		     modeline
		     minibuffer
		     window
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
