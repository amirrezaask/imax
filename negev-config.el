(setq user-emacs-directory (file-name-directory 
          (or load-file-name (buffer-file-name))))
(add-to-list 'load-path (concat user-emacs-directory "/lib"))


(setq negev-font "Fira Code")
(setq negev-theme 'doom-one)
(setq debug-on-error 1)
      
(setq negev-modules '(font theme minibuffer window company go elisp python json php yaml markdown ))

(require 'negev)

(negev-initialize)
