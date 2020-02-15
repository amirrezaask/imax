(defun module-company--install ()
  (pkgmgr-install '(company)))

(defun module-company-setup ()
  (module-company--install)
  (global-company-mode t)
  (add-to-list 'company-backends '(company-capf company-dabbrev)))
(provide 'modules/company)
  
