(setq user-emacs-directory (file-name-directory 
          (or load-file-name (buffer-file-name))))
(add-to-list 'load-path (concat user-emacs-directory "/lib"))


(setq imax-font "Fira Code")
(setq imax-theme 'doom-one)
(setq debug-on-error 1)
      
(setq imax-modules '(font
		     theme
		     minibuffer
		     window
		     company
		     git
		     ansible
		     go
		     elisp
		     python
		     json
		     ;; php
		     yaml
		     markdown))

(require 'imax)

(imax-initialize)
