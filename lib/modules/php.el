(defun module-php--install-packages ()
  (pkgmgr-install '(php-mode)))
(defun module-php-setup ()
  (module-php--install-packages))
  

(provide 'modules/php)
