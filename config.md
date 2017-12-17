- [Introduction](#orgbe2cd63)
- [Questions related Emacs initiation.](#org145a429)
  - [what is the package loading Vs lisp loading; [Answer from stack exchange](http://emacs.stackexchange.com/questions/3310/difference-between-load-file-and-load)](#org50be7ab)
    - [[package loading](https://www.gnu.org/software/emacs/manual/html_node/emacs/Package-Installation.html)](#orgcb8fb48)
    - [[lisp loading](https://www.gnu.org/software/emacs/manual/html_node/emacs/Lisp-Libraries.html#Lisp-Libraries)](#orgd4ca822)
  - [what is all the "smart" package is all about](#orgd2201b4)
    - [these package include](#org27e2c3d)
  - [key binding, in the context of usepackage and normal key binding](#orgd07eeb5)
- [Personal Information](#org081ae19)
- [Customize settings](#orge7fcf95)
- [benchmark](#orgab8b8c6)
- [security](#org0cb2300)
- [Theme and theme library in  [emacs theme page](https://emacsthemes.com)](#orgecc2494)
  - [my preferred theme:](#orgba21f37)
  - [Cyberpunk theme: Dark background+colorful headline.](#org09ea251)
  - [solarised](#orga0a9ffc)
  - [BEST1: [zenburn](https://github.com/bbatsov/zenburn-emacs).](#org12a91a9)
    - [Zenburn default](#orgfaa956b)
  - [BEST2: arjen-grey-theme](#org29e5f74)
  - [kbd for switch code.](#org148b442)
  - [check for the face at point position](#org923d53d)
- [Miscellaneous default](#org6ab757c)
  - [Visual](#org525c6d0)
  - [Utility](#org1af4d68)
  - [path issue if starting emacs from finder](#org937af0b)
  - [file backup and delection](#org9e83b83)
    - [revert autosaved after breakdown](#org2a5a5ac)
  - [kill/yank with CUA interaction](#org21fce67)
    - [the mechanism of this issue](#org4632fd6)
    - [there are two ways to address this issue.](#orgf240b58)
  - [mode-line face](#orge387eb9)
  - [guide-key mode](#orgd8b9381)
  - [[command log-mode](https://github.com/lewang/command-log-mode)](#org52da9fa)
  - [ergoemacs mode](#orgfc52319)
- [Files in buffers](#org9a4c409)
  - [file fast jump](#org5eae561)
    - [key jump](#org374641f)
    - [bm: for book mark](#orgd892085)
  - [MAC "s-" key](#orga861a60)
  - [buffer manipulation](#org9ccf1ad)
    - [switching among[ "meaningful" buffer ](https://zhuanlan.zhihu.com/p/24017130?refer%3Dghostinemacs)](#org6b9d5fc)
    - [ibuffer is the improved version of list-buffers.](#org7a8cb70)
    - [toggle window view [from horizontal split to vertical split](http://stackoverflow.com/questions/14881020/emacs-shortcut-to-switch-from-a-horizontal-split-to-a-vertical-split-in-one-move)](#org3f9c4fe)
  - [dired file managment](#org25f5fb3)
    - [auto-revert mode](#org5c3c8b3)
  - [Recentf](#org11d287b)
    - [minibuffer [history](file:///Users/Guoshiyuan/Dropbox/org_files/org_life/emacs-history)](#org3896e78)
  - [External link using default apps.](#orgdb4ffd1)
    - [open pdf using emacs internal packages, docview](#org02c87a6)
- [Selection and completion](#org4d0ae91)
  - [ivy-hydra for switching buffer](#org96279d7)
  - [flyspell using ivy](#orgf01956c)
  - [avy](#org188f8b6)
  - [ace link](#org135c80d)
  - [ace window](#orgd23b343)
  - [ace-jump-mode](#orga601633)
  - [Helm](#orgc6395b7)
  - [Ido](#org77417ad)
- [Generic document edit](#orgb1f9f90)
  - [Parenthesis](#org26c40c5)
    - [show parenthesis](#org75b553f)
    - [add parenthesis](#orgb32ecf0)
    - [paredit](#org1f4cc64)
  - [expand region](#org3c52ba3)
  - [multiple cursor](#org429d8dd)
    - [[fundamental use of multiple cursor](http://emacs.stackexchange.com/questions/751/fundamentals-of-multiple-cursors)](#org2e0a867)
    - [mc usage @ [pragmatics emacs](http://pragmaticemacs.com/emacs/multiple-cursors/)](#org7fa7e6e)
  - [global abbrev](#org991e375)
  - [Undo Tree](#orgd1e3a6c)
  - [vocabuilder](#orgade5e1b)
- [Magit](#orgd87e0ac)
- [Org-mode](#orgd96db19)
  - [org directory](#org9e1bca2)
  - [org-mode-hook](#org25ee2cc)
  - [org structural edit](#org901873a)
    - [org catch invisible editing](#orge90e555)
    - [Org speed key command](#org6f0f7d6)
    - [org insert empty lines before inserting new heading.](#org8d53c07)
    - [control A/E/K header behaviour](#org6d12879)
    - [indentation](#org2efa0c0)
  - [org-links](#orgb627011)
  - [Org agenda](#org60475e4)
  - [org capture/refile](#org3d2063e)
    - [current [org capture template](http://orgmode.org/manual/Template-expansion.html#Template-expansion).](#org32317d6)
    - [To-her/to-him, using org-capture to communicate.](#org44d810b)
  - [org todo](#org0576a72)
    - [log to [drawer](http://emacs.stackexchange.com/questions/21291/add-created-timestamp-to-logbook)](#org22d76f2)
  - [Org tags](#orgc97fb35)
    - [**tag position**: The default value is -77, which is weird for smaller width windows.](#org1554b6d)
    - [personal tagging system](#org84e39f7)
  - [org mobile](#orge24b2f5)
- [LP in org](#org74042c7)
  - [tab behavior](#org4cf586a)
  - [superscript/subscript default](#org0835845)
  - [setup [flycheck](https://github.com/flycheck/flycheck) for R using [lintr](http://www.flycheck.org/en/latest/languages.html#r)](#org23c193c)
  - [org inline image and table](#org5320712)
  - [org-latex](#orgd2ac556)
    - [latex default packages.](#org0c82d34)
    - [adding [LatexMk](http://mirrors.ibiblio.org/CTAN/support/latexmk/latexmk.pdf) support to AUCTeX.](#orgb4713ea)
    - [highlight](#org7f58db2)
    - [latex preview pane](#orgcc13fa4)
    - [beamer](#orge00be87)
  - [Org babel languages](#org7355cf3)
    - [ess `ess-smart-S-assign` function by default has a toggling behavior: S-\_(=\_) insert assignment key and second time insert underscore.](#org46f84af)
  - [Org babel/source blocks](#orgfcd19a2)
    - [fold src block](#org89ee025)
    - [[org-structure-template-alist](http://orgmode.org/manual/Easy-templates.html#Easy-templates) on customize src expansion](#orgfaf3d73)
  - [Org exporting](#orgdfcb4f1)
    - [copy formatted and paste into MSword](#org949e66f)
    - [org table exporting](#orgc12f2b8)
  - [org-ref](#org09c1122)
  - [Yasnippet and template](#org213bd0f)
    - [yasnippet loading](#org8285741)
    - [org-template: [org-structure-template-alist](http://stackoverflow.com/questions/19145433/shortcut-for-inserting-environments-in-org-mode)](#org0ea2675)
  - [ESS](#org3b30384)
    - [reference list](#org7bdece4)
    - [babel:R configuration](#org5e849e7)
    - [kill R process](#org096214a)
    - ["polymode" by kitchin](#orgdc3b101)
- [personal webside](#orgc34a22c)
  - [learning markdown mode is tedious](#org0bd387e)
  - [why not we use org? here is org2jekyll.](#org2450a57)
- [future improvement](#orgba37b6e)
  - [customise date and develop a better capture template for todo and lab log](#org923ed5f)
  - [to understand emacs default path](#org252d47f)
  - [open links custumisation](#orge9a10ec)
  - [[capitalization after full stop](http://ergoemacs.org/emacs/emacs_upcase_sentence.html).](#org5392647)
  - [<span class="timestamp-wrapper"><span class="timestamp">&lt;2017-02-23 Thu&gt; </span></span> strange thing happens after initiation](#org809177b)
  - [[langtool](https://github.com/mhayashi1120/Emacs-langtool) for grammar check](#org25743ad)
  - [nanowrimo for word count and general documentation monitor.](#org2d312a1)
  - [thesaurus package](#orgd2643fc)
  - [GRE voca builder](#orgb37f3b0)
  - [smex: enhancement for of M-x, similar as ido.](#org8f7c454)
  - [winner-mode for undo??](#orgf28d99e)
  - [autopair global mode](#org5cc299b)
  - [[Turn off linum-mode when file is too big](http://blog.binchen.org/posts/turn-off-linum-mode-when-file-is-too-big.html).](#orga6797da)
  - [polymode affecting face for source code.](#org4f1631f)
  - [optimizing expand region behavior.](#orgaba1f7d)
  - [yas-snippet need to restart before functioning. why??](#org52af001)
  - [is it possible to have src have similar behavior as neighboring header (in folding, maybe)](#org6c7c1d3)
  - [[org-support-shift-selection](org-support-shift-select)](#orgdfcc787)
  - [image justification in LaTeX @ kinchin](#org227aa4c)
  - [improve emacs visualing nonstd symbols.](#orgce255af)
  - [capture has a strange indentation](#orgf3fbd0c)
  - [to prevent org-babel large output causing system hang.](#org7bc808f)
  - [chinese-fonts-setup](#org87af6e1)
  - [org bullets](#org77235c2)
  - [python and Ipython ([configuration ref.](http://www.jesshamrick.com/2012/09/18/emacs-as-a-python-ide/))](#orge7c084b)
  - [loading yas with in-used mode only](#org5555382)
  - [TWO-mode mode: src block as end of programming mode from [danDavision](https://github.com/dandavison/emacs-config/blob/master/old/emacs.org)](#org268968a)
    - [define org source face](#orgad04241)
  - [capture template for `config.org` future improvement.](#org9804194)
  - [org-bullet](#orga7874d4)
  - [define a macro for fast table setup: two hline and three vline](#org9f0bd66)
  - [design an hydra for toggling](#org5d5093b)
  - [what is the differnce between `org-edit-special` and `org-babel-expand-src-block`](#org686a800)
  - [setup subword mode for programme mode.](#org465742d)
  - [a mechanism that convert org table to list, and visa versa.](#org7e5f048)
  - [I have a list of R function. I want to push to github and these fucntion is loaded into R automatically when ever i initiate R.](#org9cae631)
  - [jump to pdf to a specific page number.](#org2507096)
  - [org reveal to visualize](#org449f820)



<a id="orgbe2cd63"></a>

# Introduction

This file is an org-file where emacs extracts the elisp code blocks to run initiation. By doing this, we can obtain an organized dot-emacs file with structured comments on the configuration.

The place I steal this bunch of code is from [here](https://github.com/danielmai/.emacs.d/blob/master/config.org) with a youtube [here](https://www.youtube.com/watch?v%3DVIuOwIBL-ZU&t%3D400s).

The mechanism of this configuration is using [org-babel-load-file](org-babel-load-file) function.

The following table list down reference

| author\_name&dot\_file                                                                                                                                                | dotEmacs last committing date | area his dotEmacs contributes                                                                                                                                         |
| [Daniel](https://github.com/danielmai/.emacs.d/blob/master/config.org)                                                                                                | 20 Sep 2016                   | tangle emacs code from org                                                                                                                                            |
| [Arjen](https://gitlab.com/buildfunthings/emacs-config)                                                                                                               | 13 Jan 2017                   | author of [BuildingFunThing](https://www.youtube.com/watch?v=I28jFkpN5Zk&t=225s), [advocating cybersafe](https://glyph.twistedmatrix.com/2015/11/editor-malware.html) |
| [wolray](https://zhuanlan.zhihu.com/ghostinemacs)                                                                                                                     |                               | zhihu blogger on emacs, various tips ()                                                                                                                               |
| [Fabrice Niessen@fniessen](https://github.com/fniessen/dotfiles)                                                                                                      |                               | CS major                                                                                                                                                              |
| [Howward Abrams](https://github.com/howardabrams/dot-files/blob/master/emacs.org)                                                                                     |                               | holistic configuration, with literate tweak                                                                                                                           |
| [Yi Tang](http://emacs.readthedocs.io/en/latest/index.html)                                                                                                           | Jul 2015                      | [data scientist(R) in emacs](http://blog.yitang.uk), sp, savehist, recentf)                                                                                           |
| [gongzhitaao](http://gongzhitaao.org/dotemacs/)                                                                                                                       |                               |                                                                                                                                                                       |
| [Dan Davison](https://github.com/dandavison/emacs-config)                                                                                                             | 30 Aug 2016                   |                                                                                                                                                                       |
| [Fabrice Niessen](https://github.com/fniessen)                                                                                                                        | up-to-date                    | various refcard(Beamer, babel), leuven theme                                                                                                                          |
| [eschulte](https://github.com/eschulte/emacs24-starter-kit)                                                                                                           | 2015                          | emacs starter kits 24.                                                                                                                                                |
| [xgarrido](https://github.com/xgarrido/emacs-starter-kit)                                                                                                             | Nov 2016                      | physicist from france.                                                                                                                                                |
| [陈斌](https://github.com/redguardtoo/mastering-emacs-in-one-year-guide/blob/master/guide-zh.org) 's [blog](http://blog.binchen.org/posts/hello-ivy-mode-bye-helm.html) | 2016                          |                                                                                                                                                                       |
| [abo-abo](https://github.com/abo-abo)                                                                                                                                 |                               | classic emacs packages (occur-dwim)                                                                                                                                   |
| [jwiegley](https://github.com/jwiegley/dot-emacs/blob/f23993cfcb9ca90c289b4214b9bafbf46883bdb4/lisp/paredit-ext.el)                                                   |                               | use-package, recommending [paredit](https://www.youtube.com/watch?v=QRBcm6jFJ3Q)                                                                                      |
| [Magnars Sveen](https://github.com/magnars/.emacs.d/blob/master/settings/sane-defaults.el)                                                                            |                               | multiple cursor, expand region                                                                                                                                        |
| [Sacha Chua](http://emacslife.com/how-to-read-emacs-lisp.html)                                                                                                        |                               | Q and A format                                                                                                                                                        |
| [tuhdo](http://tuhdo.github.io) in                                                                                                                                    |                               | helm and helm projectile                                                                                                                                              |
| [holistic docfile](http://dotfiles.github.io)                                                                                                                         |                               |                                                                                                                                                                       |
| [wx672](http://cs2.swfu.edu.cn/~wx672/dotfile/dot.emacs.d/)                                                                                                           | yas on lp                     |                                                                                                                                                                       |
| [ronert](https://github.com/ronert/.emacs.d)                                                                                                                          |                               |                                                                                                                                                                       |


<a id="org145a429"></a>

# Questions related Emacs initiation.


<a id="org50be7ab"></a>

## what is the package loading Vs lisp loading; [Answer from stack exchange](http://emacs.stackexchange.com/questions/3310/difference-between-load-file-and-load)


<a id="orgcb8fb48"></a>

### [package loading](https://www.gnu.org/software/emacs/manual/html_node/emacs/Package-Installation.html)

-   [use-package](use-package) from package.el
-   [package-selected-packages](package-selected-packages) used as a default for custom.el defined in package.el.
    -   package-install-p: confirm package is installed.
-   loading a package adds its directory to load-path and loads its autoloads.
-   ‘-q’ or ‘&#x2013;no-init-file’ options inhibit this behaviour.


<a id="orgd4ca822"></a>

### [lisp loading](https://www.gnu.org/software/emacs/manual/html_node/emacs/Lisp-Libraries.html#Lisp-Libraries)

-   byte compilation and .elc
-   M-x load-file/load-library
-   Variable load-path
-   autoload: M-x compile/recompile
-   [require](require): a primitive function


<a id="orgd2201b4"></a>

## what is all the "smart" package is all about


<a id="org27e2c3d"></a>

### these package include

-   [smartparens](https://github.com/Fuco1/smartparens) (sp) by Fuco1
-   smart-mode-line


<a id="orgd07eeb5"></a>

## key binding, in the context of usepackage and normal key binding

-   [demystify escape sign in kbd](https://www.gnu.org/software/emacs/manual/html_node/emacs/Init-Rebinding.html)


<a id="org081ae19"></a>

# Personal Information

```emacs-lisp
(setq user-full-name "Guo Shiyuan"
      user-mail-address "antguos@nus.edu.sg")
```


<a id="orge7fcf95"></a>

# Customize settings

Set up the customize file to its [own separate file](custom-file), instead of saving customize settings in .emacs

```
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)
```


<a id="orgab8b8c6"></a>

# benchmark

```emacs-lisp
(use-package benchmark-init
  :ensure t
  :init
  (benchmark-init/activate))
```


<a id="org0cb2300"></a>

# security

```emacs-lisp
(require 'epa-file)
(custom-set-variables '(epg-gpg-program  "/usr/local/bin/gpg2"))
(epa-file-enable)
```


<a id="orgecc2494"></a>

# Theme and theme library in  [emacs theme page](https://emacsthemes.com)

-   Theme are color combinations. Deciding this combination is arguably [difficult.](http://geog.uoregon.edu/datagraphics/EOS/Light-and-Bartlein_EOS2004.pdf)
-   There are various color palettes for scientific application (in general or in R setting).
-   [colorbrewer](http://colorbrewer2.org/#type=diverging&scheme=BrBG&n=3) is a good place to find colour combi


<a id="orgba21f37"></a>

## my preferred theme:

-   src block has diff (darker) background (#2a2f38) as compared to normal text
-   the org-src-header and end are boarded and diff color (#bdc3ce and weighted) as compared to other.


<a id="org09ea251"></a>

## Cyberpunk theme: Dark background+colorful headline.

```
(use-package cyberpunk-theme
  :if (window-system)
  :ensure t
  :init
  (progn
    (load-theme 'cyberpunk t)
    (set-face-attribute `mode-line nil
			:box nil)
    (set-face-attribute `mode-line-inactive nil
			:box nil)))
```


<a id="orga0a9ffc"></a>

## solarised

```
(use-package solarized-theme
  :defer 10
  :init
  (setq solarized-use-variable-pitch nil)
  :ensure t)
```


<a id="org12a91a9"></a>

## BEST1: [zenburn](https://github.com/bbatsov/zenburn-emacs).


<a id="orgfaa956b"></a>

### Zenburn default

1.  DONE problem related to strange color with underline\_proceeding in Zenburn default

2.  org-date == lvl5

3.  org-link == lvl4

    | category | speific     | color   |
    | org      | lvl1 header | #DFAF8F |
    |          | lvl2 header | #BFEBBF |
    |          | lvl3 header | #7CB8BB |
    |          | lvl4 header | #D0BF8F |
    |          | lvl5 header | #93E0E3 |
    |          | org-date    | #8CD0D3 |
    |          | org-link    | #D0BF8F |
    |          |             |         |
    
    ```emacs-lisp
    (use-package zenburn-theme
     :ensure t
     :init)
    
    (set-face-italic-p 'italic nil)
    (set-face-attribute 'region nil :background "#c51b7d" )
    ```


<a id="org29e5f74"></a>

## BEST2: arjen-grey-theme

-   [arjen font ](https://gitlab.com/buildfunthings/emacs-config/blob/master/loader.org)

```
(use-package arjen-grey-theme
  :ensure t
  :config
  (load-theme 'arjen-grey t))

;;(if (eq system-type 'darwin)
    ;;(set-face-attribute 'default nil :font "Hack-14")
  ;;(set-face-attribute 'default nil :font "DejaVu Sans Mono" :height 110))

(use-package command-log-mode
  :ensure t)

;;(defun live-coding ()
  ;;(interactive)
  ;;(set-face-attribute 'default nil :font "Hack-16")
  ;;(add-hook 'prog-mode-hook 'command-log-mode))

(eval-after-load "org-indent" '(diminish 'org-indent-mode))

;;   (use-package all-the-icons
;;     :ensure t)
```


<a id="org148b442"></a>

## kbd for switch code.

```
(defun switch-theme (theme)
  "Disables any currently active themes and loads THEME."
  ;; This interactive call is taken from `load-theme'
  (interactive
   (list
    (intern (completing-read "Load custom theme: "
			     (mapc 'symbol-name
				   (custom-available-themes))))))
  (let ((enabled-themes custom-enabled-themes))
    (mapc #'disable-theme custom-enabled-themes)
    (load-theme theme t)))

(defun disable-active-themes ()
  "Disables any currently active themes listed in `custom-enabled-themes'."
  (interactive)
  (mapc #'disable-theme custom-enabled-themes))

;;(global-set-key "s-<f8>" 'switch-theme)
;;(global-set-key "s-<f7>" 'disable-active-themes)
```


<a id="org923d53d"></a>

## check for the face at point position

```emacs-lisp
(defun what-face (pos)
  (interactive "d")
  (let ((face (or (get-char-property (point) 'read-face-name)
		  (get-char-property (point) 'face))))
    (if face (message "Face: %s" face) (message "No face at %d" pos))))
```


<a id="org6ab757c"></a>

# Miscellaneous default


<a id="org525c6d0"></a>

## Visual

```emacs-lisp
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
```


<a id="org1af4d68"></a>

## Utility

```emacs-lisp
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
```


<a id="org937af0b"></a>

## path issue if starting emacs from finder

```emacs-lisp
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
```


<a id="org9e83b83"></a>

## file backup and delection

```emacs-lisp
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
```


<a id="org2a5a5ac"></a>

### revert autosaved after breakdown

-   [this stack exchange post](http://emacs.stackexchange.com/questions/3776/how-to-view-diff-when-emacs-suggests-to-recover-this-file) introduce the way running [`diff-buffer-with-file`](diff-buffer-with-file) after `recover-this-file` to see the difference between the autosave batch as compared to the master before system broken down.

```emacs-lisp
(defun odin-diff-buffer-with-file ()
  "Compare the current modified buffer with the saved version."
  (interactive)
  (let ((diff-switches "-u")) ;; unified diff
    (diff-buffer-with-file (current-buffer))))

(global-set-key (kbd "C-/") 'odin-diff-buffer-with-file)
(global-set-key (kbd "C-_") 'ediff-current-file)
```


<a id="org21fce67"></a>

## kill/yank with CUA interaction

-   there was general worry that when I save the text from external program into the system clipboard (external pasting), and then killing the an emacs region before inserting the external text, the text in [the system clipboard will lost. ](http://stackoverflow.com/questions/24196020/how-to-stop-emacs-from-contaminating-the-clipboard)


<a id="org4632fd6"></a>

### the mechanism of this issue

-   there are two systems here, kill/yank system (KY system), with kill ring as the place store content, and CUA system, with system clipboard as place to store the content.
-   By default, text from KY system is able to write into system clipboard, while the reciprocal writing (CUA writing in kill ring) was not active.


<a id="orgf240b58"></a>

### there are two ways to address this issue.

| solutions                                    | to accomplish external pasting      |
| 1. either enable CUA writing in kill ring.   | using C-y and M-y to locate desire. |
| 2. or disable KY written in system clipboard | use a new key binding               |

```emacs-lisp
;; 1, unifying system clipboard and KY kill ring
(setq save-interprogram-paste-before-kill t)

;; 2. sepeate clearly the two system and use a new key binding to it
;;(setq x-select-enable-clipboard nil)
;;(global-set-key (kbd "C-c y") 'x-clipboard-yank)
```


<a id="orge387eb9"></a>

## mode-line face     :MELPA_ori:

```emacs-lisp
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
```


<a id="orgd8b9381"></a>

## guide-key mode     :MELPA_ori:

```emacs-lisp
(require 'guide-key)
(setq guide-key/guide-key-sequence t) ;; on for all key-bindings
(guide-key-mode 1)
```


<a id="org52da9fa"></a>

## [command log-mode](https://github.com/lewang/command-log-mode)     :MELPA_ori:

```
(use-package command-log-mode
  :ensure t)
```


<a id="orgfc52319"></a>

## ergoemacs mode

```
  (use-package ergoemacs-mode
    :ensure t
    :init (progn
	    (setq emacs-theme "lvl1")
	    (ergoemacs-mode 1)))
```


<a id="org9a4c409"></a>

# Files in buffers


<a id="org5eae561"></a>

## file fast jump


<a id="org374641f"></a>

### key jump

```emacs-lisp
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
```


<a id="orgd892085"></a>

### bm: for book mark     :MELPA_ori:

```emacs-lisp
(use-package bm
  :ensure t
  :bind (("C-c =" . bm-toggle)
	 ("C-c [" . bm-previous)
	 ("C-c ]" . bm-next)))
```


<a id="orga861a60"></a>

## MAC "s-" key

```emacs-lisp
  ;; Don't make new frames when opening a new file with Emacs
  (setq ns-pop-up-frames nil)
  ;; Use Command-` to switch between Emacs windows (not frames)
  ;; (bind-key "s-`" 'other-window))

  ;; Because of the keybindings above, set one for `other-frame'
  ;; (bind-key "s-1" 'other-frame)

  ;; Fullscreen!
  (setq ns-use-native-fullscreen nil) ; Not Lion style
  (bind-key "<s-return>" 'toggle-frame-fullscreen)
```


<a id="org9ccf1ad"></a>

## buffer manipulation     :wolray:


<a id="org6b9d5fc"></a>

### switching among[ "meaningful" buffer ](https://zhuanlan.zhihu.com/p/24017130?refer%3Dghostinemacs)

-   what is definition of meaningful buffer.
-   the two variable are [buffer-read-only](buffer-read-only) and [buffer-file-name](buffer-file-name).

```emacs-lisp
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
```


<a id="org7a8cb70"></a>

### ibuffer is the improved version of list-buffers.

```emacs-lisp
;; make ibuffer the default buffer lister.
(defalias 'list-buffers 'ibuffer)
```

source: <http://ergoemacs.org/emacs/emacs_buffer_management.html>


<a id="org3f9c4fe"></a>

### toggle window view [from horizontal split to vertical split](http://stackoverflow.com/questions/14881020/emacs-shortcut-to-switch-from-a-horizontal-split-to-a-vertical-split-in-one-move)

```emacs-lisp
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
```


<a id="org25f5fb3"></a>

## dired file managment

```emacs-lisp
  (setq ls-lisp-use-insert-directory-program nil)
  (require 'ls-lisp)
```


<a id="org5c3c8b3"></a>

### auto-revert mode

```emacs-lisp
(add-hook 'dired-mode-hook 'auto-revert-mode)

;; Also auto refresh dired, but be quiet about it
(setq global-auto-revert-non-file-buffers t)
(setq auto-revert-verbose nil)
```

source: [Magnars Sveen](http://whattheemacsd.com/sane-defaults.el-01.html)


<a id="org11d287b"></a>

## Recentf

```emacs-lisp
(recentf-mode 1)
(setq recentf-max-saved-items 200
      recentf-max-menu-items 15)
(setq inhibit-startup-message t)
```


<a id="org3896e78"></a>

### minibuffer [history](file:///Users/Guoshiyuan/Dropbox/org_files/org_life/emacs-history)

```emacs-lisp
(setq savehist-file "/Users/Guoshiyuan/Dropbox/org_files/org_life/emacs-history")
(savehist-mode 1)
```


<a id="orgdb4ffd1"></a>

## External link using default apps.

-   i thought this is an emacs problem; therefore I dig into the code from [using terminal default app](http://emacs.stackexchange.com/questions/3105/how-to-use-an-external-program-as-the-default-way-to-open-pdfs-from-emacs) and [openwith package](http://ergoemacs.org/emacs/emacs_dired_open_file_in_ext_apps.html). I did not think carefully that this problem is actually an org-mode related problem
    -   I keep on testing file link in org mode, and the link (the [URL-like link](http://stackoverflow.com/questions/3973896/emacs-org-mode-file-viewer-associations)) is folded in org mode syntax.
-   this is the [link](https://dontomp.wordpress.com/2015/01/31/in-org-mode-have-the-default-program-openoffice-word-or-whatever-open-docx-file-links/) to addressing the issue.
    -   not quite sure about the extention syntax and meaning of single quote after it. //is that regular expression

```emacs-lisp
(setq org-file-apps
      '(("\\.docx\\'" . default)
        ("\\.doc\\'" . default)
	("\\.xlsx\\'" . default)
	("\\.png\\'" . default)
	("\\.tif\\'" . default)
	("\\.tiff\\'" . default)
	("\\.pdf\\'" . default)
	(auto-mode . emacs)))
```


<a id="org02c87a6"></a>

### open pdf using emacs internal packages, docview

```
(use-package doc-view
  :commands doc-view-mode
  :config
  (define-key doc-view-mode-map (kbd "<right>") 'doc-view-next-page)
  (define-key doc-view-mode-map (kbd "<left>") 'doc-view-previous-page))
```


<a id="org4d0ae91"></a>

# Selection and completion

-   how helm+swoop complement task with ivy+counsel+swiper
-   a list of function
    -   M-x
    -   C-x C-f
    -   C-h v/f

| packages&                                                                                            | description                  | task it complish |
| [helm](https://github.com/emacs-helm/helm)                                                           |                              | flyspell,        |
| - helm-projectile                                                                                    |                              |                  |
| - helm-ag                                                                                            |                              |                  |
| - helm-swoop                                                                                         |                              |                  |
| [ivy](http://oremacs.com/swiper/) @ abo-abo                                                          | generic list pick            | searching        |
| - hydra                                                                                              | C-o to initiate **fast key** |                  |
| - counsel                                                                                            |                              |                  |
| - councel-[projectile](http://projectile.readthedocs.io/en/latest/)                                  | project interaction library  |                  |
| - swiper                                                                                             | alt to isearch,              |                  |
| [ace-window](https://github.com/abo-abo/ace-window) @ abo-abo                                        |                              |                  |
| [ace-link](https://github.com/abo-abo/ace-link) @ abo-abo                                            |                              |                  |
| [avy](https://github.com/abo-abo/avy) Vs [ace-jump-mode](https://github.com/winterTTr/ace-jump-mode) |                              |                  |
| popup                                                                                                |                              |                  |
| - ess-R-object-popup                                                                                 |                              |                  |
| [company](http://company-mode.github.io)                                                             | technical completion         |                  |
| - shell                                                                                              | shell backend                |                  |


<a id="org96279d7"></a>

## ivy-hydra for switching buffer     :MELPA_ori:

```emacs-lisp
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
```


<a id="orgf01956c"></a>

## flyspell using ivy     :MELPA_ori:

-   [the strength and weekness of using aspell and hunspell.](http://blog.binchen.org/posts/what-s-the-best-spell-check-set-up-in-emacs.html)

```emacs-lisp
(setq flyspell-use-meta-tab nil)

(use-package flyspell-correct-ivy
  :bind (:map flyspell-mode-map
	      ("C-;" . flyspell-correct-word-generic)))

;;(require 'flyspell-correct-helm)
;;(define-key flyspell-mode-map (kbd "C-;") 'flyspell-correct-previous-word-generic)
```


<a id="org188f8b6"></a>

## avy

```emacs-lisp
(use-package avy
  :bind
  (:map dired-mode-map ("." . avy-goto-word-or-subword-1))
  :config
  (avy-setup-default))
```


<a id="org135c80d"></a>

## ace link

-   [waymondo](https://github.com/waymondo/hemacs/blob/master/init.el)

```emacs-lisp
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
```


<a id="orgd23b343"></a>

## ace window

-   [waymondo](https://github.com/waymondo/hemacs/blob/master/init.el)

```emacs-lisp
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
```


<a id="orga601633"></a>

## ace-jump-mode

```
(use-package ace-jump-mode
  :ensure t
  :bind ("C--" . ace-jump-mode))
```


<a id="orgc6395b7"></a>

## Helm     :MELPA_ori:

-   [helm and multiple cursor interaction](http://emacs.readthedocs.io/en/latest/completion_and_selection.html).

```
(use-package helm
  :ensure t
  :diminish helm-mode
  :init (progn
	  (require 'helm-config)
	  (use-package helm-projectile
	    :ensure t
	    :commands helm-projectile
	    :bind ("C-c p h" . helm-projectile))
	  (use-package helm-ag :defer 10  :ensure t)
	  (setq helm-locate-command "mdfind -interpret -name %s %s"
		helm-ff-newfile-prompt-p nil
		helm-M-x-fuzzy-match t
		helm-buffers-fuzzy-matching t
		helm-recentf-fuzzy-match t
		helm-apropos-fuzzy-match t
		helm-semantic-fuzzy-match t
		helm-imenu-fuzzy-match t)
	  (helm-mode)
	  (use-package helm-swoop
	    :ensure t
	    :bind ("C-M-z" . helm-swoop)
	    :init (progn
		    (setq helm-multi-swoop-edit-save t
			  ))))
  :bind (("C-c h" . helm-command-prefix)
	 ("C-x b" . helm-mini)
	 ("C-`" . helm-resume)
	 ("M-x" . helm-M-x)
	 ("C-x C-f" . helm-find-files)
	 ("C-h a" . helm-apropos)
	 ("C-c h o" . helm-occur)))
```


<a id="org77417ad"></a>

## Ido     :MELPA_ori:

```
(use-package ido
  :init
  (setq ido-enable-flex-matching t)
  (setq ido-everywhere t)
  (ido-mode t)
  (use-package ido-vertical-mode
    :ensure t
    :defer t
    :init (ido-vertical-mode 1)
    (setq ido-vertical-define-keys 'C-n-and-C-p-only)))
```


<a id="orgb1f9f90"></a>

# Generic document edit


<a id="org26c40c5"></a>

## Parenthesis


<a id="org75b553f"></a>

### show parenthesis

```emacs-lisp
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
```


<a id="orgb32ecf0"></a>

### add parenthesis

|                       | requirements                              | strategy/mechanism               |
| in text (org)         | post-word highlight ()                    | wrapping outside of the previous |
|                       | preset wrapper (=, ~, \_, +), except "\*" | expand region                    |
| in program mode (ess) | post-word highlight                       |                                  |
|                       |                                           |                                  |

```emacs-lisp
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
```

1.  TODO this is troublesome for normal org documentation.

    -   inserting formula in orgtable, ":=" gives a double equal sign
    -   inserting org header give a double \*\*&#x2026;
    -   the best thing is to only apply with highlighted region, which is activated by `expand resion`.
    -   a [post](http://stackoverflow.com/questions/2951797/wrapping-selecting-text-in-enclosing-characters-in-emacs%5D%5D)


<a id="org1f4cc64"></a>

### paredit     :MELPA_ori:

1.  by jwiegley's [init.el](https://github.com/jwiegley/dot-emacs/blob/e65069d6c715b6eba5d6543ff5897643c92b7625/init.el) and self-defined\_[parendit-ext.el](https://github.com/jwiegley/dot-emacs/blob/f23993cfcb9ca90c289b4214b9bafbf46883bdb4/lisp/paredit-ext.el), there are following functions

    -   
    
    ```emacs-lisp
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
    ```


<a id="org3c52ba3"></a>

## expand region

```emacs-lisp
(use-package expand-region
  :ensure t
  :bind ("C-=" . er/expand-region))
```


<a id="org429d8dd"></a>

## multiple cursor


<a id="org2e0a867"></a>

### [fundamental use of multiple cursor](http://emacs.stackexchange.com/questions/751/fundamentals-of-multiple-cursors)


<a id="org7fa7e6e"></a>

### mc usage @ [pragmatics emacs](http://pragmaticemacs.com/emacs/multiple-cursors/)

```emacs-lisp
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
```


<a id="org991e375"></a>

## global abbrev

```
;; * Autoformat mode in org-mode

(defcustom scimax-autoformat-ordinals t
  "Determines if scimax autoformats ordinal numbers."
  :group 'scimax)

(defun scimax-org-autoformat-ordinals ()
  "Expand ordinal words to superscripted versions in org-mode.
1st to 1^{st}.
2nd to 2^{nd}
3rd to 3^{rd}
4th to 4^{th}"
  (interactive)
  (when (and scimax-autoformat-ordinals
	     (eq major-mode 'org-mode)
	     (not (org-in-src-block-p))
	     (looking-back "\\(?3:\\<\\(?1:[0-9]+\\)\\(?2:st\\|nd\\|rd\\|th\\)\\>\\)\\(?:[[:punct:]]\\|[[:space:]]\\)"
			   (line-beginning-position)))
    (undo-boundary)
    (save-excursion
      (replace-match "\\1^{\\2}" nil nil nil 3))))


(defcustom scimax-autoformat-fractions t
  "Determines if scimax autoformats fractions."
  :group 'scimax)


(defun scimax-org-autoformat-fractions ()
  "Expand fractions to take up space."
  (interactive)
  (when (and scimax-autoformat-fractions
	     (eq major-mode 'org-mode)
	     (not (org-in-src-block-p))
	     (looking-back "\\(?3:\\<\\(1/4\\|1/2\\|3/4\\)\\>\\)\\(?:[[:punct:]]\\|[[:space:]]\\)"
			   (line-beginning-position)))
    (undo-boundary)
    (save-excursion
      (replace-match (cdr (assoc (match-string 3) '(("1/4" . "¼")
						    ("1/2" . "½")
						    ("3/4" . "¾"))))
		     nil nil nil 3))))

(defun scimax-org-autoformat ()
  "Autoformat functions."
  (scimax-org-autoformat-ordinals)
  (scimax-org-autoformat-fractions))

(define-minor-mode scimax-autoformat-mode
  "Toggle `scimax-autoformat-mode'.  Converts 1st to 1^{st} as you type."
  :init-value nil
  :lighter (" om")
  (if scimax-autoformat-mode
      (add-hook 'post-self-insert-hook #'scimax-org-autoformat nil 'local)
    (remove-hook 'post-self-insert-hook #'scimax-org-autoformat 'local)))


(defcustom scimax-autoformat-months t
  "Determines if months should be auto-capitalized."
  :group 'scimax)

(when scimax-autoformat-months
  (define-global-abbrev "january" "January")
  (define-global-abbrev "february" "February")
  (define-global-abbrev "march" "March")
  (define-global-abbrev "april" "April")
  (define-global-abbrev "may" "May")
  (define-global-abbrev "june" "June")
  (define-global-abbrev "july" "July")
  (define-global-abbrev "august" "August")
  (define-global-abbrev "september" "September")
  (define-global-abbrev "october" "October")
  (define-global-abbrev "november" "November")
  (define-global-abbrev "december" "December"))


  (define-global-abbrev "monday" "Monday")
  (define-global-abbrev "tuesday" "Tuesday")
  (define-global-abbrev "wednesday" "Wednesday")
  (define-global-abbrev "thursday" "Thursday")
  (define-global-abbrev "friday" "Friday")
  (define-global-abbrev "saturday" "Saturday")
  (define-global-abbrev "sunday" "Sunday")

(define-global-abbrev "degC" "°C")
(define-global-abbrev "degF" "°F")
(define-global-abbrev "ang" "Å")


  (define-global-abbrev "arent" "are not")
  (define-global-abbrev "aren't" "are not")

  (define-global-abbrev "cant" "can not")
  (define-global-abbrev "can't" "can not")

  (define-global-abbrev "couldnt" "could not")
  (define-global-abbrev "couldn't" "could not")

  (define-global-abbrev "didnt" "did not")
  (define-global-abbrev "didn't" "did not")

  (define-global-abbrev "doesnt" "does not")
  (define-global-abbrev "doesn't" "does not")

  (define-global-abbrev "dont" "do not")
  (define-global-abbrev "don't" "do not")

  (define-global-abbrev "hadnt" "had not")
  (define-global-abbrev "hadn't" "had not")

  (define-global-abbrev "hasnt" "has not")
  (define-global-abbrev "has'nt" "has not")

  (define-global-abbrev "isnt" "is not")
  (define-global-abbrev "isn't" "is not")

  (define-global-abbrev "shouldnt" "should not")
  (define-global-abbrev "shouldn't" "should not")

  (define-global-abbrev "thats" "that is")
  (define-global-abbrev "that's" "that is")

  (define-global-abbrev "wasnt" "was not")
  (define-global-abbrev "wasn't" "was not")

  (define-global-abbrev "whos" "who is")
  (define-global-abbrev "who's" "who is")

  (define-global-abbrev "wont" "will not")
  (define-global-abbrev "won't" "will not")

  (define-global-abbrev "wouldve" "would have")
  (define-global-abbrev "would've" "would have")

  (define-global-abbrev "wouldn't" "would not")
  (define-global-abbrev "wouldnt" "would not")



  (define-global-abbrev "nad" "and")
  (define-global-abbrev "ahve" "have")
  (define-global-abbrev "fi" "if")
  (define-global-abbrev "fo" "of")
  (define-global-abbrev "nto" "not")
  (define-global-abbrev "teh" "the")
  (define-global-abbrev "hte" "the")
  (define-global-abbrev "htat" "that")
  (define-global-abbrev "htem" "them")
  (define-global-abbrev "iwth" "with")
  (define-global-abbrev "hwat" "what")
  (define-global-abbrev "waht" "what")
  (define-global-abbrev "wehn" "when")


;; Some common names with umlauts
;; (define-global-abbrev "schrodinger" "Schrödinger")
```


<a id="orgd1e3a6c"></a>

## Undo Tree     :MELPA_ori:

```emacs-lisp
(use-package undo-tree
  :init
  (global-undo-tree-mode +1)
  :bind ("C-c u" . undo-tree-visualize)
  :diminish undo-tree-mode)
```


<a id="orgade5e1b"></a>

## vocabuilder     :MELPA_ori:

```
(use-package voca-builder
  :ensure t
  :init
  (setq voca-builder/voca-file "/Users/Guoshiyuan/Dropbox/org_files/org_life/voca.org")
  (setq voca-builder/current-tag "General")
  (setq sentence-end-double-space nil)
  :bind (("<f1>" . voca-builder/search-popup)))
```


<a id="orgd87e0ac"></a>

# Magit     :MELPA_ori:

-   A great interface for git projects. It's much more pleasant to use

than the git interface on the command line. Use an easy keybinding to access magit.

-   The following code makes magit-status run alone in the frame, and then

restores the old window configuration when you quit out of magit. No more juggling windows after commiting. It's magit bliss. [Source: Magnar Sveen](http://whattheemacsd.com/setup-magit.el-01.html)

```emacs-lisp
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
```


<a id="orgd96db19"></a>

# Org-mode


<a id="org9e1bca2"></a>

## org directory

```emacs-lisp
(setq org-directory "~/Dropbox/org_files")
```


<a id="org25ee2cc"></a>

## org-mode-hook

```emacs-lisp
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
```


<a id="org901873a"></a>

## org structural edit


<a id="orge90e555"></a>

### org catch invisible editing

```emacs-lisp
(setq org-catch-invisible-edits t)
```


<a id="org6f0f7d6"></a>

### Org speed key command

-   Speed commands are a nice and quick way to perform certain actions

while at the beginning of a heading. It's not activated by default.

-   See the doc for speed keys by checking out [[elisp:(info%20"(org)%20speed%20keys")][the documentation for

speed keys in Org mode]].

```emacs-lisp
(setq org-use-speed-commands t)
```


<a id="org8d53c07"></a>

### org insert empty lines before inserting new heading.

```emacs-lisp
(setf org-blank-before-new-entry '((heading . nil) (plain-list-item . nil)))
```


<a id="org6d12879"></a>

### control A/E/K header behaviour

```emacs-lisp
(setq org-special-ctrl-a/e t)
(setq org-special-ctrl-k t)
```


<a id="org2efa0c0"></a>

### indentation

1.  variables related

    1.  org indent group: virtual indentation
    
        -   **Org Startup Indented:** a global setting in toggling the default state of org-indent-mode (#+startup: ). the [options](http://orgmode.org/manual/Clean-view.html) for `startup` can be:
            -   default state of org-indentation mode
            -   org-hide-leading-stars
            -   odd even
        -   **org indent boundary char:** ie. what is the character that makes heading successfully become a heading, thus get perspective face. (**\*** only takes effect when proceeded with a space. )
        -   **org indent indentation per level:** 
        
        -   **org indent mode turns on hiding stars:** mode behavior; will indentation and stars are redundant.
    
    2.  true indentation
    
        1.  org adapt indentation (on $ nil only)
        
        2.  org list indentation
        
            -   org list description max indent
            -   org list indent offset
        
        3.  src indentation: true indentation
        
            -   org edit src content indentation
            -   Org Src Preserve Indentation

2.  disable true indentation and default hide stars

    ```emacs-lisp
    (setq org-adapt-indentation nil)
    ;; (setq org-hide-leading-stars t)
    ```


<a id="orgb627011"></a>

## org-links

```emacs-lisp
;; (setq org-link-abbrev-alist
;;       '(("org_refcard" . [[http://emacs.readthedocs.io/en/latest/index.html][org_refcard]])
;;	("dotEmacs_YT" . "http://emacs.readthedocs.io/en/latest/index.html")))
```


<a id="org60475e4"></a>

## Org agenda

-   org-agenda-custom-commands: customization of your agenda variables.
-   Learned about [delq](delq) & [mapcar](mapcar) trick from [from Sacha Chua's config](https://github.com/sachac/.emacs.d/blob/83d21e473368adb1f63e582a6595450fcd0e787c/Sacha.org#org-agenda).

```emacs-lisp
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
```


<a id="org3d2063e"></a>

## org capture/refile


<a id="org32317d6"></a>

### current [org capture template](http://orgmode.org/manual/Template-expansion.html#Template-expansion).

-   debug and programming progress from debug.

```emacs-lisp
(setq org-capture-templates
      (quote (("t" "TODO_item_list" entry (file+datetree "~/Dropbox/org_files/TODO.org") "* TODO %^{Description} %^g\n  :LOGBOOK:\n  - State \"TODO\"       from              %T\n  :END:\n%?")
	      ("r" "NO_action" entry (file+datetree "~/Dropbox/org_files/TODO.org") "* %^{Description} %^g\n%?")
	      ("d" "bug_debug" entry (file+olp "~/Dropbox/org_files/tech.org" "bugs and debugs") "** TODO %^{Description} %^g\n%?")
	      ("f" "config_improvement" entry (file+olp "~/.emacs.d/config.org" "future improvement") "** TODO %^{Description} \n  :LOGBOOK:\n  - State \"TODO\"       from              %T\n  :END:\n%?")
	      ("j" "Journal_entry" entry (file+datetree "~/Dropbox/org_files/杂记.org" ) "* %?" :unnarrowed t)
	      )))
```


<a id="org44d810b"></a>

### To-her/to-him, using org-capture to communicate.

-   create a `what-say.org` file.
-   setup capture.

```
(add-to-list org-capture-templates
      (quote (("h" "to_her" entry (file+datetree "~/Dropbox/org_files/TODO.org") "* TODO %^{Description}  %^g\n%?\nAdded: %U")
```


<a id="org0576a72"></a>

## org todo

-   [org-use-fast-todo-selection](org-use-fast-todo-selection): `t` allows for single key selection.

```emacs-lisp
(setq org-log-done nil)
(setq org-todo-keywords
       '((sequence "TODO(t!)" "WAIT(w@/!)" "|" "DONE(d!)" "CANCELED(c@)")))
(setq org-todo-keyword-faces
      (quote (("TODO" :foreground "red" :weight bold)
	      ("DONE" :foreground "forest green" :weight bold)
	      ("WAIT" :foreground "orange" :weight bold)
	      ("CANCELED" :foreground "blue" :weight bold))))
(setq org-use-fast-todo-selection t)
```


<a id="org22d76f2"></a>

### log to [drawer](http://emacs.stackexchange.com/questions/21291/add-created-timestamp-to-logbook)

-   [org-log-into-drawer](org-log-into-drawer): non-nil is inserted; to where depends on:
    -   t for logbook
    -   property

```emacs-lisp
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
```


<a id="orgc97fb35"></a>

## Org tags


<a id="org1554b6d"></a>

### **tag position**: The default value is -77, which is weird for smaller width windows.

I'd rather have the tags align horizontally with the header. 45 is a good column number to do that.


<a id="org84e39f7"></a>

### personal tagging system

1.  two variable

    -   org-tag-persistent-alist
    -   org-tag-alist

2.  the use of [hierarchical tag](http://orgmode.org/manual/Tag-hierarchy.html) and mutually exclusive tags

    -   hierarchical tags is achieved by boundary keyword with :grouptags as subcategories.
    -   co-exist Vs mutually exclusivity is determined by the boundary
    
    | local #+tags: | in .emacs                                                                                                   |
    | []            | co-exist:startgrouptag & :endgrouptag                                                                       |
    | {}            | [mutually exclusive tag](http://orgmode.org/manual/Setting-tags.html#Setting-tags): :startgroup & :endgroup |

3.  TODO local: why linked tag is not fold in emacs25.

    ```emacs-lisp
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
    ```


<a id="orge24b2f5"></a>

## org mobile

-   [jonathan chu configuration](http://jonathanchu.is/posts/org-mode-and-mobileorg-installation-and-config/)
-   [org-mobile-push/pull](https://mobileorg.github.io/#using-dropbox) with a detail [description on sync](https://mobileorg.github.io/documentation/#using-dropbox).

```emacs-lisp
(setq org-mobile-directory "/Users/Guoshiyuan/Dropbox/Apps/MobileOrg")
```


<a id="org74042c7"></a>

# LP in org


<a id="org4cf586a"></a>

## tab behavior

-   tab indentation and program indentation with Emacs\_manual 24 and 26.3 respectively.

```emacs-lisp
(setq-default indent-tabs-mode t)
```


<a id="org0835845"></a>

## superscript/subscript default

```emacs-lisp
(setq org-export-with-sub-superscripts '{})
```


<a id="org23c193c"></a>

## setup [flycheck](https://github.com/flycheck/flycheck) for R using [lintr](http://www.flycheck.org/en/latest/languages.html#r)

```emacs-lisp
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
```


<a id="org5320712"></a>

## org inline image and table

```emacs-lisp
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
```


<a id="orgd2ac556"></a>

## org-latex


<a id="org0c82d34"></a>

### latex default packages.

1.  Function on org export default latex packages

    -   variable is [org-latex-default-packages-alist](org-latex-default-packages-alist)
    -   org-mode preload the following latex packages from the mac installed latex package list ([latex package directory](file:///usr/local/texlive/2016/texmf-dist/tex/latex))
        
        | default package alist                 | major functions                           |
        | inputenc, fontenc                     | for basic font and character selection    |
        | fixltx2e                              | important patches of latex itself         |
        | graphicx                              | for including images                      |
        | longtable                             | for multipage tables                      |
        | float, wrapfig                        | for figure placement                      |
        | rotating                              | for sideways figures and tables           |
        | ulem                                  | for underline and strike-through          |
        | amsmath                               | for subscript and superscript and         |
        |                                       | math environments                         |
        | textcomp, marvosymb, wasysym, amssymb | for various symbols used for interpreting |
        |                                       | the entities in ‘org-entities’.           |
        | hyperref                              | for cross references                      |
    
    ```
    ;; kinchin setup
    (setq org-latex-default-packages-alist
          '(("AUTO" "inputenc" t)
    	("" "lmodern" nil)
    	("T1" "fontenc" t)
    	("" "fixltx2e" nil)
    	("" "graphicx" t)
    	("" "longtable" nil)
    	("" "float" nil)
    	("" "wrapfig" nil)
    	("" "rotating" nil)
    	("normalem" "ulem" t)
    	("" "amsmath" t)
    	("" "textcomp" t)
    	("" "marvosym" t)
    	("" "wasysym" t)
    	("" "amssymb" t)
    	("" "amsmath" t)
    	("version=3" "mhchem" t)
    	("numbers,super,sort&compress" "natbib" nil)
    	("" "natmove" nil)
    	("" "url" nil)
    	("" "minted" nil)
    	("" "underscore" nil)
    	("linktocpage,pdfstartview=FitH,colorlinks,
    linkcolor=blue,anchorcolor=blue,
    citecolor=blue,filecolor=blue,menucolor=blue,urlcolor=blue"
    	 "hyperref" nil)
    	("" "attachfile" nil)))
    
    ;; do not put in \hypersetup. Use your own if you want it e.g.
    ;; \hypersetup{pdfkeywords={%s},\n pdfsubject={%s},\n pdfcreator={%}}
    (setq org-latex-with-hyperref nil)
    ```


<a id="orgb4713ea"></a>

### adding [LatexMk](http://mirrors.ibiblio.org/CTAN/support/latexmk/latexmk.pdf) support to AUCTeX.     :MELPA_ori:

```emacs-lisp
(require 'auctex-latexmk)
(auctex-latexmk-setup)
```


<a id="org7f58db2"></a>

### highlight

```emacs-lisp
(setq org-highlight-latex-and-related '(latex script entities))
```


<a id="orgcc13fa4"></a>

### latex preview pane


<a id="orge00be87"></a>

### beamer

this was silly in the end. there was an elisp command `org-beamer-export-to-pdf` from ox-beamer.el dealing with beamer export that doesn't not need any default setting. The original `C-c C-e` runs `org-export-dispatch` command from ox.el. therefore just

```emacs-lisp
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
```


<a id="org7355cf3"></a>

## Org babel languages

-   loading for src language evaluation, function [org-babel-do-load-lang](org-babel-do-load-languages) load variable called [org-babel-load-lang](org-babel-load-languages).
-   without the [bit-recompile part](https://lists.gnu.org/archive/html/emacs-orgmode/2016-02/msg00415.html), the R does not seems to work.
-   `(add-to-list 'org-src-lang-modes '("<LANGUAGE>" . "<MAJOR-MODE>"))`
-   for diff programming language, `Org Src Block Faces` select for language specific

```emacs-lisp
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
```


<a id="org46f84af"></a>

### ess `ess-smart-S-assign` function by default has a toggling behavior: S-\_(=\_) insert assignment key and second time insert underscore.

-   I used both assign key and underscore quite often. I will [bound to assign key](https://www.r-bloggers.com/a-small-customization-of-ess/) to M&#x2013; while S-\_(=\_) remains as underscore.
-   package [ess-smart-underscore](https://github.com/mattfidler/ess-smart-underscore.el).


<a id="orgfcd19a2"></a>

## Org babel/source blocks

I like to have source blocks properly syntax highlighted and with the editing popup window staying within the same window so all the windows don't jump around. Also, having the top and bottom trailing lines in the block is a waste of space, so we can remove them.

I noticed that fontification doesn't work with markdown mode when the block is indented after editing it in the org src buffer&#x2014;the leading \\#s for headers don't get fontified properly because they appear as Org comments. Setting `org-src-preserve-indentation` makes things consistent as it doesn't pad source blocks with leading spaces.

```emacs-lisp
(setq org-src-fontify-natively t
      org-src-window-setup 'reorganize-frame
      org-src-strip-leading-and-trailing-blank-lines t
      org-src-preserve-indentation t
      org-src-tab-acts-natively t)
```


<a id="org89ee025"></a>

### fold src block

-   [stackexchange](http://emacs.stackexchange.com/questions/7211/collapse-src-blocks-in-org-mode-by-default)

```emacs-lisp
(defvar org-blocks-hidden t)

(defun f-org-toggle-blocks ()
  (interactive)
  (if org-blocks-hidden
      (org-show-block-all)
    (org-hide-block-all))
  (setq-local org-blocks-hidden (not org-blocks-hidden)))

(add-hook 'org-mode-hook 'f-org-toggle-blocks)

(define-key org-mode-map (kbd "s-1") 'f-org-toggle-blocks)
```


<a id="orgfaf3d73"></a>

### [org-structure-template-alist](http://orgmode.org/manual/Easy-templates.html#Easy-templates) on customize src expansion


<a id="orgdfcb4f1"></a>

## Org exporting


<a id="org949e66f"></a>

### copy formatted and paste into MSword

```emacs-lisp
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
```


<a id="orgc12f2b8"></a>

### org table exporting

-   the [org-table-export](org-table-export) introduced on[ stackexchange](http://emacs.stackexchange.com/questions/16640/can-i-export-a-specific-table-in-an-org-file-to-csv-from-the-command-line)
-   bash massive export

`$ emacs --batch foo.org -l setup.el --eval '(my-tbl-export "first-table")'`

```emacs-lisp
(defun f-tbl-export (name)
  "Search for table named `NAME` and export."
  (interactive "s")
  (show-all)
  (let ((case-fold-search t))
    (if (search-forward-regexp (concat "#\\+NAME: +" name) nil t)
    (progn
      (next-line)
      (org-table-export (format "%s.csv" name) "orgtbl-to-csv")))))
```


<a id="org09c1122"></a>

## org-ref     :MELPA_ori:

-   the [github repository](https://github.com/jkitchin/org-ref) from [kichen group](http://kitchingroup.cheme.cmu.edu).
-   [org-ref-cancel-link-meessage](org-ref-cancel-link-messages): showing (key, value, begin, end, post-blank, post-affiliation, parent) at every cursor position.

```emacs-lisp
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
```


<a id="org213bd0f"></a>

## Yasnippet and template     :MELPA_ori:


<a id="org8285741"></a>

### yasnippet loading

-   yas does not load automatically upon entering

```emacs-lisp
(use-package yasnippet
  :ensure t
  :init (yas-global-mode 1)
  :config
  ;; (progn
  ;;   (yas-reload-all))
  )
```


<a id="org0ea2675"></a>

### org-template: [org-structure-template-alist](http://stackoverflow.com/questions/19145433/shortcut-for-inserting-environments-in-org-mode)

```emacs-lisp
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
```


<a id="org3b30384"></a>

## ESS


<a id="org7bdece4"></a>

### reference list

-   [IMBS@Lübeck, Germany](https://github.com/imbs-hl/emacs.d/blob/master/config/init-46-coding-R.el)
-   [ess wiki](https://www.emacswiki.org/emacs/EmacsSpeaksStatistics)


<a id="org5e849e7"></a>

### babel:R configuration

1.  ess and ess-site and its general configuration, including face and indentation

2.  R-related key binding:

    1.  `ess-smart-S-assign`
    2.  restart (s-S-F10)
    3.  `s-RET` evaluation (mimicing Rstudio behavior)
    4.  pipe(%>% as s-M)

3.  initialization windows. (a few defun by )

4.  autocompletion.

5.  indentation by [variable](https://github.com/emacs-ess/ESS/issues/96) [ess-own-style-list](ess-own-style-list).

6.  ess-smart-underscore

    ```emacs-lisp
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
    ```


<a id="org096214a"></a>

### kill R process

-   by default, it binds to C-c C-\\ key


<a id="orgdc3b101"></a>

### "polymode" by kitchin

```
(setq scimax-src-block-keymaps
      `(("R" . ,(let* ((map (copy-keymap ess-mode-map)))
		  (define-key map (kbd "C-c C-c") 'org-ctrl-c-ctrl-c)
		  (define-key map (kbd "C-c '") 'org-edit-special)
		  map))
	))


(defun scimax-add-keymap-to-src-blocks (limit)
  "Add keymaps to src-blocks defined in `scimax-src-block-keymaps'."
  (let ((case-fold-search t)
        lang)
    (while (re-search-forward org-babel-src-block-regexp limit t)
      (let ((lang (match-string 2))
            (beg (match-beginning 0))
            (end (match-end 0)))
        (if (assoc (org-no-properties lang) scimax-src-block-keymaps)
            (progn
              (add-text-properties
               beg end `(local-map ,(cdr (assoc
                                          (org-no-properties lang)
                                          scimax-src-block-keymaps))))
              (add-text-properties
               beg end `(cursor-sensor-functions
                         ((lambda (win prev-pos sym)
                            ;; This simulates a mouse click and makes a menu change
                            (org-mouse-down-mouse nil)))))))))))

(defun scimax-spoof-mode (orig-func &rest args)
  "Advice function to spoof commands in org-mode src blocks.
It is for commands that depend on the major mode. One example is
`lispy--eval'."
  (if (org-in-src-block-p)
      (let ((major-mode (intern (format "%s-mode" (first (org-babel-get-src-block-info))))))
        (apply orig-func args))
    (apply orig-func args)))

(define-minor-mode scimax-src-keymap-mode
  "Minor mode to add mode keymaps to src-blocks."
  :init-value nil
  (if scimax-src-keymap-mode
      (progn
        (add-hook 'org-font-lock-hook #'scimax-add-keymap-to-src-blocks t)
        (add-to-list 'font-lock-extra-managed-props 'local-map)
        (add-to-list 'font-lock-extra-managed-props 'cursor-sensor-functions)
        (advice-add 'lispy--eval :around 'scimax-spoof-mode)
        (cursor-sensor-mode +1))
    (remove-hook 'org-font-lock-hook #'scimax-add-keymap-to-src-blocks)
    (advice-remove 'lispy--eval 'scimax-spoof-mode)
    (cursor-sensor-mode -1))
  (font-lock-fontify-buffer))

(add-hook 'org-mode-hook (lambda ()
                           (scimax-src-keymap-mode +1)))
```


<a id="orgc34a22c"></a>

# personal webside


<a id="org0bd387e"></a>

## learning markdown mode is tedious

```emacs-lisp
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
```


<a id="org2450a57"></a>

## why not we use org? here is org2jekyll.

```emacs-lisp
(use-package org2jekyll
  :defer 3
  :config
  (custom-set-variables '(org2jekyll-blog-author       "Shiyuan Guo")
                        '(org2jekyll-source-directory  (expand-file-name "/Users/Guoshiyuan/Dropbox/org_files/testing_ground/denten_org"))
                        '(org2jekyll-jekyll-directory  (expand-file-name "/Users/Guoshiyuan/Dropbox/org_files/testing_ground/denten"))
                        '(org2jekyll-jekyll-drafts-dir "")
                        '(org2jekyll-jekyll-posts-dir  "_posts/")
                        '(org-publish-project-alist
                          `(("default"
                             :base-directory ,(org2jekyll-input-directory)
                             :base-extension "org"
                             ;; :publishing-directory "/ssh:user@host:~/html/notebook/"
                             :publishing-directory ,(org2jekyll-output-directory)
                             :publishing-function org-gfm-export-to-markdown
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
                             :publishing-function org-gfm-export-to-markdown
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
```

```
;; from worg about teaching org export to jekyll directory [[http://orgmode.org/worg/org-tutorials/org-jekyll.html]]
(setq org-publish-project-alist
      '(

  ("org-ianbarton"
          ;; Path to your org files.
          :base-directory "~/devel/ianbarton/org/"
          :base-extension "org"

          ;; Path to your Jekyll project.
          :publishing-directory "~/devel/ianbarton/jekyll/"
          :recursive t
          :publishing-function org-publish-org-to-html
          :headline-levels 4 
          :html-extension "html"
          :body-only t ;; Only export section between <body> </body>
    )


    ("org-static-ian"
          :base-directory "~/devel/ianbarton/org/"
          :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf\\|php"
          :publishing-directory "~/devel/ianbarton/"
          :recursive t
          :publishing-function org-publish-attachment)

    ("ian" :components ("org-ianbarton" "org-static-ian"))

))
```


<a id="orgba37b6e"></a>

# future improvement


<a id="org923ed5f"></a>

## customise date and develop a better capture template for todo and lab log     :programming:

1.  time customisation: add a customise label similar as 200117

    -   [How to insert schedule with date and time in Emacs org-mode](http://stackoverflow.com/questions/19532371/how-to-insert-schedule-with-date-and-time-in-emacs-org-mode/19538085#19538085)
    -   [org-mode: org-time-stamp-custom-formats shows midnight time](http://stackoverflow.com/questions/23218316/org-mode-org-time-stamp-custom-formats-shows-midnight-time)(show [org-time-stamp-custom-formats](http://orgmode.org/manual/Custom-time-format.html) legit format)
    -   [time customisation man page](https://www.gnu.org/software/emacs/manual/html_node/elisp/Time-Parsing.html)

2.  date tree customse to make it a flat structure instead of heavily nest as shown in this document

    -   [date tree from sasha](http://sachachua.com/blog/2015/02/org-mode-reusing-date-file-datetree-prompt/)
    -   [refile date tree (with lisp code) ](http://stackoverflow.com/questions/26648731/refile-existing-entry-to-different-location-in-org-mode-date-tree/26683663)
    -   [a typical customisation page](http://members.optusnet.com.au/~charles57/GTD/datetree.html)
    -   [norang](http://doc.norang.ca/org-mode.html)
    
    Added: <span class="timestamp-wrapper"><span class="timestamp">[2017-01-20 Fri 09:44]</span></span>


<a id="org252d47f"></a>

## to understand emacs default path     :programming:

-   [load-path](load-path)
-   [default-directory](default-directory)

Added: <span class="timestamp-wrapper"><span class="timestamp">[2017-02-14 Tue 10:27]</span></span>


<a id="orge9a10ec"></a>

## open links custumisation     :programming:

-   open an link according to its extension
-   open an directory in Finder@mac or in dired, optionable.

Added: <span class="timestamp-wrapper"><span class="timestamp">[2017-02-14 Tue 11:00]</span></span>


<a id="org5392647"></a>

## [capitalization after full stop](http://ergoemacs.org/emacs/emacs_upcase_sentence.html).


<a id="org809177b"></a>

## <span class="timestamp-wrapper"><span class="timestamp">&lt;2017-02-23 Thu&gt; </span></span> strange thing happens after initiation

-   org src block has change from org-block-background to org-block
-   [issue name](https://github.com/syl20bnr/spacemacs/issues/4618).


<a id="org25743ad"></a>

## [langtool](https://github.com/mhayashi1120/Emacs-langtool) for grammar check


<a id="org2d312a1"></a>

## nanowrimo for word count and general documentation monitor.


<a id="orgd2643fc"></a>

## thesaurus package

-   synonymous
-   synonyms
-   synosaurus


<a id="orgb37f3b0"></a>

## GRE voca builder


<a id="org8f7c454"></a>

## smex: enhancement for of M-x, similar as ido.


<a id="orgf28d99e"></a>

## winner-mode for undo??


<a id="org5cc299b"></a>

## autopair global mode


<a id="orga6797da"></a>

## [Turn off linum-mode when file is too big](http://blog.binchen.org/posts/turn-off-linum-mode-when-file-is-too-big.html).

```
```


<a id="org4f1631f"></a>

## polymode affecting face for source code.

-   poly mode change the nature of org source code so that

|              | before               | after                                                    |
| #+begin\_src | org-block-begin-line |                                                          |
| src          | org-block            |                                                          |
| #+end\_src   | org-block-end-line   | org-meta-line, which inherit from font-lock-comment-face |


<a id="orgaba1f7d"></a>

## optimizing expand region behavior.

-   highlight a region and add [org markup](https://www.gnu.org/software/emacs/manual/html_node/emacs/Org-Authoring.html#Org-Authoring)


<a id="org52af001"></a>

## yas-snippet need to restart before functioning. why??


<a id="org6c7c1d3"></a>

## is it possible to have src have similar behavior as neighboring header (in folding, maybe)


<a id="orgdfcc787"></a>

## [org-support-shift-selection](org-support-shift-select)


<a id="org227aa4c"></a>

## image justification in LaTeX @ kinchin

```
(defun org-latex-fragment-tooltip (beg end image imagetype)
  "Add the fragment tooltip to the overlay and set click function to toggle it."
  (overlay-put (ov-at) 'help-echo
	       (concat (buffer-substring beg end)
		       "\nmouse-1 to toggle."))
  (overlay-put (ov-at) 'local-map (let ((map (make-sparse-keymap)))
				    (define-key map [mouse-1]
				      `(lambda ()
					 (interactive)
					 (org-remove-latex-fragment-image-overlays ,beg ,end)))
				    map)))

(advice-add 'org--format-latex-make-overlay :after 'org-latex-fragment-tooltip)

(defun org-latex-fragment-justify (justification)
  "Justify the latex fragment at point with JUSTIFICATION.
JUSTIFICATION is a symbol for 'left, 'center or 'right."
  (interactive
   (list (intern-soft
	  (completing-read "Justification (left): " '(left center right)
			   nil t nil nil 'left))))

  (let* ((ov (ov-at))
	 (beg (ov-beg ov))
	 (end (ov-end ov))
	 (shift (- beg (line-beginning-position)))
	 (img (overlay-get ov 'display))
	 (img (and (and img (consp img) (eq (car img) 'image)
			(image-type-available-p (plist-get (cdr img) :type)))
		   img))
	 space-left offset)
    (when (and img (= beg (line-beginning-position)))
      (setq space-left (- (window-max-chars-per-line) (car (image-display-size img)))
	    offset (floor (cond
			   ((eq justification 'center)
			    (- (/ space-left 2) shift))
			   ((eq justification 'right)
			    (- space-left shift))
			   (t
			    0))))
      (when (>= offset 0)
	(overlay-put ov 'before-string (make-string offset ?\ ))))))

(defun org-latex-fragment-justify-advice (beg end image imagetype)
  "After advice function to justify fragments."
  (org-latex-fragment-justify (or (plist-get org-format-latex-options :justify) 'left)))

(advice-add 'org--format-latex-make-overlay :after 'org-latex-fragment-justify-advice)

;; ** numbering latex equations
(defun org-renumber-environment (orig-func &rest args)
  "A function to inject numbers in LaTeX fragment previews."
  (let ((results '())
	(counter -1)
	(numberp))

    (setq results (loop for (begin .  env) in
			(org-element-map (org-element-parse-buffer) 'latex-environment
			  (lambda (env)
			    (cons
			     (org-element-property :begin env)
			     (org-element-property :value env))))
			collect
			(cond
			 ((and (string-match "\\\\begin{equation}" env)
			       (not (string-match "\\\\tag{" env)))
			  (incf counter)
			  (cons begin counter))
			 ((string-match "\\\\begin{align}" env)
			  (prog2
			      (incf counter)
			      (cons begin counter)
			    (with-temp-buffer
			      (insert env)
			      (goto-char (point-min))
			      ;; \\ is used for a new line. Each one leads to a number
			      (incf counter (count-matches "\\\\$"))
			      ;; unless there are nonumbers.
			      (goto-char (point-min))
			      (decf counter (count-matches "\\nonumber")))))
			 (t
			  (cons begin nil)))))

    (when (setq numberp (cdr (assoc (point) results)))
      (setf (car args)
	    (concat
	     (format "\\setcounter{equation}{%s}\n" numberp)
	     (car args)))))

  (apply orig-func args))

(advice-add 'org-create-formula-image :around #'org-renumber-environment)
```


<a id="orgce255af"></a>

## improve emacs visualing nonstd symbols.     :programming:

-   degree sign
-   volume units.


<a id="orgf3fbd0c"></a>

## capture has a strange indentation     :programming:

-   C-h a on "indentation"


<a id="org7bc808f"></a>

## to prevent org-babel large output causing system hang.


<a id="org87af6e1"></a>

## chinese-fonts-setup     :MELPA_ori:

```
(require 'chinese-fonts-setup)
(chinese-fonts-setup-enable)
(set-face-attribute
 'default nil
 :font (font-spec :name "-*-Monaco-normal-normal-normal-*-*-*-*-*-m-0-iso10646-1"
		  :weight 'normal
		  :slant 'normal
		  :size 12.5))
(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font
   (frame-parameter nil 'font)
   charset
   (font-spec :name "-*-STKaiti-normal-normal-normal-*-*-*-*-*-p-0-iso10646-1"
	      :weight 'normal
	      :slant 'normal
	      :size 15.0)))
```


<a id="org77235c2"></a>

## org bullets

-   org-bullet mode


<a id="orge7c084b"></a>

## python and Ipython ([configuration ref.](http://www.jesshamrick.com/2012/09/18/emacs-as-a-python-ide/))

```
; use IPython
(setq-default py-shell-name "ipython")
(setq-default py-which-bufname "IPython")
; use the wx backend, for both mayavi and matplotlib
(setq py-python-command-args
  '("--gui=wx" "--pylab=wx" "-colors" "Linux"))
(setq py-force-py-shell-name-p t)

; switch to the interpreter after executing code
(setq py-shell-switch-buffers-on-execute-p t)
(setq py-switch-buffers-on-execute-p t)
; don't split windows
(setq py-split-windows-on-execute-p nil)
; try to automagically figure out indentation
(setq py-smart-indentation t)
```


<a id="org5555382"></a>

## loading yas with in-used mode only

-   loading the whole yas turn to slows the system.


<a id="org268968a"></a>

## TWO-mode mode: src block as end of programming mode from [danDavision](https://github.com/dandavison/emacs-config/blob/master/old/emacs.org)

```
(setq default-mode (list "org-mode" 'org-mode))
(setq second-modes '(("python" "#+begin_src python" "#+end_src" python-mode)
		     ("emacs-lisp" "#+begin_src emacs-lisp" "#+end_src" emacs-lisp-mode)
		     ("ess" "#+begin_src R" "#+end_src" ess-mode)
		     ))
```


<a id="orgad04241"></a>

### define org source face

```
(defface org-block-begin-line
  '((t (:underline "#A7A6AA" :foreground "#008ED1" :background "#8ed100")))
  "Face used for the line delimiting the begin of source blocks.")

(defface org-block
  ;; defface org-block-background was removed from org: http://emacs.stackexchange.com/questions/14824/org-block-background-font-not-having-effect
  '((t (:background "gray20")))
  "Face used for the source block background.")


(defface org-block-end-line
  '((t (:underline "#A7A6AA" :foreground "#008ED1")))
  "Face used for the line delimiting the end of source blocks.")
```


<a id="org9804194"></a>

## capture template for `config.org` future improvement.


<a id="orga7874d4"></a>

## org-bullet


<a id="org9f0bd66"></a>

## define a macro for fast table setup: two hline and three vline


<a id="org5d5093b"></a>

## design an hydra for toggling


<a id="org686a800"></a>

## what is the differnce between `org-edit-special` and `org-babel-expand-src-block`


<a id="org465742d"></a>

## setup subword mode for programme mode.


<a id="org7e5f048"></a>

## a mechanism that convert org table to list, and visa versa.


<a id="org9cae631"></a>

## I have a list of R function. I want to push to github and these fucntion is loaded into R automatically when ever i initiate R.


<a id="org2507096"></a>

## jump to pdf to a specific page number.


<a id="org449f820"></a>

## org reveal to visualize