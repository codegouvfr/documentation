;; Copyright (c) DINUM, Bastien Guerry
;; SPDX-License-Identifier: GPL-3.0-or-later
;; License-Filename: LICENSES/GPL-3.0-or-later.txt

(require 'ox-texinfo)
(require 'ox-md)
(load-file "scripts/s.el")
(load-file "scripts/ox-json.el")

(setq make-backup-files nil
      debug-on-error t
      org-confirm-babel-evaluate nil
      org-export-with-broken-links t)

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
	 ;; (json-file (concat file-name-basedir ".json"))
	 (md-file (concat file-name-basedir ".md")))
    ;; Export as .texi
    (if (and (file-exists-p texi-file)
             (file-newer-than-file-p texi-file org-file))
	(message " [skipping] unchanged %s" org-file)
      (message "[exporting] %s" (file-relative-name org-file default-directory))
      (with-current-buffer (find-file org-file)
	(condition-case err
            (org-texinfo-export-to-texinfo)
          (error (message (error-message-string err))))))
    ;; Export as .md
    (if (and (file-exists-p md-file)
             (file-newer-than-file-p md-file org-file))
	(message " [skipping] unchanged %s" org-file)
      (message "[exporting] %s" (file-relative-name org-file default-directory))
      (with-current-buffer (find-file org-file)
	(condition-case err
	    (let ((org-export-options-alist '((:headline-levels nil "H" 4))))
              (org-md-export-to-markdown))
          (error (message (error-message-string err))))))
    ;; Export as json
    ;; (if (and (file-exists-p json-file)
    ;;          (file-newer-than-file-p json-file org-file))
    ;; 	(message " [skipping] unchanged %s" org-file)
    ;;   (message "[exporting] %s" (file-relative-name org-file default-directory))
    ;;   (with-current-buffer (find-file org-file)
    ;; 	(condition-case err
    ;; 	    (let ((org-export-options-alist '((:headline-levels nil "H" 4))))
    ;;           (ox-json-export-to-file))
    ;;       (error (message (error-message-string err))))))
    )
  (with-current-buffer (find-file org-file)
    (condition-case err
	(org-multi-file-md-export)
      (error (message (error-message-string err))))))
