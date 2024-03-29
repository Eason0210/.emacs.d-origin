(global-set-key (kbd "<f2>") 'open-my-init-file)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<C-h> f") 'counsel-describe-function)
(global-set-key (kbd "<C-h> v") 'counsel-describe-variable)

;;custom key
(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)

(global-set-key (kbd "C-c p f") 'counsel-git)

;;for Org key bindings
(global-set-key (kbd "C-c a") 'org-agenda)

;;remenber
(global-set-key (kbd "C-c r") 'org-capture)

(global-set-key (kbd "C-M-\\") 'indent-region-or-buffer)

(global-set-key (kbd "M-/") 'hippie-expand)

(with-eval-after-load 'dired
  (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))

;;keybindings for js2-refactor
(js2r-add-keybindings-with-prefix "C-c C-m")


(global-set-key (kbd "M-s o") 'occur-dwim)
;;(global-set-key (kbd "M-s e") 'iedit-mode)

(global-set-key (kbd "M-s i" ) 'counsel-imenu)

(global-set-key (kbd "C-c t i") 'my-toggle-web-indent)

(with-eval-after-load 'company
  (define-key company-active-map (kbd "M-n") nil)
  (define-key company-active-map (kbd "M-p") nil)
  (define-key company-active-map (kbd "C-n") #'company-select-next)
  (define-key company-active-map (kbd "C-p") #'company-select-previous))

;;config for auto-yasnippet
(global-set-key (kbd "H-w") #'aya-create)
(global-set-key (kbd "H-y") #'aya-expand)

(provide  'init-keybindings)
