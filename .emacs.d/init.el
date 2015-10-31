;;; init.el --- Summary

;;; Commentary:

;;; Code:


(let ((default-directory (if (string-equal system-type "darwin")
                             "/usr/local/share/emacs/site-lisp/"
                           "~/.cask/")))
      (normal-top-level-add-subdirs-to-load-path))

(require 'cask)
(cask-initialize)

; http://www.emacswiki.org/emacs/NoTabs
(setq-default indent-tabs-mode nil)
(setq js-indent-level 2)

; http://emacswiki.org/emacs/ShowWhiteSpace
(setq-default show-trailing-whitespace t)

; http://emacswiki.org/emacs/DeletingWhitespace
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(add-hook 'haskell-mode-hook 'haskell-indentation-mode)

(require 'flycheck)
(flycheck-add-next-checker 'python-flake8 '(warning . python-pylint))

(add-hook 'after-init-hook #'global-flycheck-mode)

(provide 'init)
;;; init.el ends here
