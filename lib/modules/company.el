(defun module-company--install ()
  (pkgmgr-install '(company)))

(defun module-company-setup ()
  (module-company--install)
  (setq company-tooltip-limit 30)                      ; bigger popup window


  (setq company-dabbrev-downcase 0)
  (setq company-idle-delay .1)                         ; decrease delay before autocompletion popup shows

  (setq company-echo-delay 0)
  (global-company-mode))
(provide 'modules/company)
  
  
