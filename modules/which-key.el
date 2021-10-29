;;; modules/editor/which-key.el --- <-> -*- lexical-binding: t; -*-
;;
;; Author: Guilherme Ananias <https://github.com/noghartt>
;; Maintainer: Guilherme Ananias <hi@guiananias.dev>
;; Created: October 29, 2021
;; Modified: October 29, 2021
;;
;;; Commentary:
;;
;;; Code:

(use-package which-key
  :init
  (which-key-mode)
  :config
  (setq which-key-idle-delay 0.3))

(provide 'which-key)
;;; which-key.el ends here
