
(use-package evil :ensure t :config (evil-mode t))
(use-package general :ensure t
  :config
  (general-define-key
   :states '(normal visual insert emacs)
   :prefix "SPC"
   :non-normal-prefix "C-SPC"
   "bl" 'switch-to-buffer
   "ff" 'find-file
   "sv" 'split-window-vertically
   "sh" 'split-window-horizontally))
   




(provide 'keybindings)

