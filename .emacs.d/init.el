;;; init.el --- Summary

;;; Commentary:

;;; Code:

(require 'cask "/usr/local/share/emacs/site-lisp/cask.el")
(cask-initialize)

(require 'flycheck)
(flycheck-add-next-checker 'python-flake8 '(warning . python-pylint))

(add-hook 'after-init-hook #'global-flycheck-mode)

(provide 'init)
;;; init.el ends here
