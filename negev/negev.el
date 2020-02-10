(require 'package)
(package-initialize)

(defun install-missing-packages (my-packages)
(mapc #'(lambda (package)

          (unless (package-installed-p package)

            (package-install package)))

      my-packages)
  )

(defun negev-initialize ()
  (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)


  (when (not package-archive-contents) (package-refresh-contents))
  (set-face-attribute 'default nil
		      :family negev-font-face
		      :height 110
		      :weight 'normal
		      :width 'normal)
  
  (cua-mode t)
  (setq cua-auto-tabify-rectangles nil)
  (transient-mark-mode 1)
  (setq cua-keep-region-after-copy t)
  
  (install-missing-packages negev-packages)
  (setq make-backup-files nil)
  (setq inhibit-startup-message t)
  (load-theme negev-theme t)
  (global-linum-mode t)
  )
(provide 'negev)
