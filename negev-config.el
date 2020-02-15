(setq user-emacs-directory (file-name-directory 
          (or load-file-name (buffer-file-name))))
(add-to-list 'load-path (concat user-emacs-directory "/lib"))


(setq negev-font "Fira Code")
(setq negev-theme 'doom-one)
(setq debug-on-error 1)
      
(setq negev-modules '(go elisp python php font theme minibuffer markdown window company))

(require 'negev)

(negev-initialize)
