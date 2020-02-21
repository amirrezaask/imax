(require 'package)
(setq custom-file "~/.emacs-custom.el")
(setq package-enable-at-startup nil)
(cua-mode t)
(setq make-backup-files 0)
(setq create-lockfiles nil)
(setq cua-auto-tabify-rectangles nil)
(transient-mark-mode 1) 
(setq cua-keep-region-after-copy t)



(package-initialize)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")))


(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package) 
(setq use-package-verbose t)
(setq use-package-minimum-reported-time 0.000001)




(provide 'core)
