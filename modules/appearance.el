(defun module-appearance-setup ()
   (set-face-attribute 'default nil
		      :family negev-font
		      :height 135
		      :weight 'normal
		      :width 'normal)
  (load-theme negev-theme t)
  (global-linum-mode t)
  )
(provide 'appearance)
