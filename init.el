(setq gc-cons-threshold 400000000)

;;; Begin initialization
;; Turn off mouse interface early in startup to avoid momentary display
(when window-system
  (menu-bar-mode -1)
  (tool-bar-mode -1)
  (scroll-bar-mode -1)
  (tooltip-mode -1))

(setq inhibit-startup-message t)
(setq initial-scratch-message "")

;; PACKAGE
;; use of the Melpa package repository. 
(require 'package)
;;(defvar gnu '("gnu" . "https://elpa.gnu.org/packages/"))
(defvar melpa '("melpa" . "https://melpa.org/packages/"))
;;(defvar melpa-stable '("melpa-stable" . "https://stable.melpa.org/packages/"))

(setq package-archives nil)
;;(add-to-list 'package-archives melpa-stable t)
(add-to-list 'package-archives melpa t)
;;(add-to-list 'package-archives gnu t)

;;(add-to-list 'package-archives
;;             '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

;; from "exec-path-from-shell" package. 
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;;; Bootstrap use-package
;; Install use-package if it's not already installed.
;; use-package is used to configure the rest of the packages.
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; From use-package README
(eval-when-compile
  (require 'use-package))
(require 'diminish)                ;; if you use :diminish
(require 'bind-key)
;; (setq use-package-verbose t)
(server-start)

;;; Load the config
(org-babel-load-file (concat user-emacs-directory "config.org"))

(setq gc-cons-threshold 800000)


