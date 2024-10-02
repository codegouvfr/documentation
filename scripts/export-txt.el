;; Copyright (c) DINUM, Bastien Guerry
;; SPDX-License-Identifier: GPL-3.0-or-later
;; License-Filename: LICENSES/GPL-3.0-or-later.txt

(require 'ox-ascii)

(setq make-backup-files nil
      debug-on-error t
      org-confirm-babel-evaluate nil
      org-export-with-broken-links t
      org-md-toplevel-hlevel 2
      org-export-with-toc t)

(let* ((org-file "index.org")
       (file-name-basedir (concat (file-name-directory org-file)
				  (file-name-base org-file)))
       (txt-file (concat file-name-basedir ".txt")))
  (if (and (file-exists-p txt-file)
           (file-newer-than-file-p txt-file org-file))
      (message " [skipping] unchanged %s" org-file)
    (message "[exporting] %s" (file-relative-name org-file default-directory))
    (with-current-buffer (find-file org-file)
      (condition-case err
	  (org-ascii-export-to-ascii)
        (error (message (error-message-string err)))))))
