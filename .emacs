(add-to-list 'load-path "~/.emacs.d")

;;; misc

(setq auto-mode-alist (cons '("\\.zcml$" . xml-mode) auto-mode-alist))

;;; ido

(require 'ido)
(ido-mode t)

;;; autopair

(add-to-list 'load-path "~/.emacs.d/autopair")
(require 'autopair)
(autopair-global-mode)
(setq autopair-blink nil)

;;; fill-column-indicator

(add-to-list 'load-path "~/.emacs.d/fill-column-indicator")
(require 'fill-column-indicator)

(setq-default fci-rule-column 80)

(define-globalized-minor-mode global-fci-mode fci-mode (lambda () (fci-mode 1)))
(global-fci-mode 1)

;;; trailing whitespace

(require 'whitespace)
(setq-default whitespace-style '(face trailing))
(setq-default whitespace-line-column 80)
(define-globalized-minor-mode global-whitespace-mode whitespace-mode (lambda () (whitespace-mode 1)))
(global-whitespace-mode 1)

;;; deferred/ctable/epc

(add-to-list 'load-path "~/.emacs.d/deferred")
(add-to-list 'load-path "~/.emacs.d/ctable")
(add-to-list 'load-path "~/.emacs.d/epc")

;;; auto-complete

(add-to-list 'load-path "~/.emacs.d/auto-complete")
(add-to-list 'load-path "~/.emacs.d/auto-complete/lib/popup")
(require 'auto-complete)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/auto-complete/dict")
(require 'auto-complete-config)
(ac-config-default)

;;; jedi

(autoload 'jedi:setup "jedi" nil t)
(add-hook 'python-mode-hook 'jedi:setup)

;;; flycheck

;(add-to-list 'load-path "~/.emacs.d/flycheck")
;(require 'flycheck)
;(add-hook 'after-init-hook #'global-flycheck-mode)

;;; solarized

(add-to-list 'load-path "~/.emacs.d/solarized")
(add-to-list 'custom-theme-load-path "~/.emacs.d/solarized")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "e16a771a13a202ee6e276d06098bc77f008b73bbac4d526f160faa2d76c1dd0e" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
