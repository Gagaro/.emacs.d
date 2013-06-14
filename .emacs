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

;;; yasnippet

(add-to-list 'load-path "~/.emacs.d/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)
