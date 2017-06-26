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


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" default)))
 '(package-selected-packages
   (quote
    (flycheck elpy lispy org-mac-link syntax-subword flyspell-correct-ivy ace-window ace-link org-wc company-shell benchmark-init ess-smart-equals ess-smart-underscore ess-view sml powerline-evil zenburn-theme xah-fly-keys writegood-mode voca-builder use-package solarized-theme smartparens smart-mode-line-powerline-theme rainbow-delimiters r-autoyas pretty-mode polymode pdf-tools paredit-everywhere ox-latex-chinese ox-ioslide ox-bibtex-chinese org-ref multiple-cursors magit latex-preview-pane ivy-hydra highlight-parentheses helm-swoop helm-projectile guide-key expand-region exec-path-from-shell ergoemacs-mode cyberpunk-theme counsel-projectile command-log-mode chinese-fonts-setup bm auctex-lua auctex-latexmk arjen-grey-theme)))
 '(safe-local-variable-values
   (quote
    ((whitespace-style face tabs spaces trailing lines space-before-tab::space newline indentation::space empty space-after-tab::space space-mark tab-mark newline-mark)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0))))
 '(font-lock-comment-face ((t (:foreground "#5F7F5F"))))
 '(mode-line ((t (:foreground "#030303" :background "#bdbdbd" :box nil))))
 '(mode-line-inactive ((t (:foreground "#f9f9f9" :background "#666666" :box nil))))
 '(org-block ((t (:inherit shadow :background "#2a2f38"))))
 '(org-block-begin-line ((t (:inherit org-meta-line :foreground "#bdc3ce" :weight extra-bold))))
 '(org-latex-and-related ((t nil))))
