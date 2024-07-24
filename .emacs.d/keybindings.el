;; -*- coding: utf-8; lexical-binding: t; -*-
;; kbelleau keybinds.el

;;; OS SPECIFIC
;; mac option as 'meta'
;; mac command will be 'super' and get all normal macos shortcuts
;; 'alt' is unchanged
(setq-default mac-option-modifier 'meta)

;;; DEFINE PREFIXES
;; substitute
(define-prefix-command 'substitute-prefix-map)
;; flymake
(define-prefix-command 'flymake-prefix-map)
;; yas
(define-prefix-command 'yas-prefix-map)
;; speedbar
(define-prefix-command 'speedbar-prefix-map)
;; frame resize functions
(define-prefix-command 'bell-resize-prefix-map)

;;; MINOR MODE MAPS
;; corfu map
(let ((map corfu-map))
  (define-key map (kbd "TAB") 'corfu-next)
  (define-key map (kbd "S-TAB") 'corfu-previous))

;;; MAJOR MODE MAPS
;; go map
(add-hook 'go-mode-hook
          (lambda ()
            (local-set-key (kbd "C-c f") #'gofmt)))

;; markdown map
(add-hook 'markdown-mode-hook
          (lambda ()
            (local-set-key (kbd "C-<return>") #'bell-markdown-newline)))

;;; GLOBAL MAP
(let ((map global-map))

  ;; macos thing
  (define-key map (kbd "<escape>") 'keyboard-escape-quit)

  ;; modus theme toggle
  (define-key map (kbd "C-c t") #'modus-themes-toggle)

  ;; bell functions
  (define-key map (kbd "C-<delete>") #'bell-delete-word)
  (define-key map (kbd "M-d") #'bell-delete-word)
  (define-key map (kbd "C-<backspace>") #'bell-backward-delete-word)
  (define-key map (kbd "C-x o") #'bell-write-file-out)
  (define-key map (kbd "C-c s") #'bell-create-scratch)
  (define-key map (kbd "C-y") #'bell-show-file-path)
  (define-key map (kbd "C-x C-s") #'bell-find-file-ssh)
  (define-key map (kbd "s-<backspace>") #'bell-backward-delete-line)

  ;; undo fu
  (define-key map (kbd "s-u") #'undo-fu-only-undo)
  (define-key map (kbd "s-z") #'undo-fu-only-redo)
  (define-key map (kbd "s-Z") #'undo-fu-only-redo-all)
  (define-key map (kbd "s-U") #'undo-fu-disable-checkpoint)

  ;; recentf
  (define-key map (kbd "C-c o") #'recentf-open-files)

  ;; substitute
  (define-key map (kbd "C-c q") substitute-prefix-map)
  (define-key map (kbd "C-c q q") #'substitute-target-in-buffer)
  (define-key map (kbd "C-c q f") #'substitute-target-in-defun)
  (define-key map (kbd "C-c q e") #'substitute-target-below-point)
  (define-key map (kbd "C-c q a") #'substitute-target-above-point)

  ;; flymake
  (define-key map (kbd "C-c k") flymake-prefix-map)
  (define-key map (kbd "C-c k k") #'flymake-mode)
  (define-key map (kbd "C-c k n") #'flymake-goto-next-error)
  (define-key map (kbd "C-c k p") #'flymake-goto-prev-error)
  (define-key map (kbd "C-c k d") #'flymake-show-diagnostic)
  (define-key map (kbd "C-c k b") #'flymake-running-backends)
  (define-key map (kbd "C-c k m") #'flymake-menu)

  ;; speedbar
  (define-key map (kbd "C-c b") speedbar-prefix-map)
  (define-key map (kbd "C-c b b") #'speedbar-frame-mode)

  ;; resize frame functions
  (define-key map (kbd "C-c r") bell-resize-prefix-map)
  (define-key map (kbd "C-c r r") #'bell-resize-frame-default)
  (define-key map (kbd "C-c r d") #'bell-resize-frame-double)
  (define-key map (kbd "C-c r g") #'bell-resize-frame-go)
  (define-key map (kbd "C-c r t") #'bell-resize-frame-thin)

  ;; buffer minor mode toggles
  (define-key map (kbd "C-c w") #'whitespace-mode)
  (define-key map (kbd "C-c e") #'display-fill-column-indicator-mode)
  (define-key map (kbd "C-c l") #'display-line-numbers-mode)
  (define-key map (kbd "C-c i") #'highlight-indent-guides-mode)

  ;; common in-buffer shortcuts
  (define-key map (kbd "C-c d") #'delete-trailing-whitespace)
  (define-key map (kbd "s-_") #'goto-line)
  (define-key map (kbd "M-l") #'count-lines-page)
  (define-key map (kbd "C-x u") #'upcase-word)
  (define-key map (kbd "C-x l") #'downcase-word)

  ;; frame, window, buffer navigation
  (define-key map (kbd "M-o") #'other-window)
  (define-key map (kbd "s-]") #'next-buffer)
  (define-key map (kbd "s-[") #'previous-buffer)
  (define-key map (kbd "M-n") #'forward-paragraph)
  (define-key map (kbd "M-p") #'backward-paragraph)
  (define-key map (kbd "C-v") #'scroll-down-command)
  (define-key map (kbd "M-v") #'scroll-up-command)

  ;; packages
  (define-key map (kbd "C-c p") #'list-packages)

  ;; unset overlapping macos keybindings
  (define-key map (kbd "C-s") nil)      ; emacs isearch-forward
  (define-key map (kbd "C-r") nil)      ; emacs isearch-backward
  (define-key map (kbd "M-w") nil)      ; emacs copy
  (define-key map (kbd "C-w") nil)      ; emacs cut
  (define-key map (kbd "C-x C-w") nil)  ; emacs write-out
  (define-key map (kbd "M-u") nil)      ; emacs uppercase-word
  (define-key map (kbd "C-x C-c") nil)  ; emacs quit emacs

  ;; unset keybdings
  (define-key map (kbd "C-x z") nil)
  (define-key map (kbd "C-\\") nil)
  (define-key map (kbd "C-x <right>") nil)
  (define-key map (kbd "C-x <left>") nil)
  (define-key map (kbd "C-x <down>") nil)
  (define-key map (kbd "C-x <up>") nil)

  ;; ignore keys
  (define-key map (kbd "C-<right>") 'ignore)
  (define-key map (kbd "C-<left>") 'ignore)
  (define-key map (kbd "C-<up>") 'ignore)
  (define-key map (kbd "C-<down>") 'ignore)
  (define-key map (kbd "M-<right>") 'ignore)
  (define-key map (kbd "M-<left>") 'ignore)
  (define-key map (kbd "M-<up>") 'ignore)
  (define-key map (kbd "M-<down>") 'ignore)
  (define-key map (kbd "C-x C-<right>") 'ignore)
  (define-key map (kbd "C-x C-<left>") 'ignore)
  (define-key map (kbd "C-x C-<up>") 'ignore)
  (define-key map (kbd "C-x C-<down>") 'ignore))
