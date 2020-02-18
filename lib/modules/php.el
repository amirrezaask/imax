(defun module-php--install-packages ()
  (pkgmgr-install '(php-mode)))
;; in order for php module to work as promised you need an implementation of lsp for php like intelephense
(defun module-php-setup ()
  (module-php--install-packages)
  (add-hook 'php-mode-hook 'lsp))
  

(provide 'modules/php)
