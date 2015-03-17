;;; init.el --- Summary

;;; Commentary:

;;; Code:

(let ((cask (if (string-equal system-type "darwin")
		"/usr/local/share/emacs/site-lisp/cask.el"
	      "~/.cask/cask.el")))
  (require 'cask cask)
  (cask-initialize))

(require 'flycheck)
(flycheck-add-next-checker 'python-flake8 '(warning . python-pylint))

(add-hook 'after-init-hook #'global-flycheck-mode)

(provide 'init)
;;; init.el ends here
