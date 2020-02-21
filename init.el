
(setq user-emacs-directory (file-name-directory (or load-file-name (buffer-file-name))))
(add-to-list 'load-path (concat user-emacs-directory "/lib"))


(setq debug-on-error 1)

(require 'imax)

(imax/misc-packages 'cyberpunk-theme) ;; install only the package in case you don't need a module for that like thems

(imax/font "Hack") ;; sets font of imax
(imax/font-size 12) ;; font size
(imax/theme 'spacemacs-dark)

(imax/activate-modules
 ;; ide like features of imax
 'keybindings
 'editor
 'syntax
 'autocomplete
 'language-server-protocol
 'git
 ;; lanugages that imax supports currently
 'clojure
 'go
 'elisp
 'python
 'php
 'markdown
 'yaml
 'json
 'javascript
 ;; enable devops features of imax
 'devops)
 
           
(imax/initialize)
