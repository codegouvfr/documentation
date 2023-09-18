#!/usr/bin/env sh

":"; exec emacs --quick --script "$0" -- "$@" # -*- mode: emacs-lisp; lexical-binding: t; -*-

(add-to-list 'load-path "~/org-mode/lisp/")
(add-to-list 'load-path "~/org-contrib/lisp/")
(require 'ox-texinfo)

(setq make-backup-files nil
      debug-on-error t)

(setq org-confirm-babel-evaluate nil)

(dolist (org-file (directory-files-recursively default-directory "\\.org$"))
  (let* ((file-name-basedir (concat (file-name-directory org-file)
				    (file-name-base org-file)))
	 (texi-file (concat file-name-basedir ".texi"))
	 (md-file (concat file-name-basedir ".md")))
    (if (and (file-exists-p texi-file)
             (file-newer-than-file-p texi-file org-file))
	(message " [skipping] unchanged %s" org-file)
      (message "[exporting] %s" (file-relative-name org-file default-directory))
      (with-current-buffer (find-file org-file)
	(condition-case err
            (org-texinfo-export-to-texinfo)
          (error (message (error-message-string err))))))
    (if (and (file-exists-p md-file)
             (file-newer-than-file-p md-file org-file))
	(message " [skipping] unchanged %s" org-file)
      (message "[exporting] %s" (file-relative-name org-file default-directory))
      (with-current-buffer (find-file org-file)
	(condition-case err
            (org-md-export-to-markdown)
          (error (message (error-message-string err))))))))

