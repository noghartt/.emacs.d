;;; core/core-packages.el --- <-> -*- lexical-binding: t; -*-
;;
;; Author: Guilherme Ananias <https://github.com/noghartt>
;; Maintainer: Guilherme Ananias <hi@guiananias.dev>
;; Created: October 28, 2021
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;;; Code:

(defvar bootstrap-version)
(let ((bootstrap-file
       ;; TODO I don't know why, but if I run `emacs -q -l <path>', `user-emacs-directory'
       ;; don't set up correctly. Should I see what's going on here.
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; TODO: I don't know if these 3 lines below should stay here
;; Check if it's correctly added
(straight-use-package 'use-package)
(setq straight-use-package-by-default t)
(require 'use-package)

(provide 'core-packages)
;;; core-packages.el ends here
