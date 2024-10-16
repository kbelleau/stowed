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
  (company-mode 1)
  (paredit-mode 1))
(add-hook 'emacs-lisp-mode-hook #'elisp-config)

;; sh
(defun sh-config ()
  (visual-line-mode -1)
  (setq truncate-lines t
        show-trailing-whitespace t
        fill-column 80
        indent-tabs-mode nil
        tab-width 2
        sh-basic-offset 2)
  (display-fill-column-indicator-mode 1)
  (flymake-mode 1)
  (company-mode 1)
  (highlight-indent-guides-mode 1))
(add-hook 'sh-mode-hook #'sh-config)

;; ruby
(defun ruby-config ()
  (visual-line-mode -1)
  (inf-ruby-minor-mode 1)
  (setq truncate-lines t
        show-trailing-whitespace t
        fill-column 80
        indent-tabs-mode nil
        tab-width 2
        ruby-indent-tabs-mode nil
        ruby-indent-level 2)
  (display-fill-column-indicator-mode 1)
  (flymake-mode 1)
  (company-mode 1)
  (highlight-indent-guides-mode 1))
(add-hook 'ruby-mode-hook #'ruby-config)

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

;; snippet
(defun snippet-config ()
  (visual-line-mode -1)
  (setq truncate-lines t
        show-trailing-whitespace t))
(add-hook 'snippet-mode-hook #'snippet-config)
