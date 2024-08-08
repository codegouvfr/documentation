;; Copyright (c) DINUM, Bastien Guerry
;; SPDX-License-Identifier: GPL-3.0-or-later
;; License-Filename: LICENSES/GPL-3.0-or-later.txt

(require 'ox-texinfo)

(setq make-backup-files nil
      debug-on-error t
      org-confirm-babel-evaluate nil
      org-export-with-broken-links t
      org-md-toplevel-hlevel 2
      org-export-with-toc t)

(let* ((org-file "index.org")
       (file-name-basedir (concat (file-name-directory org-file)
				  (file-name-base org-file)))
       (texi-file (concat file-name-basedir ".texi")))
  (if (and (file-exists-p texi-file)
           (file-newer-than-file-p texi-file org-file))
      (message " [skipping] unchanged %s" org-file)
    (message "[exporting] %s" (file-relative-name org-file default-directory))
    (with-current-buffer (find-file org-file)
      (condition-case err
	  (org-texinfo-export-to-texinfo)
        (error (message (error-message-string err)))))))
