(add-to-list 'load-path "~/.emacs.d")

;;; misc
(require 'php-mode)
(require 'drupal-mode)
(require 'yaml-mode)
(require 'jinja2-mode)

(setq auto-mode-alist (cons '("\\.zcml$" . xml-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.pt$" . html-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.less$" . css-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.sls$" . yaml-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.jinja$" . jinja2-mode) auto-mode-alist))

(put 'overwrite-mode 'disabled t)

;;; layout
(setq-default indent-tabs-mode nil)
(setq default-tab-width 4)
(setq js-indent-level 2)

;;; Drupal
;(require 'web-mode)

(add-to-list 'auto-mode-alist '("\\.\\(module\\|test\\|install\\|theme\\)$" . drupal-mode))
(add-to-list 'auto-mode-alist '("\\.\\(php\\|inc\\)$" . drupal-mode))
(add-to-list 'auto-mode-alist '("\\.info" . conf-windows-mode))

(setq load-path (cons "/home/gagaro/.emacs.d/geben" load-path))
(autoload 'geben "geben" "DBGp protocol frontend, a script debugger" t)

;;; python

(when (load "flymake" t)
  (defun flymake-pyflakes-init ()
    (let* ((temp-file (flymake-init-create-temp-buffer-copy
                       'flymake-create-temp-inplace))
           (local-file (file-relative-name
                        temp-file
                        (file-name-directory buffer-file-name))))
;      (list "pyflakes" (list local-file))))
      (list "lintrunner.py" (list local-file))))
  (add-to-list 'flymake-allowed-file-name-masks
               '("\\.py\\'" flymake-pyflakes-init)))

(add-hook 'find-file-hook 'flymake-find-file-hook)

(require 'flymake-cursor)

;(add-to-list 'load-path "~/.emacs.d/python-mode")
;(setq py-install-directory "~/.emacs.d/python-mode")
;(require 'python-mode)

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

(set-face-background 'ac-candidate-face "blue")
(set-face-foreground 'ac-candidate-face "white")

(set-face-background 'ac-selection-face "lightgray")
(set-face-foreground 'ac-selection-face "black")

;;; jedi

(autoload 'jedi:setup "jedi" nil t)
(add-hook 'python-mode-hook 'jedi:setup)

;;; solarized

;(add-to-list 'load-path "~/.emacs.d/solarized")
;(add-to-list 'custom-theme-load-path "~/.emacs.d/solarized")

;;; yasnippet

(add-to-list 'load-path "~/.emacs.d/yasnippet")
(require 'yasnippet)
(setq yas-snippet-dirs
      '("~/.emacs.d/custom/snippets"
	"~/.emacs.d/yasnippet/snippets"))
(yas-global-mode 1)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(mouse-drag-copy-region nil)
 '(safe-local-variable-values (quote ((encoding . utf-8)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
