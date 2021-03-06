;; hide menu bar
(add-to-list 'load-path "/home/van/.emacs.d/myconfig")
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)

(when (member "Symbola" (font-family-list))
  (set-fontset-font "fontset-default" nil
                    (font-spec :size 20 :name "Symbola")))
(when (member "Symbola" (font-family-list))
  (set-fontset-font t 'unicode "Symbola" nil 'prepend))
(setq default-buffer-file-coding-system 'utf-8)
(setq visible-bell 0)
(setq ring-bell-function 'ignore
      visible-bell nil)
(setq make-backup-files nil)
(show-paren-mode t)
;;(setq initial-buffer-choice "~/orgmodel/main.org")
(setq gc-cons-threshold (* 50 1000 1000))


(setq-default tab-width 4 indent-tabs-mode nil)
(setq save-place-file "~/.emacs.d/saveplace")
(setq-default save-place t)
(require 'saveplace)
(setq inhibit-startup-message t)
(fset 'yes-or-no-p 'y-or-n-p)

;; plugin's source for china 
(require 'package)
(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-begin-commands (quote (self-insert-command)))
 '(company-idle-delay 0.1)
 '(company-minimum-prefix-length 2)
 '(company-show-numbers t)
 '(company-tooltip-align-annotations t)
 '(custom-safe-themes
   (quote
    ("55c2c0d811cdecd311ebe27f82b24a5410d38c1ff6117c91e5ba88031829ee06" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "b89ae2d35d2e18e4286c8be8aaecb41022c1a306070f64a66fd114310ade88aa" "939ea070fb0141cd035608b2baabc4bd50d8ecc86af8528df9d41f4d83664c6a" "aded61687237d1dff6325edb492bde536f40b048eab7246c61d5c6643c696b7f" "3788e589eb432e6a515d557cbeb8dc4eaca9e00ae54f932b4bd43ed78605532e" "53993d7dc1db7619da530eb121aaae11c57eaf2a2d6476df4652e6f0bd1df740" "a7928e99b48819aac3203355cbffac9b825df50d2b3347ceeec1e7f6b592c647" "f7b0f2d0f37846ef75157f5c8c159e6d610c3efcc507cbddec789c02e165c121" "b69323309e5839676409607f91c69da2bf913914321c995f63960c3887224848" "a70b47c87e9b0940f6fece46656200acbfbc55e129f03178de8f50934ac89f58" "054e929c1df4293dd68f99effc595f5f7eb64ff3c064c4cfaad186cd450796db" "2f945b8cbfdd750aeb82c8afb3753ebf76a1c30c2b368d9d1f13ca3cc674c7bc" "0eb3c0868ff890b0c4ee138069ce2a8936a8a69ba150efa6bfb9fb7c05af5ec3" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "1526aeed166165811eefd9a6f9176061ec3d121ba39500af2048073bea80911e" "845103fcb9b091b0958171653a4413ccfad35552bc39697d448941bcbe5a660d" "a339f231e63aab2a17740e5b3965469e8c0b85eccdfb1f9dbd58a30bdad8562b" "bc836bf29eab22d7e5b4c142d201bcce351806b7c1f94955ccafab8ce5b20208" default)))
 '(global-company-mode t)
 '(initial-frame-alist (quote ((fullscreen . maximized))))
 '(org-agenda-files
   (quote
    ("~/orgmodel/fssc.org" "~/orgmodel/report.org" "~/orgmodel/tech.org" "~/orgmodel/mingyuan.org")))
 '(package-selected-packages
   (quote
    (parinfer org-bullets evil-collection vterm java-snippets auto-yasnippet company-box ox-gfm nlinum-hln org-pomodoro color-theme-x color-theme evil-nerd-commenter spaceline-all-the-icons spaceline counsel swiper which-key dracula-theme smex htmlize kaolin-themes smart-mode-line-powerline-theme vcl-mode solarized-theme moody doom-modeline evil-org flx-ido ejc-sql edbi disable-mouse cnfonts all-the-icons centaur-tabs nord-theme ace-jump-mode doom-themes spacemacs-theme zenburn-theme smooth-scrolling powerline-evil dap-mode company-lsp projectile use-package xclip simpleclip lsp-java evil-numbers evil-leader evil-surround 0blayout ivy gruvbox-theme evil-easymotion neotree evil)))
 '(safe-local-variable-values (quote ((flycheck-disabled-checkers emacs-lisp-checkdoc)))))
;; reload the config funtion
(defun reload-user-init-file()
  (interactive)
  (load-file user-init-file))

;; show line number
(use-package linum)
;;(global-linum-mode t)
(setq linum-format "%3d ")
(add-hook 'java-mode-hook
          (lambda ()
            (linum-mode t)))

(use-package hlinum)
(global-hl-line-mode 1)
(hlinum-activate)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-box-scrollbar ((t (:background "#5B5B5B" :foreground "#000000"))))
 '(company-tooltip ((t (:background "#44475a" :foreground "#E1FFFF"))))
 '(company-tooltip-annotation ((t (:foreground "#FFA500"))))
 '(company-tooltip-annotation-selection ((t (:foreground "#2F4F4F"))))
 '(company-tooltip-common ((t (:foreground "#E6E6FA"))))
 '(company-tooltip-common-selection ((t (:foreground "#800000"))))
 '(company-tooltip-selection ((t (:background "#FFE66F" :foreground "#000000"))))
 '(linum ((t (:inherit (shadow default) :foreground "DimGray" :background "dark"))))
 '(linum-highlight-face ((t (:background "#282828" :foreground "#EEEE00"))))
 '(lsp-face-semhl-field ((t (:foreground "#6272a4"))))
 '(lsp-face-semhl-variable ((t (:foreground "#6272a4"))))
 '(lsp-face-semhl-variable-local ((t (:foreground "#6272a4"))))
 '(powerline-active0 ((t (:foreground "#f8f8f2"))))
 '(powerline-active1 ((t (:foreground "#FFDEAD"))))
 '(show-paren-match ((t (:background "#6272a4" :foreground "#00000"))))
 '(spaceline-evil-emacs ((t (:background "#6272a4" :foreground "#f8f8f2"))))
 '(spaceline-evil-insert ((t (:background "#666699" :foreground "#FFA500"))))
 '(spaceline-evil-motion ((t (:background "#696969" :foreground "#f8f8f2"))))
 '(spaceline-evil-normal ((t (:background "#696969" :foreground "#FFFAFA"))))
 '(spaceline-evil-replace ((t (:background "#FF8C0" :foreground "#f8f8f2"))))
 '(spaceline-evil-visual ((t (:background "#FF8C00" :foreground "#2F4F4F")))))
;;(set-face-background 'region "#44475a")
(set-cursor-color "coral")

;; company mode old
;;(use-package company-tng
(use-package company
  ;; :defer 2
  ;; :diminish
  :custom
  (company-begin-commands '(self-insert-command))
  (company-idle-delay .1)
  (company-minimum-prefix-length 2)
  ;; (company-show-numbers t)
  (company-global-modes '(not dired-mode dired-sidebar-mode))
  (company-tooltip-align-annotations 't)
  (global-company-mode t))
(define-key company-active-map (kbd "RET") 'company-complete-selection)
(define-key company-active-map (kbd "C-n") 'company-select-next)
(define-key company-active-map (kbd "C-p") 'company-select-previous)
(setq company-frontends
      '(company-tng-frontend
        company-pseudo-tooltip-frontend
        company-echo-metadata-frontend))
;; company mode old end

(use-package company-box
  :after company
  :hook (company-mode . company-box-mode))
;;(use-package company-tng
;;  ;; :after company
;;  :config
;;(company-tng-configure-default))
;;(company-tng-configure-default)
;;(define-key evil-insert-state-map (kbd "C-x C-f") 'company-files)
;;(define-key company-active-map (kbd "C-n") #'company-select-next)
;;(define-key company-active-map (kbd "C-p") #'company-select-previous)
;;(defun emacs-lisp/post-init-company ()
;;  (spacemacs|add-company-backends :backends (company-files company-capf)
;;                                  :modes emacs-lisp-mode)
;;  (spacemacs|add-company-backends :backends (company-files company-capf)
;;                                    :modes ielm-mode))
;;(setq company-frontends
;;      '(company-tng
;;        company-pseudo-tooltip-unless-just-one-frontend
;;        company-echo-metadata-frontend
;;        company-preview-if-just-one-frontend))
;;(use-package company-tng
;;  ;; :when (featurep! +tng)
;;  :after-call post-self-insert-hook
;;  :config
;;  (add-to-list 'company-frontends 'company-tng-frontend)
;;  (define-key! company-active-map
;;    "RET"       nil
;;    [return]    nil
;;    [backtab]   #'company-select-previous))



;; (require 'neotree)
(use-package neotree
  :defer 2)
(global-set-key [f2] 'neotree-toggle)
(setq projectile-switch-project-action 'neotree-projectile-action)
(global-set-key (kbd "M-1") 'neotree-find)
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))

;; ivy mode swiper
(ivy-mode 1)
(setq ivy-use-selectable-prompt t)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
(global-set-key (kbd "C-s") 'swiper-isearch)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-x b") 'ivy-switch-buffer)
(global-set-key (kbd "C-c k") 'counsel-rg)
(global-set-key (kbd "C-c n") 'counsel-fzf)
(global-set-key (kbd "C-c r") 'counsel-recentf)
(global-set-key (kbd "C-x l") 'counsel-locate)
(defun counsel-fzf-dir-function-projectile-git ()
    (if (and
         (fboundp 'projectile-project-p)
         (fboundp 'projectile-project-root)
         (projectile-project-p))
        (projectile-project-root)
      (or (counsel--git-root) default-directory)))
(setq counsel-fzf-dir-function 'counsel-fzf-dir-function-projectile-git)
;; ivy & swiper end

;; lsp java
(setq lsp-java-jdt-download-url "http://cjzc.agri-rd.com/html/vimwiki/jdt-language-server-latest.tar.gz")
(require 'lsp-java)
(setq lsp-enable-file-watchers nil)
(add-hook 'java-mode-hook #'lsp)
(global-set-key (kbd "M-i") 'lsp-goto-implementation)
(global-set-key (kbd "M-d") 'lsp-goto-type-definition)
(use-package dap-java
  :defer 2)
(use-package dap-mode
  :defer 2
  :ensure t :after lsp-mode
  :config
  (dap-mode t)
  (dap-ui-mode t))
;; lsp java end


;; evil
(setq evil-want-C-i-jump nil)
(setq evil-want-integration t) 
(setq evil-want-keybinding nil)
(setq evil-collection-company-use-tng nil)
(require 'evil)
(evil-collection-init)
(evil-mode 1)
(defalias 'forward-evil-word 'forward-evil-symbol)

;;(require 'evil-surround)                                                                                                       
(use-package evil-surround)
(global-evil-surround-mode 1)     
(setq evil-insert-state-cursor 'box)
;; evil ace jump
(define-key evil-normal-state-map (kbd "SPC") 'ace-jump-mode)
(setq scroll-margin 5
      scroll-conservatively 9999
      scroll-step 1)
(define-key evil-normal-state-map (kbd "C-k") (lambda ()
                                                (interactive)
                                                (evil-scroll-up nil)))
(define-key evil-normal-state-map (kbd "C-j") (lambda ()
                                                (interactive)
                                                (evil-scroll-down nil)))
;;evil-leader
;;(require 'evil-leader)
(use-package evil-leader)
(global-evil-leader-mode)
(evil-leader/set-leader ";")
(evil-leader/set-key
 "w" 'save-buffer
 "q" 'kill-current-buffer
 "d" 'delete-other-windows
 "6" 'dap-continue
 "2" 'dap-next
 "j" 'next-multiframe-window
 "4" 'dap-breakpoint-toggle	
 "5" 'dap-ui-repl	
 "t" 'insert-translated-name-replace-with-camel
 "k" 'ejc-describe-table
 "i" 'lsp-java-add-import
 "s" 'evil-surround-region
 "l" 'toggle-truncate-lines
 "e" 'neotree-enter
 "m" 'vterm
 "b" 'switch-to-buffer
 )

;; evil-org
(use-package evil-org
  :ensure t
  :after org
  :config
  (add-hook 'org-mode-hook 'evil-org-mode)
  (add-hook 'evil-org-mode-hook
            (lambda ()
              (evil-org-set-key-theme)))
  (require 'evil-org-agenda)
  (evil-org-agenda-set-keys))
(setq org-export-with-sub-superscripts nil)

;; space line theme
;;(require 'spaceline-config)
(use-package spaceline-config)
(setq spaceline-highlight-face-func 'spaceline-highlight-face-evil-state)
(setq spaceline-highlight-face-func 'spaceline-highlight-face-evil-state
    powerline-height 25 
    powerline-default-separator nil)
(setq evil-emacs-state-tag "EMACS")
(setq evil-hybrid-state-tag "HYBRID")
(setq evil-insert-state-tag "INSERT")
(setq evil-lisp-state-tag "LISP")
(setq evil-motion-state-tag "MOTION")
(setq evil-normal-state-tag "NORMAL")
(setq evil-operator-state-tag "OPERATOR")
(setq evil-visual-state-tag "VISUAL")
;; powerline-default-separator "wave")
    ;; powerline-default-separator "slant") 
;; powerline-default-separator "contour")
(spaceline-spacemacs-theme)
;;(defhydra hydra-modeline/powerline-separator (:color blue :hint t)
;;  "powerline separators"
;;  ("A" (setq powerline-default-separator 'alternate) "alternate")
;;  ("a" (setq powerline-default-separator 'arrow) "arrow")
;;  ("f" (setq powerline-default-separator 'arrow-fade) "arrow-fade")
;;  ("|" (setq powerline-default-separator 'bar) "bar")
;;  ("b" (setq powerline-default-separator 'box) "box")
;;  ("[" (setq powerline-default-separator 'brace) "brace")
;;  ("B" (setq powerline-default-separator 'butt) "butt")
;;  ("c" (setq powerline-default-separator 'chamfer) "chamfer")
;;  ("C" (setq powerline-default-separator 'contour) "contour")
;;  ("(" (setq powerline-default-separator 'curve) "curve")
;;  (")" (setq powerline-default-separator 'rounded) "rounded")
;;  ("]" (setq powerline-default-separator 'roundstub) "roundstub")
;;  ("/" (setq powerline-default-separator 'slant) "slant")
;;  ("w" (setq powerline-default-separator 'wave) "wave")
;;  ("z" (setq powerline-default-separator 'zigzag) "zigzag")
;;  ("u" (setq powerline-default-separator 'utf-8) "utf-8")
;;  ("n" (setq powerline-default-separator 'nil) "none"))

;; evil end
;; evil end
;; evil end

;; tabs
;;(require 'centaur-tabs)
;;(centaur-tabs-mode t)
;;(global-set-key (kbd "M-h")  'centaur-tabs-backward)
;;(global-set-key (kbd "M-l") 'centaur-tabs-forward)
;;;;(centaur-tabs-headline-match)
;;(setq centaur-tabs-style "bar")
;;;;(setq centaur-tabs-set-icons t)
;;(setq centaur-tabs-gray-out-icons 'buffer)
;;(setq centaur-tabs-set-bar 'left)
;;(setq centaur-tabs-set-close-button nil)
;;(setq centaur-tabs-height 10)
;;(setq centaur-tabs-set-bar 'under)
;;(setq x-underline-at-descent-line t)
;;(setq centaur-tabs-set-modified-marker t)
;;(setq centaur-tabs-modified-marker "*")

;;(require 'all-the-icons)
;;(require 'evil-fcitx)
(use-package all-the-icons)
(use-package evil-fcitx)
(global-unset-key (kbd "C-SPC"))
(global-set-key (kbd "M-SPC") 'set-mark-command)

;; translate 
;;(require 'insert-translated-name)
(use-package insert-translated-name)
(setq insert-translated-name-translate-engine "youdao")


;; disable mouse
;;(require 'disable-mouse)
(use-package disable-mouse)
(global-disable-mouse-mode)

;; database client
;;(require 'ejc-sql)
(use-package ejc-sql)
(add-hook 'ejc-sql-minor-mode-hook
          (lambda ()
            (auto-complete-mode nil)))
(add-hook 'ejc-sql-connected-hook
          (lambda ()
            (ejc-set-fetch-size 50)
            (ejc-set-max-rows nil)
            (ejc-set-column-width-limit nil)
            ))
(setq ejc-result-table-impl 'ejc-result-mode)

;; db config
(require 'db)
;; database client end

;; theme
(load-theme 'doom-gruvbox t)

;; smex
;;(require 'smex)
(use-package smex)
;;(require 'smex)
(smex-initialize) 
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

;; clip board
;;(require 'simpleclip)
;;(simpleclip-mode 1)
;; x-select-enable-clipboard
(setq x-select-enable-clipboard t)
(unless window-system
 (when (getenv "DISPLAY")
  ;; Callback for when user cuts
  (defun xsel-cut-function (text &optional push)
    ;; Insert text to temp-buffer, and "send" content to xsel stdin
    (with-temp-buffer
      (insert text)
      (call-process-region (point-min) (point-max) "xsel" nil 0 nil "--clipboard" "--input")))
  ;; Call back for when user pastes
  (defun xsel-paste-function()
    (let ((xsel-output (shell-command-to-string "xsel --clipboard --output")))
      (unless (string= (car kill-ring) xsel-output)
	xsel-output )))
  ;; Attach callbacks to hooks
  (setq interprogram-cut-function 'xsel-cut-function)
  (setq interprogram-paste-function 'xsel-paste-function)
 ))

;; xml
(defun bf-pretty-print-xml-region (begin end)
  "Pretty format XML markup in region. You need to have nxml-mode
http://www.emacswiki.org/cgi-bin/wiki/NxmlMode installed to do
this.  The function inserts linebreaks to separate tags that have
nothing but whitespace between them.  It then indents the markup
by using nxml's indentation rules."
  (interactive "r")
  (save-excursion
      (nxml-mode)
      (goto-char begin)
      (while (search-forward-regexp "\>[ \\t]*\<" nil t) 
        (backward-char) (insert "\n"))
      (indent-region begin end))
    (message "Ah, much better!"))

;; fonts
(use-package cnfonts)
(setq cnfonts--custom-set-fontnames
      '(("PragmataPro" "Ubuntu Mono" "DejaVu Sans Mono")
        ("文泉驿等宽微米黑" "Ubuntu Mono" "隶书" "新宋体")
        ("HanaMinB" "SimSun-ExtB" "MingLiU-ExtB")))

;; todo auto yasnippet
(global-set-key (kbd "H-w") #'aya-create)
(global-set-key (kbd "H-y") #'aya-expand)
(yas-global-mode 1)
(add-hook 'yas-after-exit-snippet-hook #'evil-normal-state)

;; which-key
(use-package which-key)
;;(require 'which-key)
(which-key-mode)
(which-key-setup-side-window-bottom)

;; org mode
(use-package org-bullets
  :custom
  (org-ellipsis "⤵")
  :hook (org-mode . org-bullets-mode))
(setq org-hide-emphasis-markers t
      org-fontify-done-headline t
      org-hide-leading-stars t
      org-pretty-entities nil
      org-odd-levels-only t)
(setq prettify-symbols-unprettify-at-point 'right-edge)
(add-hook 'org-mode-hook 'prettify-symbols-mode)
;; load image in org mode
(defun org-toggle-iimage-in-org ()
  "display images in your org file"
  (interactive)
  (if (face-underline-p 'org-link)
      (set-face-underline-p 'org-link nil)
      (set-face-underline-p 'org-link t))
  (iimage-mode))
(setq org-image-actual-width nil)
;;(setq org-file-apps
;;    '(("\\.docx\\'" . "wps.exe %s" )
;;      ("\\.doc\\'" . "wps.exe %s" ))
;;    ) 

(defun number-region (start end)
  (interactive "r")
  (let* ((count 1)
     (indent-region-function (lambda (start end)
                   (save-excursion
                     (setq end (copy-marker end))
                     (goto-char start)
                     (while (< (point) end)
                       (or (and (bolp) (eolp))
                       (insert (format "%d" count))
                       (setq count (1+ count)))
                       (forward-line 1))
                     (move-marker end nil)))))
    (indent-region start end)))
(setq gc-cons-threshold (* 2 1000 1000))

;; xml  plantuml.jar
(setq org-plantuml-jar-path (expand-file-name "/home/van/soft/jdk/plantuml.jar"))
;;(add-to-list 'org-src-lang-modes '("plantuml" . plantuml))
(org-babel-do-load-languages 'org-babel-load-languages '((plantuml . t)))

;; active Org-babel languages
(org-babel-do-load-languages
 'org-babel-load-languages
 '(;; other Babel languages
   (plantuml . t)))
