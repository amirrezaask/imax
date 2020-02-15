(setq user-emacs-directory (file-name-directory 
          (or load-file-name (buffer-file-name))))
(add-to-list 'load-path (concat user-emacs-directory "/lib"))


(setq negev-font "Fira Code")
(setq negev-theme 'doom-one)

  
(setq negev-modules '(go elisp font theme minibuffer markdown))

(require 'negev)

(negev-initialize)
