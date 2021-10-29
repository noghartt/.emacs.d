;;; init.el --- Load my configuration -*- lexical-binding: t; -*-
;;
;; Author: Guilherme Ananias <hi@guiananias.dev>
;; URL:    https://github.com/noghartt/.emacs.d
;;
;;; Commentary:
;;
;;  This file is in charge to bootstrap, which is divided into a number of other
;;  files.
;;
;;; Code:

;;;; Check Emacs Version:
;; TODO I don't know if Emacs "27.2" is the correct version to set
;; I think that we can reduce it to compare with Emacs v25.1+
(let ((minver "27.2"))
  (when (version< emacs-version minver)
    (error "You need to run this config on 27.2 or greater")))

;;;; Bootstrap Packages


(defvar emacs-dir (file-name-directory load-file-name))
(defvar emacs-core-dir (expand-file-name "core" emacs-dir))
(defvar emacs-modules-dir (expand-file-name "modules" emacs-dir))

(add-to-list 'load-path emacs-core-dir)
(add-to-list 'load-path emacs-modules-dir)

(require 'core-packages)

;; TODO: Insert these modules on the respective categories that they belong
;; like Doom Emacs do, with :editor <some-editor-module>
;; See details of some implementation of this here:
;; https://github.com/hlissner/doom-emacs/blob/3bd358dc36d6c7397772b1e17772e44138c380d3/core/core-modules.el
(require 'which-key)

(setq inhibit-startup-message t)

(setq menu-bar-mode nil
     tool-bar-mode nil
     scroll-bar-mode nil)

;;; init.el ends here
