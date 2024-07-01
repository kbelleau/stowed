;; -*- coding: utf-8; lexical-binding: t; -*-
;; kbelleau major-modes-config.el

;; org
(defun org-config ()
  (setq org-startup-folded t
        org-hide-emphasis-markers t
        tab-width 2)
  (visual-line-mode 1)
  (org-indent-mode 1)
  (org-superstar-mode 1)
  (flyspell-mode 1))
(add-hook 'org-mode-hook #'org-config)

;; emacs lisp
(defun elisp-config ()
  (visual-line-mode -1)
  (setq truncate-lines t
        show-trailing-whitespace t
        fill-column 80
        indent-tabs-mode nil
        tab-width 2)
  (display-fill-column-indicator-mode 1)
  (corfu-mode 1)
  (paredit-mode 1))
(add-hook 'emacs-lisp-mode-hook #'elisp-config)

;; sh
(defun sh-config ()
  (visual-line-mode -1)
  (setq truncate-lines t
        show-trailing-whitespace t
        fill-column 80
        indent-tabs-mode nil
        sh-basic-offset 2
        tab-width 2)
  (display-fill-column-indicator-mode 1)
  (corfu-mode 1)
  (flymake-mode 1)
  (highlight-indent-guides-mode 1))
(add-hook 'sh-mode-hook #'sh-config)

;; go
(defun go-config ()
  (visual-line-mode -1)
  (setq truncate-lines t
        show-trailing-whitespace t
        fill-column 100
        indent-tabs-mode t)
  (display-fill-column-indicator-mode 1)
  (corfu-mode 1)
  (eglot-ensure)
  (highlight-indent-guides-mode))
(add-hook 'go-mode-hook #'go-config)

;; python
(defun python-config ()
  (visual-line-mode -1)
  (setq truncate-lines t
        show-trailing-whitespace t
        fill-column 80
        python-indent-guess-indent-offset-verbose nil
        indent-tabs-mode nil
        tab-width 4)
  (display-fill-column-indicator-mode 1)
  (corfu-mode 1)
  (eglot-ensure)
  (highlight-indent-guides-mode 1))
(add-hook 'python-mode-hook #'python-config)

;; yaml
(defun yaml-config ()
  (visual-line-mode -1)
  (setq truncate-lines t
        show-trailing-whitespace t
        fill-column 80
        indent-tabs-mode nil
        tab-width 2)
  (display-fill-column-indicator-mode 1)
  (flymake-mode 1)
  (highlight-indent-guides-mode 1))
(add-hook 'yaml-mode-hook #'yaml-config)
(add-hook 'yaml-mode-hook #'flymake-yamllint-setup)

;; json
(defun json-config ()
  (visual-line-mode -1)
  (setq truncate-lines t
        show-trailing-whitespace t
        indent-tabs-mode nil
        tab-width 4)
  (highlight-indent-guides-mode 1))
(add-hook 'json-mode-hook #'json-config)

;; markdown
(defun md-config ()
  (visual-line-mode 1)
  (flyspell-mode 1))
(add-hook 'markdown-mode-hook #'md-config)
