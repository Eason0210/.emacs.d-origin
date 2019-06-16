(when (>= emacs-major-version 24)
    (require 'package)
    (package-initialize)
    (add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)
    )
(require 'cl)

;;add whatever packages you want here
(defvar aqua/packages '(
				 company
				 monokai-theme
				 hungry-delete
				 swiper
				 counsel
				 smartparens
				 js2-mode
				 nodejs-repl
				 popwin
				 use-package
				 )  "Default packages")

(setq package-selected-packages aqua/packages)

(defun aqua/packages-installed-p ()
    (loop for pkg in aqua/packages
          when (not (package-installed-p pkg)) do (return nil)
          finally (return t)))

(unless (aqua/packages-installed-p)
    (message "%s" "Refreshing package database...")
    (package-refresh-contents)
    (dolist (pkg aqua/packages)
        (when (not (package-installed-p pkg))
	  (package-install pkg))))

(require 'hungry-delete)
(global-hungry-delete-mode)

;;(add-hook 'emacs-lisp-mode-hook 'smartparens-mode)
(smartparens-global-mode t)
(sp-local-pair 'emacs-lisp-mode "'" nil :actions nil)

;;(use-package smartparens-config
;;  :ensure smartparens
;;  :config (progn (show-smartparens-global-mode t)))

;;(add-hook 'prog-mode-hook 'turn-on-smartparens-strict-mode)
;;(add-hook 'markdown-mode-hook 'turn-on-smartparens-strict-mode)

;;config for swiper
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
;; enable this if you want `swiper' to use it
;; (setq search-default-mode #'char-fold-to-regexp)

;;config js2-mode for JS files
(setq auto-mode-alist
      (append
       '(("\\.js\\'" . js2-mode))
       auto-mode-alist))

(global-company-mode t)

(load-theme 'monokai t)

;;popwin config
(require 'popwin)
(popwin-mode 1)

(provide 'init-packages)
