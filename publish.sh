#!/usr/bin/env sh

":"; exec emacs --quick --script "$0" -- "$@" # -*- mode: emacs-lisp; lexical-binding: t; -*-

(add-to-list 'load-path "~/org-mode/lisp/")
(add-to-list 'load-path "~/org-contrib/lisp/")
(require 'ox-texinfo)
(require 'ox-md)

(setq make-backup-files nil
      debug-on-error t)

(setq org-confirm-babel-evaluate nil)

;; https://gist.github.com/zzamboni/2e6ac3c4f577249d98efb224d9d34488
(defun org-multi-file-md-export ()
  "Export current buffer to multiple Markdown files."
  (interactive)
  ;; Loop over all entries in the file
  (org-map-entries
   (lambda ()
     (let* ((level (nth 1 (org-heading-components)))
            (title (or (nth 4 (org-heading-components)) ""))
            ;; Export filename is the EXPORT_FILE_NAME property, or the
            ;; lower-cased section title if it's not set.
            (filename
             (or (org-entry-get (point) "EXPORT_FILE_NAME")
                 (concat (replace-regexp-in-string " " "-" (downcase title)) ".md"))))
       (when (= level 1) ;; export only first level entries
         ;; Mark the subtree so that the title also gets exported
         (org-mark-subtree)
         ;; Call the export function. This is one of the base org
         ;; functions, the 'md defines the backend to use for the
         ;; conversion. For exporting to other formats, simply use the
         ;; correct backend name, and also change the file extension
         ;; above.
         (org-export-to-file 'md filename nil t nil))))
   ;; skip headlines tagged with "noexport" (this is an argument to
   ;; org-map-entries above)
   "-noexport")
  nil nil)

(dolist (org-file (directory-files-recursively default-directory "\\.org$"))
  (let* ((file-name-basedir (concat (file-name-directory org-file)
				    (file-name-base org-file)))
	 (texi-file (concat file-name-basedir ".texi"))
	 ;; (md-file (concat file-name-basedir ".md"))
	 )
    (if (and (file-exists-p texi-file)
             (file-newer-than-file-p texi-file org-file))
	(message " [skipping] unchanged %s" org-file)
      (message "[exporting] %s" (file-relative-name org-file default-directory))
      (with-current-buffer (find-file org-file)
	(condition-case err
            (org-texinfo-export-to-texinfo)
          (error (message (error-message-string err))))))
    ;; (if (and (file-exists-p md-file)
    ;;          (file-newer-than-file-p md-file org-file))
    ;; 	(message " [skipping] unchanged %s" org-file)
    ;;   (message "[exporting] %s" (file-relative-name org-file default-directory))
    ;;   (with-current-buffer (find-file org-file)
    ;; 	(condition-case err
    ;;         (org-md-export-to-markdown)
    ;;       (error (message (error-message-string err))))))
    )
  (with-current-buffer (find-file org-file)
    (condition-case err
	(org-multi-file-md-export)
      (error (message (error-message-string err))))))

