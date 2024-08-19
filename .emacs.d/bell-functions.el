;; -*- coding: utf-8; lexical-binding: t; -*-
;; kbelleau bell-functions.el

;; kill-word -> bell-delete-word
(defun bell-delete-word (arg)
  "Delete characters forward until encountering the end of a word.
With argument ARG, do this many times.
This command does not push erased text to the kill ring."
  (interactive "p")
  (delete-region (point) (progn (forward-word arg) (point))))

;; backward-kill-word -> bell-backward-delete-word
(defun bell-backward-delete-word (arg)
  "Delete characters backward until encountering the beginning of a word.
With argument ARG, do this that many times.
This commmand does not push erased text to the kill ring."
  (interactive "p")
  (delete-region (point) (progn (backward-word arg) (point))))

;; write-file -> bell-write-file
(defun bell-write-file-out ()
  "Save the current buffer by writing-out like GNU nano."
  (interactive)
  (let* ((bell-write-filename (buffer-file-name))
         (bell-write-default-filename
          (if bell-write-filename bell-write-filename
            (expand-file-name (buffer-name) default-directory))))
    (setq bell-write-filename
          (read-from-minibuffer "File Name to Write: "
                                bell-write-default-filename))
    (when bell-write-filename
      (write-file bell-write-filename))))

;; show the current buffer's full path in the echo area
(defun bell-show-file-path ()
  "Print the full path of the current buffer's file to the echo area."
  (interactive)
  (let ((file-name (buffer-file-name)))
    (if file-name
        (message (format "* %s" file-name))
      (message "* No file open in current buffer"))))

;; re-open a elisp scratch buffer
(defun bell-create-scratch nil
  "Create a new scratch buffer."
  (interactive)
  (switch-to-buffer "*scratch*"))

;; markdown newline that adds ending double space
(defun bell-markdown-newline ()
  "Insert two spaces and a newline."
  (interactive)
  (insert "  \n"))

;; find-file but with /ssh: prompted (for remote access)
(defun bell-find-file-ssh ()
  "Opens a `find-file' prompt pre-located with '/ssh:'."
  (interactive)
  (let ((default-directory "/ssh:"))
    (call-interactively 'find-file)))

;; frame changing functions
(defun bell-resize-frame-default ()
  "Resize the current frame to 81x61 pixels."
  (interactive)
  (set-frame-size (selected-frame) 81 61))

(defun bell-resize-frame-double ()
  "Resize the current frame to 165x61 pixels."
  (interactive)
  (set-frame-size (selected-frame) 165 61))

(defun bell-resize-frame-go ()
  "Resize the current frame to 101x61 pixels."
  (interactive)
  (set-frame-size (selected-frame) 101 61))

(defun bell-resize-frame-thin ()
  "Resize the current frame to 71x61 pixels."
  (interactive)
  (set-frame-size (selected-frame) 71 61))
