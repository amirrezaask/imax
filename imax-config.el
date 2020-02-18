(setq user-emacs-directory (file-name-directory 
          (or load-file-name (buffer-file-name))))
(add-to-list 'load-path (concat user-emacs-directory "/lib"))


(setq imax-font "Fira Code")
(setq imax-theme 'dracula)
(setq debug-on-error 1)
      
(setq imax-modules '(
		     ;; core imax modules
		     font
		     theme
		     modeline
		     minibuffer
		     window
		     company
		     lsp
		     ;; version control 
		     git

		     ;; languages support
		     go
		     elisp
		     python
		     php
		     markdown
		     yaml
		     json

		     ;; devops support 
		     k8s
		     ansible
		     docker
		     ))

(require 'imax)

(imax-initialize)
