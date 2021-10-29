;;; early-init.el --- <-> -*- lexical-binding: t; -*-
;;
;; Author: Guilherme Ananias <https://github.com/noghartt>
;; Maintainer: Guilherme Ananias <hi@guiananias.dev>
;; Created: October 28, 2021
;; Modified: October 28, 2021
;;
;;; Commentary:
;;
;;; Code:

;; Set this variable to `nil' to prevent that `package.el' load packages prior
;; See details here: https://github.com/raxod502/straight.el#getting-started
(setq gc-cons-threshold most-positive-fixnum)
(setq package-enable-at-startup nil)

(set-language-environment "UTF-8")

(provide 'early-init)
;;; early-init.el ends here
