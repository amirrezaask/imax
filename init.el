(setq user-init-file (or load-file-name (buffer-file-name)))
(setq user-emacs-directory (file-name-directory user-init-file))
(add-to-list 'load-path (concat user-emacs-directory "/gatling"))


(setq gatling-packages '(
			 dracula-theme
			 yaml-mode
			 go-mode
			 ))

(require 'gatling)

(gatling-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("6731049cee8f7cbd542d7b3e1c551f3fab716a92119bd7c77f0bd1ef20849fb8" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
