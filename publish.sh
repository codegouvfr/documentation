#!/usr/bin/env sh

":"; exec emacs --quick --script "$0" -- "$@" # -*- mode: emacs-lisp; lexical-binding: t; -*-

(add-to-list 'load-path "~/org-mode/lisp/")
(add-to-list 'load-path "~/org-contrib/lisp/")
(require 'ox-texinfo)

(setq make-backup-files nil
      debug-on-error t)

(setq org-confirm-babel-evaluate nil)

(dolist (org-file (directory-files-recursively default-directory "\\.org$"))
  (let ((texi-file (concat (file-name-directory org-file)
			   (file-name-base org-file) ".texi")))
    (if (and (file-exists-p texi-file)
             (file-newer-than-file-p texi-file org-file))
	(message " [skipping] unchanged %s" org-file)
      (message "[exporting] %s" (file-relative-name org-file default-directory))
      (with-current-buffer (find-file org-file)
	(condition-case err
            (org-texinfo-export-to-texinfo)
          (error (message (error-message-string err))))))))

