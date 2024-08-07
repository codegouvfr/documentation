;; Copyright (c) DINUM, Bastien Guerry
;; SPDX-License-Identifier: GPL-3.0-or-later
;; License-Filename: LICENSES/GPL-3.0-or-later.txt

(require 'ox-texinfo)
(require 'ox-md)

(setq make-backup-files nil
      debug-on-error t
      org-confirm-babel-evaluate nil
      org-export-with-broken-links t
      org-md-toplevel-hlevel 2)

(dolist (org-file '("index.org"))
  (let* ((file-name-basedir (concat (file-name-directory org-file)
				    (file-name-base org-file)))
	 (texi-file (concat file-name-basedir ".texi"))
	 (md-file (concat file-name-basedir ".md")))
    ;; Export as .texi
    (if (and (file-exists-p texi-file)
             (file-newer-than-file-p texi-file org-file))
	(message " [skipping] unchanged %s" org-file)
      (message "[exporting] %s" (file-relative-name org-file default-directory))
      (with-current-buffer (find-file org-file)
	(condition-case err
;;	    (let ((org-export-options-alist '((:toc t))))
            (org-texinfo-export-to-texinfo)
          (error (message (error-message-string err))))))
    ;; Export as .md
    (if (and (file-exists-p md-file)
             (file-newer-than-file-p md-file org-file))
	(message " [skipping] unchanged %s" org-file)
      (message "[exporting] %s" (file-relative-name org-file default-directory))
      (with-current-buffer (find-file org-file)
	(condition-case err
	    (let ((org-export-options-alist '((:headline-levels nil "H" 6))))
              (org-md-export-to-markdown))
          (error (message (error-message-string err))))))))
