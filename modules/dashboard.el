;;; modules/dashboard.el --- <-> -*- lexical-binding: t; -*-
;;
;; Author: Guilherme Ananias <https://github.com/noghartt>
;; Maintainer: Guilherme Ananias <hi@guiananias.dev>
;; Created: October 29, 2021
;;
;;; Commentary:
;;
;;; Code:

(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook)
  (setq dashboard-banner-logo-title "Welcome to Emacs!"
        dashboard-center-content t)
  :init
  (add-hook 'emacs-startup-hook 'dashboard-refresh-buffer))

(provide 'dashboard)
;;; dashboard.el ends here
