(defun module-window-setup ()
  (tool-bar-mode 0)
  (scroll-bar-mode 0)
  (menu-bar-mode 0)
  (global-linum-mode t) 
  (setq inhibit-startup-message t))  


(provide 'modules/window)
