(setq ring-bell-function 'ignore)

(global-auto-revert-mode t)

(global-linum-mode t)

(setq-default abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
                                              ;; signature
                                              ("8zl" "zilongshanren")
                                              ;; Microsoft
			       ("8ms" "Microsoft")
			       ))

(setq make-backup-files nil)
(setq auto-save-default nil)

(require 'recentf)
(recentf-mode 1)

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

(delete-selection-mode t)

(provide 'init-better-defaults)
