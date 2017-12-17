(setq user-full-name "Guo Shiyuan"
      user-mail-address "antguos@nus.edu.sg")

(use-package benchmark-init
  :ensure t
  :init
  (benchmark-init/activate))

(require 'epa-file)
(custom-set-variables '(epg-gpg-program  "/usr/local/bin/gpg2"))
(epa-file-enable)

(use-package zenburn-theme
 :ensure t
 :init)

(set-face-italic-p 'italic nil)
(set-face-attribute 'region nil :background "#c51b7d" )

(defun what-face (pos)
  (interactive "d")
  (let ((face (or (get-char-property (point) 'read-face-name)
		  (get-char-property (point) 'face))))
    (if face (message "Face: %s" face) (message "No face at %d" pos))))

(global-linum-mode 1) ;line number mode
(delete-selection-mode t) ;delete the region when typing, just like as we expect nowadays.
(column-number-mode t)
(defalias 'yes-or-no-p 'y-or-n-p) ;Answering just 'y' or 'n' will do
(blink-cursor-mode -1) ;Turn off the blinking cursor
(setq-default indicate-empty-lines t) ;Visually indicate empty lines after the buffer end.
(setq sentence-end-double-space nil) ;one space to end a sentence

(setq uniquify-buffer-name-style 'forward) ;syntax to contruct unique buffer names for files with the same baes name.

(scroll-bar-mode -1) ;; no scoll bar
(tool-bar-mode -1) 
(menu-bar-mode -1)
;; (set-default-font "Source Code Pro" nil t)
;; (set-face-attribute 'default nil :height 100)

(setq battery-mode-line-format "[%b%p%% %t]")

;; These functions are useful. Activate them.
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'dired-find-alternate-file 'disabled nil)

;; UTF-8 please
(setq locale-coding-system 'utf-8) ; pretty
(set-terminal-coding-system 'utf-8) ; pretty
(set-keyboard-coding-system 'utf-8) ; pretty
(set-selection-coding-system 'utf-8) ; please
(prefer-coding-system 'utf-8) ; with sugar on top

;; mode upon opening UTF-8 encoded files.
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

(setq mouse-wheel-scroll-amount '(1 ((shift) . 1) ((control) . nil)))
(setq mouse-wheel-progressive-speed nil)

;; obsolete method before purcell committed exec-path-from-shell
;; ;; to revert the situ on "incorrect path of pdflatex, thus no pdf compilation"
;; (defun set-exec-path-from-shell-PATH ()
;;   "Sets the exec-path to the same value used by the user shell"
;;   (let ((path-from-shell
;;          (replace-regexp-in-string
;;           "[[:space:]\n]*$" ""
;;           (shell-command-to-string "$SHELL -l -c 'echo $PATH'"))))
;;     (setenv "PATH" path-from-shell)
;;     (setq exec-path (split-string path-from-shell path-separator))))
;; (when (equal system-type 'darwin) (set-exec-path-from-shell-PATH))

;; exec-path-from-shell makes the command-line path with Emacs’s shell match the same one on OS X.
(use-package exec-path-from-shell
  :if (memq window-system '(mac ns))
  :ensure t
  :init
  (exec-path-from-shell-initialize)
  (exec-path-from-shell-copy-env "LC_ALL")
  (exec-path-from-shell-copy-env "LANG"))


(setenv "PATH" (concat (getenv "PATH") ":/usr/local/Cellar"))

;; Keep all backup and auto-save files in one directory
(setq auto-save-file-name-transforms '((".*" "~/.emacs.d/autosaves/\\1" t)))
(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
      backup-by-copying t    ; Don't delink hardlinks
      version-control t      ; Use version numbers on backups
      delete-old-versions t  ; Automatically delete excess backups
      kept-new-versions 20   ; how many of the newest versions to keep
      kept-old-versions 5    ; and how many of the old
      auto-save-timeout 20   ; number of seconds idle time before auto-save (default: 30)
      auto-save-interval 200 ; number of keystrokes between auto-saves (default: 300)
      )


(when (string-equal system-type "darwin")
  ;; delete files by moving them to the trash
  (setq delete-by-moving-to-trash t)
  (setq trash-directory "~/.Trash")
  ;; Don't make new frames when opening a new file with Emacs
  (setq ns-pop-up-frames nil)
  ;; Use Command-` to switch between Emacs windows (not frames)
  (bind-key "s-`" 'other-window)
)

  ;; Because of the keybindings above, set one for `other-frame'
  ;; (bind-key "s-1" 'other-frame)

  ;; Fullscreen!
  (setq ns-use-native-fullscreen nil) ; Not Lion style
  (bind-key "<s-return>" 'toggle-frame-fullscreen)

(defun odin-diff-buffer-with-file ()
  "Compare the current modified buffer with the saved version."
  (interactive)
  (let ((diff-switches "-u")) ;; unified diff
    (diff-buffer-with-file (current-buffer))))

(global-set-key (kbd "C-/") 'odin-diff-buffer-with-file)
(global-set-key (kbd "C-_") 'ediff-current-file)

;; 1, unifying system clipboard and KY kill ring
(setq save-interprogram-paste-before-kill t)

;; 2. sepeate clearly the two system and use a new key binding to it
;;(setq x-select-enable-clipboard nil)
;;(global-set-key (kbd "C-c y") 'x-clipboard-yank)

(display-time-mode)



(use-package smart-mode-line
  :ensure t
  :init
  (setq sml/no-confirm-load-theme t)
  (setq sml/theme 'powerline)
  (setq powerline-arrow-shape 'curve)
  (setq powerline-default-separator-dir '(left . right))
  (setq sml/name-width 20)
  (setq sml/mode-width 0)
  (sml/setup) ;;to initiate the sml!!
  :config
  (progn
    (set-face-attribute 'mode-line nil
			:box nil)
    (add-to-list 'sml/replacer-regexp-list '("^~/src/" ":src:") t)))

(use-package diminish
  :ensure t
  :config
  (progn
    (eval-after-load "whitespace" '(diminish 'whitespace-mode))
    (eval-after-load "yasnippet" '(diminish 'yas-minor-mode))
    (eval-after-load "undo-tree" '(diminish 'undo-tree-mode))
    (eval-after-load "guide-key" '(diminish 'guide-key-mode))
    (eval-after-load "smartparens" '(diminish 'smartparens-mode))
    (eval-after-load "guide-key" '(diminish 'guide-key-mode))
    (eval-after-load "eldoc" '(diminish 'eldoc-mode))
    (eval-after-load "flyspell" '(diminish 'fly-spell-mode))
    (diminish 'visual-line-mode)
    ))

;; (use-package org-wc
;;   :ensure org-wc) ;;


;; (custom-set-faces
;;  '(mode-line ((t (:foreground "#030303" :background "#bdbdbd" :box nil))))
;;  '(mode-line-inactive ((t (:foreground "#f9f9f9" :background "#666666" :box nil)))))

(require 'guide-key)
(setq guide-key/guide-key-sequence t) ;; on for all key-bindings
(guide-key-mode 1)

(global-set-key (kbd "S-<f10>")
  (lambda ()
    (interactive)
    (dired "/Users/Guoshiyuan/Dropbox/org_files/future")))
(global-set-key (kbd "S-<f12>")
  (lambda ()
    (interactive)
    (find-file "/Users/Guoshiyuan/Dropbox/org_files/antguos_lablog.org")))
(global-set-key (kbd "S-<f11>")
  (lambda ()
    (interactive)
    (find-file "/Users/Guoshiyuan/Dropbox/org_files/tech.org")))
(global-set-key (kbd "S-<f9>")
  (lambda ()
    (interactive)
    (dired "/Users/Guoshiyuan/Desktop/RA_admin/org_anat")))
(global-set-key (kbd "S-<f8>")
  (lambda ()
    (interactive)
    (dired "/Users/Guoshiyuan/Dropbox/org_files/testing_ground")))
(global-set-key (kbd "S-<f7>")
  (lambda ()
    (interactive)
    (find-file "/Users/Guoshiyuan/.emacs.d/config.org")))
(global-set-key (kbd "S-<f6>")
  (lambda ()
    (interactive)
    (dired "/Users/Guoshiyuan/Documents/GRE/Test_preparation/")))
(global-set-key (kbd "S-<f5>")
  (lambda ()
    (interactive)
    (find-file "/Users/Guoshiyuan/Dropbox/org_files/org_life/voca.org")))

(use-package bm
  :ensure t
  :bind (("C-c =" . bm-toggle)
	 ("C-c [" . bm-previous)
	 ("C-c ]" . bm-next)))

;; Don't make new frames when opening a new file with Emacs
(setq ns-pop-up-frames nil)
;; Use Command-` to switch between Emacs windows (not frames)
;; (bind-key "s-`" 'other-window))

;; Because of the keybindings above, set one for `other-frame'
;; (bind-key "s-1" 'other-frame)

;; Fullscreen!
(setq ns-use-native-fullscreen nil) ; Not Lion style
(bind-key "<s-return>" 'toggle-frame-fullscreen)

;; define the meaning of normal buffer
(defun f-normal-buffer ()
(or (not buffer-read-only)
    (buffer-file-name)))

(defun c-switch-to-next-buffer ()
  (interactive)
  (unless (minibufferp)
    (let ((p t) (bn (buffer-name)))
      (switch-to-next-buffer)
      (while (and p (not (f-normal-buffer)))
	(switch-to-next-buffer)
	(when (string= bn (buffer-name)) (setq p nil))))))

(defun c-switch-to-prev-buffer ()
  (interactive)
  (unless (minibufferp)
    (let ((p t) (bn (buffer-name)))
      (switch-to-prev-buffer)
      (while (and p (not (f-normal-buffer)))
	(switch-to-prev-buffer)
	(when (string= bn (buffer-name)) (setq p nil))))))


;; buffer switching
(bind-key "s-[" 'c-switch-to-next-buffer)
(bind-key "s-]" 'c-switch-to-prev-buffer)

;; make ibuffer the default buffer lister.
(defalias 'list-buffers 'ibuffer)

(defun toggle-window-split ()
  (interactive)
  (if (= (count-windows) 2)
      (let* ((this-win-buffer (window-buffer))
	     (next-win-buffer (window-buffer (next-window)))
	     (this-win-edges (window-edges (selected-window)))
	     (next-win-edges (window-edges (next-window)))
	     (this-win-2nd (not (and (<= (car this-win-edges)
					 (car next-win-edges))
				     (<= (cadr this-win-edges)
					 (cadr next-win-edges)))))
	     (splitter
	      (if (= (car this-win-edges)
		     (car (window-edges (next-window))))
		  'split-window-horizontally
		'split-window-vertically)))
	(delete-other-windows)
	(let ((first-win (selected-window)))
	  (funcall splitter)
	  (if this-win-2nd (other-window 1))
	  (set-window-buffer (selected-window) this-win-buffer)
	  (set-window-buffer (next-window) next-win-buffer)
	  (select-window first-win)
	  (if this-win-2nd (other-window 1))))))

(global-set-key (kbd "C-x |") 'toggle-window-split)

(setq ls-lisp-use-insert-directory-program nil)
(require 'ls-lisp)

(add-hook 'dired-mode-hook 'auto-revert-mode)

;; Also auto refresh dired, but be quiet about it
(setq global-auto-revert-non-file-buffers t)
(setq auto-revert-verbose nil)

(recentf-mode 1)
(setq recentf-max-saved-items 200
      recentf-max-menu-items 15)
(setq inhibit-startup-message t)

(setq savehist-file "/Users/Guoshiyuan/Dropbox/org_files/org_life/emacs-history")
(savehist-mode 1)

(setq org-file-apps
      '(("\\.docx\\'" . default)
        ("\\.doc\\'" . default)
	("\\.xlsx\\'" . default)
	("\\.png\\'" . default)
	("\\.tif\\'" . default)
	("\\.tiff\\'" . default)
	("\\.pdf\\'" . default)
	(auto-mode . emacs)))

(use-package counsel
  :ensure t
  :bind
  (("M-x" . counsel-M-x)
   ("M-y" . counsel-yank-pop)
   :map ivy-minibuffer-map
   ("M-y" . ivy-next-line)))

 (use-package swiper
   :diminish ivy-mode
   :ensure t
   :bind*
   (("C-s" . swiper)
    ("C-r" . ivy-resume) ;; original C-c C-r overide with ess send region. 
    ("C-x C-f" . counsel-find-file)
    ("C-c h f" . counsel-describe-function)
    ("C-c h v" . counsel-describe-variable)
    ("C-c i u" . counsel-unicode-char)
    ("M-i" . counsel-imenu)
    ("C-c g" . counsel-git)
    ("C-c j" . counsel-git-grep)
    ("C-c k" . counsel-ag)
    ("C-c i u" . counsel-locate))
   :config
   (progn
     (ivy-mode 1)
     (setq ivy-use-virtual-buffers t)
     (define-key read-expression-map (kbd "C-r") #'counsel-expression-history)
     (ivy-set-actions
       'counsel-find-file
       '(("d" (lambda (x) (delete-file (expand-file-name x)))
	 "delete"
	 )))
     (ivy-set-actions
       'ivy-switch-buffer
       '(("k"
	 (lambda (x)
	   (kill-buffer x)
	   (ivy--reset-state ivy-last))
	 "kill")
	("j"
	 ivy--switch-buffer-other-window-action
	 "other window")))))

(use-package counsel-projectile
  :ensure t
  :config
  (counsel-projectile-on))

(use-package ivy-hydra :ensure t)

(setq flyspell-use-meta-tab nil)

(use-package flyspell-correct-ivy
  :bind (:map flyspell-mode-map
	      ("C-;" . flyspell-correct-word-generic)))

;;(require 'flyspell-correct-helm)
;;(define-key flyspell-mode-map (kbd "C-;") 'flyspell-correct-previous-word-generic)

(use-package avy
  :bind
  (:map dired-mode-map ("." . avy-goto-word-or-subword-1))
  :config
  (avy-setup-default))

(use-package ace-link
  :bind
  ("M-g e" . avy-jump-error)
  :config
  (ace-link-setup-default)
  (defun avy-jump-error-next-error-hook ()
    (let ((compilation-buffer (compilation-find-buffer)))
      (quit-window nil (get-buffer-window compilation-buffer))
      (recenter)))
  (def avy-jump-error
    (let ((compilation-buffer (compilation-find-buffer))
	  (next-error-hook '(avy-jump-error-next-error-hook)))
      (when compilation-buffer
	(with-current-buffer compilation-buffer
	  (when (derived-mode-p 'compilation-mode)
	    (pop-to-buffer compilation-buffer)
	    (ace-link-compilation)))))))

(use-package ace-window
  :ensure t
  :bind  ("s-`" . ace-window)
  :config
  (setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))
  :init
  (progn
    (global-set-key [remap other-window] 'ace-window)
					;(setq aw-scope 'frame)
    (custom-set-faces
     '(aw-leading-char-face
       ((t (:inherit ace-jump-face-foreground :height 3.0)))))
))

(show-paren-mode t)

(use-package highlight-parentheses
  :ensure t
  :diminish highlight-parentheses-mode
  :config
  (add-hook 'emacs-lisp-mode-hook
	    (lambda()
	      (highlight-parentheses-mode)
	      )))

(use-package rainbow-delimiters
  :ensure t
  :config
  (add-hook 'lisp-mode-hook
	    (lambda()
	      (rainbow-delimiters-mode)
	      ))
  :init (global-highlight-parentheses-mode)
  )

(smartparens-global-mode 1)
(sp-pair "(" ")" :wrap "C-(")
;; |foobar
;; hit C-(
;; becomes (|foobar)
(sp-pair "'" nil :actions :rem)

;; (sp-local-pair 'org-mode "=" "=") ; select region, hit = then region -> =region= in org-mode
;; (sp-local-pair 'org-mode "*" "*") ; select region, hit * then region -> *region* in org-mode
;;(sp-local-pair 'org-mode "/" "/") ; select region, hit / then region -> /region/ in org-mode
;; (sp-local-pair 'org-mode "_" "_") ; select region, hit _ then region -> _region_ in org-mode
;; (sp-local-pair 'org-mode "+" "+") ; select region, hit + then region -> +region+ in org-mode

(use-package paredit
  :ensure t
  :diminish paredit-mode
  :config
  (add-hook 'emacs-lisp-mode-hook       #'enable-paredit-mode)
  (add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
  (add-hook 'ielm-mode-hook             #'enable-paredit-mode)
  (add-hook 'lisp-mode-hook             #'enable-paredit-mode)
  (add-hook 'lisp-interaction-mode-hook #'enable-paredit-mode)
  (add-hook 'scheme-mode-hook           #'enable-paredit-mode)
  :bind (("C-c d" . paredit-forward-down))
  )

;; Ensure paredit is used EVERYWHERE!
(use-package paredit-everywhere
  :ensure t
  :diminish paredit-everywhere-mode
  :config
  (add-hook 'prog-mode-hook #'paredit-everywhere-mode))

(use-package expand-region
  :ensure t
  :bind ("C-=" . er/expand-region))

;;kaushalmodi
(use-package multiple-cursors
  :bind (("C-S-c C-S-c" . mc/edit-lines)
	 ("C->" . mc/mark-next-like-this)
	 ("C-<" . mc/mark-previous-like-this)
	 ("C-c C-<" . mc/mark-all-like-this)
	 ("C-S-<mouse-1>" . mc/add-cursor-on-click))
  ;; :bind (:map region-bindings-mode-map
  ;;	      ("a" . mc/mark-all-like-this)
  ;;	      ("p" . mc/mark-previous-like-this)
  ;;	      ("n" . mc/mark-next-like-this)
  ;;	      ("P" . mc/unmark-previous-like-this)
  ;;	      ("N" . mc/unmark-next-like-this)
  ;;	      ("[" . mc/cycle-backward)
  ;;	      ("]" . mc/cycle-forward)
  ;;	      ("m" . mc/mark-more-like-this-extended)
  ;;	      ("h" . mc-hide-unmatched-lines-mode)
  ;;	      ("\\" . mc/vertical-align-with-space)
  ;;	      ("#" . mc/insert-numbers) ; use num prefix to set the starting number
  ;;	      ("^" . mc/edit-beginnings-of-lines)
  ;;	      ("$" . mc/edit-ends-of-lines))
  :init
  (progn
    (setq mc/list-file (locate-user-emacs-file "mc-lists"))
    ;; Disable the annoying sluggish matching paren blinks for all cursors
    ;; when you happen to type a ")" or "}" at all cursor locations.
    (defvar modi/mc-blink-matching-paren--store nil
      "Internal variable used to restore the value of `blink-matching-paren'
after `multiple-cursors-mode' is quit.")

    ;; The `multiple-cursors-mode-enabled-hook' and
    ;; `multiple-cursors-mode-disabled-hook' are run in the
    ;; `multiple-cursors-mode' minor mode definition, but they are not declared
    ;; (not `defvar'd). So do that first before using `add-hook'.
    (defvar multiple-cursors-mode-enabled-hook nil
      "Hook that is run after `multiple-cursors-mode' is enabled.")
    (defvar multiple-cursors-mode-disabled-hook nil
      "Hook that is run after `multiple-cursors-mode' is disabled.")

    (defun modi/mc-when-enabled ()
      "Function to be added to `multiple-cursors-mode-enabled-hook'."
      (setq modi/mc-blink-matching-paren--store blink-matching-paren)
      (setq blink-matching-paren nil))

    (defun modi/mc-when-disabled ()
      "Function to be added to `multiple-cursors-mode-disabled-hook'."
      (setq blink-matching-paren modi/mc-blink-matching-paren--store))

    (add-hook 'multiple-cursors-mode-enabled-hook #'modi/mc-when-enabled)
    (add-hook 'multiple-cursors-mode-disabled-hook #'modi/mc-when-disabled)))



;; (require 'multiple-cursors)
;; (global-set-key (kbd "C-S-<right>") 'mc/mark-next-like-this)
;; (global-set-key (kbd "C-S-<left>") 'mc/mark-previous-like-this)

(use-package undo-tree
  :init
  (global-undo-tree-mode +1)
  :bind ("C-c u" . undo-tree-visualize)
  :diminish undo-tree-mode)

(use-package magit
  :ensure t
  :defer t
  :bind ("C-c g" . magit-status)
  :config
  (define-key magit-status-mode-map (kbd "q") 'magit-quit-session))

;; full screen magit-status
(defadvice magit-status (around magit-fullscreen activate)
  (window-configuration-to-register :magit-fullscreen)
  ad-do-it
  (delete-other-windows))

(defun magit-quit-session ()
  "Restores the previous window configuration and kills the magit buffer"
  (interactive)
  (kill-buffer)
  (jump-to-register :magit-fullscreen))

(setq org-directory "~/Dropbox/org_files")

(add-hook 'org-mode-hook 'flyspell-mode)
(add-hook 'org-mode-hook 'visual-line-mode)
(add-hook 'org-mode-hook (lambda ()
				(org-defkey org-mode-map "\C-c[" 'undefined)
				(org-defkey org-mode-map "\C-c]" 'undefined)
				(org-defkey org-mode-map "\C-c;" 'undefined)
				(org-defkey org-mode-map "\C-xf" 'undefined)
				;; (org-defkey org-mode-map "\C-n" 'org-next-link)
				;; (org-defkey org-mode-map "\C-p" 'org-previous-link)
))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)
(global-set-key (kbd "C-c C-.") 'calendar)
(global-set-key (kbd "C-c v") 'org-show-todo-tree)

;; ;; handling links
;;  (add-hook 'org-load-hook
;;             (lambda ()
;;               (define-key org-mode-map "C-n" 'org-next-link)
;;               (define-key org-mode-map "C-p" 'org-previous-link)))

(setq org-catch-invisible-edits t)

(setq org-use-speed-commands t)

(setf org-blank-before-new-entry '((heading . nil) (plain-list-item . nil)))

(setq org-special-ctrl-a/e t)
(setq org-special-ctrl-k t)

(setq org-adapt-indentation nil)
;; (setq org-hide-leading-stars t)

;; (setq org-link-abbrev-alist
;;       '(("org_refcard" . [[http://emacs.readthedocs.io/en/latest/index.html][org_refcard]])
;;	("dotEmacs_YT" . "http://emacs.readthedocs.io/en/latest/index.html")))

(setq org-agenda-files
      (delq nil
	    (mapcar (lambda (x) (and (file-exists-p x) x))
		    '("~/Dropbox/org_files/"))))

;; I don't want to see things that are done. turn that off here.
;; http://orgmode.org/manual/Global-TODO-list.html#Global-TODO-list
(setq org-agenda-skip-scheduled-if-done t)
(setq org-agenda-skip-deadline-if-done t)
(setq org-agenda-skip-timestamp-if-done t)
(setq org-agenda-todo-ignore-scheduled t)
(setq org-agenda-todo-ignore-deadlines t)
(setq org-agenda-todo-ignore-timestamp t)
(setq org-agenda-todo-ignore-with-date t)
(setq org-agenda-start-on-weekday nil) ;; start on current day

(setq org-upcoming-deadline '(:foreground "blue" :weight bold))

;; use timestamps in date-trees. for the journal
(setq org-datetree-add-timestamp 'active)


;; (add-to-list
;;  'org-agenda-custom-commands
;;  '("w" "Weekly Review"
;;    ( ;; deadlines
;;     (tags-todo "+DEADLINE<=\"<today>\""
;;	       ((org-agenda-overriding-header "Late Deadlines")))
;;     ;; scheduled  past due
;;     (tags-todo "+SCHEDULED<=\"<today>\""
;;	       ((org-agenda-overriding-header "Late Scheduled")))

;;     ;; now the agenda
;;     (agenda ""
;;	    ((org-agenda-overriding-header "weekly agenda")
;;	     (org-agenda-ndays 7)
;;	     (org-agenda-tags-todo-honor-ignore-options t)
;;	     (org-agenda-todo-ignore-scheduled nil)
;;	     (org-agenda-todo-ignore-deadlines nil)
;;	     (org-deadline-warning-days 0)))
;;     ;; and last a global todo list
;;     (todo "TODO"))))

(setq org-capture-templates
      (quote (("t" "TODO_item_list" entry (file+datetree "~/Dropbox/org_files/TODO.org") "* TODO %^{Description} %^g\n  :LOGBOOK:\n  - State \"TODO\"       from              %T\n  :END:\n%?")
	      ("r" "NO_action" entry (file+datetree "~/Dropbox/org_files/TODO.org") "* %^{Description} %^g\n%?")
	      ("d" "bug_debug" entry (file+olp "~/Dropbox/org_files/tech.org" "bugs and debugs") "** TODO %^{Description} %^g\n%?")
	      ("f" "config_improvement" entry (file+olp "~/.emacs.d/config.org" "future improvement") "** TODO %^{Description} \n  :LOGBOOK:\n  - State \"TODO\"       from              %T\n  :END:\n%?")
	      ("j" "Journal_entry" entry (file+datetree "~/Dropbox/org_files/杂记.org" ) "* %?" :unnarrowed t)
	      )))

(setq org-log-done nil)
(setq org-todo-keywords
       '((sequence "TODO(t!)" "WAIT(w@/!)" "|" "DONE(d!)" "CANCELED(c@)")))
(setq org-todo-keyword-faces
      (quote (("TODO" :foreground "red" :weight bold)
	      ("DONE" :foreground "forest green" :weight bold)
	      ("WAIT" :foreground "orange" :weight bold)
	      ("CANCELED" :foreground "blue" :weight bold))))
(setq org-use-fast-todo-selection t)

(setq org-log-into-drawer t)
(setq org-clock-into-drawer t)

;; (defvar org-created-property-name "CREATED"
;;   "The name of the org-mode property that stores the creation date of the entry")

;; (defun org-set-created-property (&optional active NAME)
;;   "Set a property on the entry giving the creation time.

;; By default the property is called CREATED. If given the `NAME'
;; argument will be used instead. If the property already exists, it
;; will not be modified."
;;   (interactive)
;;   (let* ((created (or NAME org-created-property-name))
;;          (fmt (if active "<%s>" "[%s]"))
;;          (now  (format fmt (format-time-string "%Y-%m-%d %a %H:%M"))))
;;     (unless (org-entry-get (point) created nil)
;;       (org-set-property created now))))

(setq org-tags-column 45)

(setq org-tag-persistent-alist '((:startgroup)
				 ;; ("structure" . ?w)
				 ;; (:grouptags)
				 ("motive" . ?q) ("answer" . ?a)
				 (:endgroup)
				 (:startgrouptag)
				 ("lab_book". ?l) ("admin" . ?d) ("stats" . ?s) ("presentation" . ?v) ("杂" . ?t) ("future_plan" . ?f) ("programming" . ?p)
				 (:endgrouptag)
				 ;; (:startgrouptag)
				 ;; ("programming" . ?p)
				 ;; (:grouptags)
				 ;; ("R" . ?r) ("LP" . ?l) ("emacs" . ?e) ("elisp" . ?E) ("shell" . ?b) ("regex" . ?x) ("inkscape" . ?i) ("imageJ" . ?j)
				 ;; (:endgrouptag)
))

(setq org-mobile-directory "/Users/Guoshiyuan/Dropbox/Apps/MobileOrg")

(setq-default indent-tabs-mode t)

(setq org-export-with-sub-superscripts '{})

(use-package flycheck
  :if (display-graphic-p)
  :bind ("C-c f" . flycheck-mode)
  :config
  (defun my-on-flycheck-status-change (status)
    (let ((fc-icon
           (cond
            ((eq status 'running) [#xF0F4])
            ((eq status 'errored) [#xF00C])
            ((eq status 'finished) [#xF00D]))))
      (diminish #'flycheck-mode (concat " " fc-icon))
      (force-mode-line-update)))

  (add-hook 'flycheck-status-changed-functions #'my-on-flycheck-status-change))

(setq org-startup-with-inline-images "inlineimages")
;;(setq org-image-actual-width 550)
(setq org-image-actual-width (/ (display-pixel-width) 3))
;;(setq org-image-actual-width 400)


(defun scimax-align-result-table ()
  "Align tables in the subtree."
  (save-restriction
    (save-excursion
      (unless (org-before-first-heading-p) (org-narrow-to-subtree))
      (org-element-map (org-element-parse-buffer) 'table
	(lambda (tbl)
	  (goto-char (org-element-property :begin tbl))
	  (while (not (looking-at "|")) (forward-line))
	  (org-table-align))))))
;; inline indentaiton
(add-hook 'org-babel-after-execute-hook
	  'scimax-align-result-table)
(add-hook 'org-babel-after-execute-hook
	  'org-display-inline-images)

(require 'auctex-latexmk)
(auctex-latexmk-setup)

(setq org-highlight-latex-and-related '(latex script entities))

(setq org-latex-listings t)
(setq org-beamer-frame-level 2)


;; only applicable if using org-export-dispathch 
;; (with-eval-after-load 'ox-latex
;;   (add-to-list 'org-latex-classes
;; 	       '("beamer"
;; 	       "\\documentclass\[presentation\]\{beamer\}"
;; 	       ("\\section{%s}" . "\\section*{%s}")
;; 	       ("\\begin{frame}{%s}"
;; 		"\\end{frame}"
;; 		"\\begin{frame}{%s}"
;; 		"\\end{frame}"))))
;; (eval-after-load "ox-latex"

;;     ;; update the list of LaTeX classes and associated header (encoding, etc.)
;;     ;; and structure
;;     '(add-to-list 'org-latex-classes
;;                   `("beamer"
;;                     ,(concat "\\documentclass[presentation]{beamer}\n"
;;                              "[DEFAULT-PACKAGES]"
;;                              "[PACKAGES]"
;;                              "[EXTRA]\n")
;;                     ("\\section{%s}" . "\\section*{%s}")
;;                     ("\\subsection{%s}" . "\\subsection*{%s}")
;;                     ("\\subsubsection{%s}" . "\\subsubsection*{%s}"))))

;; lisp-interaction-mode-hook to AC
;; (add-hook 'lisp-interaction-mode-hook 'auto-complete-mode)


(byte-recompile-file
     (expand-file-name "ob-R.el"
		       (file-name-directory (locate-library "org")))
     t)

(org-babel-do-load-languages
 'org-babel-load-languages
 '((calc . t)
   (latex . t)
   (shell . t)
   (R . t)
   (emacs-lisp . t)
   (python . t)
   (ditaa . t)
))

(setq org-src-lang-modes nil)
(add-to-list 'org-src-lang-modes (quote ("shell" . shell-mode)))
(add-to-list 'org-src-lang-modes (quote ("elisp" . emacs-lisp)))
(add-to-list 'org-src-lang-modes (quote ("emacs-lisp" . emacs-lisp)))
(add-to-list 'org-src-lang-modes (quote ("R" . r)))
;;(add-to-list 'org-src-lang-modes (quote ("screen" . shell-script)))
(add-to-list 'org-src-lang-modes (quote ("python" . python)))
(add-to-list 'org-src-lang-modes (quote ("ditaa" . ditaa)))
;; (add-to-list 'org-src-lang-modes (quote ("Graphviz" . Graphviz)))
;; disable confirmation
(defun odin/org-confirm-babel-evaluate (lang body)
  (not (or (string= lang "latex") (string= lang "R") (string= lang "python") (string= lang "shell") (string= lang "emacs-lisp"))))
(setq org-confirm-babel-evaluate 'odin/org-confirm-babel-evaluate)

(setq org-src-fontify-natively t
      org-src-window-setup 'reorganize-frame
      org-src-strip-leading-and-trailing-blank-lines t
      org-src-preserve-indentation t
      org-src-tab-acts-natively t)

(defvar org-blocks-hidden t)

(defun f-org-toggle-blocks ()
  (interactive)
  (if org-blocks-hidden
      (org-show-block-all)
    (org-hide-block-all))
  (setq-local org-blocks-hidden (not org-blocks-hidden)))

(add-hook 'org-mode-hook 'f-org-toggle-blocks)

(define-key org-mode-map (kbd "s-1") 'f-org-toggle-blocks)

(defun formatted-copy ()
  "Export region to HTML, and copy it to the clipboard."
  (interactive)
  (save-window-excursion
    (let* ((buf (org-export-to-buffer 'html "*Formatted Copy*" nil nil t t))
	   (html (with-current-buffer buf (buffer-string))))
      (with-current-buffer buf
	(shell-command-on-region
	 (point-min)
	 (point-max)
	 "textutil -stdin -format html -convert rtf -stdout | pbcopy"))
      (kill-buffer buf))))

(global-set-key (kbd "s-w") 'formatted-copy)

(defun f-tbl-export (name)
  "Search for table named `NAME` and export."
  (interactive "s")
  (show-all)
  (let ((case-fold-search t))
    (if (search-forward-regexp (concat "#\\+NAME: +" name) nil t)
    (progn
      (next-line)
      (org-table-export (format "%s.csv" name) "orgtbl-to-csv")))))

(setq org-ref-bibliography-notes "~/Dropbox/bibliography/notes.org"
      org-ref-default-bibliography '("~/Dropbox/bibliography/references.bib")
      org-ref-pdf-directory "~/Dropbox/bibliography/bibtex-pdfs/")
(setq bibtex-completion-bibliography "~/Dropbox/bibliography/references.bib"
      bibtex-completion-library-path "~/Dropbox/bibliography/bibtex-pdfs"
      bibtex-completion-notes-path "~/Dropbox/bibliography/helm-bibtex-notes")
(setq bibtex-completion-pdf-open-function 'org-open-file)
(require 'org-ref)
(require 'org-ref-pdf)
(require 'org-ref-url-utils)
(require 'doi-utils)
(require 'org-ref-wos)

(org-ref-cancel-link-messages)

(use-package yasnippet
  :ensure t
  :init (yas-global-mode 1)
  :config
  ;; (progn
  ;;   (yas-reload-all))
  )

;; add <el for emacs-lisp expansion
(add-to-list 'org-structure-template-alist
	     '("el" "#+BEGIN_SRC emacs-lisp\n?\n#+END_SRC"
	       "<src lang=\"emacs-lisp\">\n?\n</src>"))

;; add <sh for shell
(add-to-list 'org-structure-template-alist
	     '("sh" "#+BEGIN_SRC sh\n?\n#+END_SRC"
	       "<src lang=\"shell\">\n?\n</src>"))

(add-to-list 'org-structure-template-alist
	     '("lh" "#+latex_header: " ""))

(add-to-list 'org-structure-template-alist
	     '("lc" "#+latex_class: " ""))

(add-to-list 'org-structure-template-alist
	     '("lco" "#+latex_class_options: " ""))

(add-to-list 'org-structure-template-alist
	     '("ao" "#+attr_org: " ""))

(add-to-list 'org-structure-template-alist
	     '("al" "#+attr_latex: " ""))

(add-to-list 'org-structure-template-alist
	     '("ca" "#+caption: " ""))

(add-to-list 'org-structure-template-alist
	     '("tn" "#+tblname: " ""))

(add-to-list 'org-structure-template-alist
	     '("n" "#+name: " ""))
(add-to-list 'org-structure-template-alist
	     '("r" "#+BEGIN_SRC R :results output \n?\n#+END_SRC"))

(add-to-list 'org-structure-template-alist
	     '("R" "#+BEGIN_SRC R :results output graphics :file ./test.png :exports results \n?\n#+END_SRC"))

(unless (getenv "LANG") (setenv "LANG" "en_US.UTF-8"))

(use-package ess
  :ensure t
  :defer t
  :commands R
  :mode ("\\.[rR]\\'" . R-mode)
  :config
  ;; (setq ess-history-file "~/.Rhisotry")
  ;; (setq ess-R-font-lock-keywords
  ;; 	'((ess-R-fl-keyword:modifiers . t)
  ;; 	  (ess-R-fl-keyword:fun-defs . t)
  ;; 	  (ess-R-fl-keyword:keywords . t)
  ;; 	  (ess-R-fl-keyword:assign-ops . t)
  ;; 	  (ess-R-fl-keyword:constants . t)
  ;; 	  (ess-fl-keyword:fun-calls)
  ;; 	  (ess-fl-keyword:numbers)
  ;; 	  (ess-fl-keyword:operators)
  ;; 	  (ess-fl-keyword:delimiters)
  ;; 	  (ess-fl-keyword:=)
  ;; 	  (ess-R-fl-keyword:F&T . t)
  ;; 	  (ess-R-fl-keyword:%op% . t)))
  ;; (setq inferior-R-font-lock-keywords
  ;; 	'((ess-S-fl-keyword:prompt . t)
  ;; 	  (ess-R-fl-keyword:messages . t)
  ;; 	  (ess-R-fl-keyword:modifiers . t)
  ;; 	  (ess-R-fl-keyword:fun-defs . t)
  ;; 	  (ess-R-fl-keyword:keywords . t)
  ;; 	  (ess-R-fl-keyword:assign-ops . t)
  ;; 	  (ess-R-fl-keyword:constants . t)
  ;; 	  (ess-fl-keyword:matrix-labels . t)
  ;; 	  (ess-fl-keyword:fun-calls)
  ;; 	  (ess-fl-keyword:numbers)
  ;; 	  (ess-fl-keyword:operators)
  ;; 	  (ess-fl-keyword:delimiters)
  ;; 	  (ess-fl-keyword:=)
  ;; 	  (ess-R-fl-keyword:F&T . t)))


  :init
  (require 'ess-site)
  (setq ess-ask-for-ess-directory nil)
  (setq ess-local-process-name "R")
  (setq ansi-color-for-comint-mode 'filter)
  (setq comint-scroll-to-bottom-on-input t)
  (setq comint-scroll-to-bottom-on-output t)
  (setq comint-move-point-for-output t)
  (setq ess-eval-visibly-p 'nowait)
  (setq ess-S-assign-key (kbd "M--"))
  (ess-toggle-S-assign-key t) ; enable above key definition
  ;; leave my underscore key alone!
  (ess-toggle-underscore nil)
  
  (defun R_pipe ()
    "%>% operator in R"
    (interactive)
    (just-one-space 1)
    (insert "%>%")
    (reindent-then-newline-and-indent))

  (defun my-ess-start-R ()
    (interactive)
    (if (not (member "*R-main*" (mapcar (function buffer-name) (buffer-list))))
	(progn
	  (delete-other-windows)
	  (setq w1 (selected-window))
	  (setq w1name (buffer-name))
	  (setq w2 (split-window w1 nil t))
	  (R)
	  (set-window-buffer w2 "*R*")
	  (rename-buffer "*R-main*")
	  (set-window-buffer w1 w1name))))
  (defun my-ess-eval ()
    (interactive)
    (my-ess-start-R)
    (if (and transient-mark-mode mark-active)
	(call-interactively 'ess-eval-region)
      (call-interactively 'ess-eval-line-and-step)))
  (defun my-ess-init ()
    "Init my ess mode."
    (setq ess-help-own-frame 'one)
    (setq ess-tab-complete-in-script t)
    (setq ess-first-tab-never-complete
          'symbol-or-paren-or-punct))



  (define-key ess-mode-map (kbd "C-%") 'R_pipe)
  (define-key inferior-ess-mode-map (kbd "C-%") 'R-pipe)
  (define-key comint-mode-map [C-up] 'comint-previous-matching-input-from-input)
  (define-key comint-mode-map [C-down] 'comint-next-matching-input-from-input)
  (add-hook 'ess-mode-hook
  	  '(lambda()
  	     (local-set-key [(shift return)] 'my-ess-eval)))
  (add-hook 'Rnw-mode-hook
  	  '(lambda()
  	     (local-set-key [(shift return)] 'my-ess-eval)))
  (add-hook 'ess-mode-hook
  	  (lambda ()
  	    (flyspell-prog-mode)
  	    (run-hooks 'prog-mode-hook)
  	    ))
  (add-hook 'ess-R-post-run-hook (lambda () (smartparens-mode 1)))

  (add-hook 'inferior-ess-mode-hook
  	  '(lambda()
  	     (local-set-key [C-up] 'comint-previous-input)
  	     (local-set-key [C-down] 'comint-next-input)))

  (add-hook 'ess-mode-hook #'my-ess-init)
  (add-hook 'inferior-ess-mode-hook #'turn-on-smartparens-mode)
    )



;; (use-package pretty-mode
;;   :ensure t
;;   :init
;;   (add-hook 'ess-mode-hook 'turn-on-pretty-mode))




;; (use-package polymode		; ESS with polymode
;;   :ensure t
;;   :defer t
;;   :init
;;   (require 'poly-R)		; Load necessary modes
;;   (require 'poly-markdown)
;;   (require 'poly-noweb)
;;   :config
;;   (add-to-list 'auto-mode-alist '("\\.md" . poly-markdown-mode))
;;   (add-to-list 'auto-mode-alist '("\\.Snw" . poly-noweb+r-mode))
;;   (add-to-list 'auto-mode-alist '("\\.Rnw" . poly-noweb+r-mode))
;;   (add-to-list 'auto-mode-alist '("\\.Rmd" . poly-markdown+r-mode))
;;   )


;; help and auto-completion
(use-package ess-R-object-popup
  :ensure t
  :bind (:map ess-mode-map
	      ("\C-c\C-g" . ess-R-object-popup)))

;; company completion?? i thought ess has its own completion

(add-hook 'R-mode-hook
        (defun my-R-mode-hook ()
          (company-mode)
          (local-set-key (kbd "TAB") 'company-complete)))

(setq company-selection-wrap-around t
      company-tooltip-align-annotations t
      company-idle-delay 0.36
      company-minimum-prefix-length 2
      company-tooltip-limit 10)

;; ess-initiation



;; Tang Yi

(require 'yaml-mode)
   (add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))
(add-hook 'yaml-mode-hook
    '(lambda ()
       (define-key yaml-mode-map "\C-m" 'newline-and-indent)))

(use-package markdown-mode
  :ensure t
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "multimarkdown"))

(use-package org2jekyll
  :defer 3
  :config
  (custom-set-variables '(org2jekyll-blog-author       "Shiyuan Guo")
                        '(org2jekyll-source-directory  (expand-file-name "/Users/Guoshiyuan/Dropbox/org_files/future/GuoSY_blog/org_post"))
                        '(org2jekyll-jekyll-directory  (expand-file-name "/Users/Guoshiyuan/Dropbox/org_files/future/GuoSY_blog/shiyuan.github.io"))
                        '(org2jekyll-jekyll-drafts-dir "")
                        '(org2jekyll-jekyll-posts-dir  "_posts/")
                        '(org-publish-project-alist
                          `(("default"
                             :base-directory ,(org2jekyll-input-directory)
                             :base-extension "org"
                             ;; :publishing-directory "/ssh:user@host:~/html/notebook/"
                             :publishing-directory ,(org2jekyll-output-directory)
                             :publishing-function org-gfm-publish-to-gfm
                             :headline-levels 4
                             :section-numbers nil
                             :with-toc nil
                             :html-head "<link rel=\"stylesheet\" href=\"./css/style.css\" type=\"text/css\"/>"
                             :html-preamble t
                             :recursive t
                             :make-index t
                             :html-extension "md"
                             :body-only t)

                            ("post"
                             :base-directory ,(org2jekyll-input-directory)
                             :base-extension "org"
                             :publishing-directory ,(org2jekyll-output-directory org2jekyll-jekyll-posts-dir)
                             :publishing-function org-gfm-publish-to-gfm
                             :headline-levels 4
                             :section-numbers nil
                             :with-toc nil
                             :html-head "<link rel=\"stylesheet\" href=\"./css/style.css\" type=\"text/css\"/>"
                             :html-preamble t
                             :recursive t
                             :make-index t
                             :html-extension "md"
                             :body-only t)

                            ("images"
                             :base-directory ,(org2jekyll-input-directory "img")
                             :base-extension "jpg\\|gif\\|png"
                             :publishing-directory ,(org2jekyll-output-directory "img")
                             :publishing-function org-publish-attachment
                             :recursive t)
			    
                            ("files"
                             :base-directory ,(org2jekyll-input-directory "artefects")
                             :base-extension "pdf\\|csv\\|tex\\|xlsx\\|xls"
                             :publishing-directory ,(org2jekyll-output-directory "artefects")
                             :publishing-function org-publish-attachment
                             :recursive t)			    

                            ("js"
                             :base-directory ,(org2jekyll-input-directory "js")
                             :base-extension "js"
                             :publishing-directory ,(org2jekyll-output-directory "js")
                             :publishing-function org-publish-attachment
                             :recursive t)

                            ("css"
                             :base-directory ,(org2jekyll-input-directory "css")
                             :base-extension "css\\|el"
                             :publishing-directory ,(org2jekyll-output-directory "css")
                             :publishing-function org-publish-attachment
                             :recursive t)

                            ("web" :components ("images" "js" "css"))))))

(provide 'blog-pack)
