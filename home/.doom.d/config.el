(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(prefer-coding-system 'utf-8)

(set-language-environment "UTF-8")
(set-buffer-multibyte 't)

(setq jit-lock-stealth-time nil
      jit-lock-defer-time nil
      jit-lock-defer-time 0.00
      jit-lock-stealth-load 0.0
      jit-lock-context-time 0.0)

(setq
 ;; No need to see GNU agitprop.
 inhibit-startup-screen t
 ;; No need to remind me what a scratch buffer is.
 initial-scratch-message nil
 ;; Double-spaces after periods is morally wrong.
 sentence-end-double-space nil
 ;; Never ding at me, ever.
 ring-bell-function 'ignore
 ;; Save existing clipboard text into the kill ring before replacing it.
 save-interprogram-paste-before-kill t
 ;; Prompts should go in the minibuffer, not in a GUI.
 use-dialog-box nil
 ;; Fix undo in commands affecting the mark.
 mark-even-if-inactive nil
 ;; Let C-k delete the whole line.
 kill-whole-line t
 ;; search should be case-sensitive by default
 case-fold-search nil
 ;; no need to prompt for the read command _every_ time
 ;; compilation-read-command nil
 ;; scroll to first error
 ;; compilation-scroll-output 'first-error
 ;; accept 'y' or 'n' instead of yes/no
 ;; the documentation advises against setting this variable
 ;; the documentation can get bent imo
 use-short-answers t
 ;; my source directory
 ;; default-directory "~/src/"
 ;; eke out a little more scrolling performance
 fast-but-imprecise-scrolling t
 ;; prefer newer elisp files
 load-prefer-newer t
 ;; when I say to quit, I mean quit
 confirm-kill-processes nil
 ;; if native-comp is having trouble, there's not very much I can do
 native-comp-async-report-warnings-errors 'silent
 ;; unicode ellipses are better
 truncate-string-ellipsis "…"

 ;;gc-cons-threshold (* 100 1024 1024)
 ;; gc-cons-threshold 100000000
 ;;read-process-output-max (* 1024 1024)
 )

;; display line number
(setq display-line-numbers-type 'relative)

(setq ;;scroll-margin 4
 evil-vsplit-window-right t
 evil-split-window-below t
 yas-triggers-in-field t
 )

;;(setq org-directory "~/org/")

(setq user-full-name "Dinh Quang Minh"
      user-mail-address "quangminh736.2020@gmail.com")
(add-to-list 'custom-theme-load-path "~/.doom.d/themes/")
;; theme and font
(setq doom-theme 'jetbrains-darcula
      doom-font (font-spec :family "JetBrains Mono" :size 26) ;;:weight 'regular)
      doom-variable-pitch-font (font-spec :family "JetBrains Mono" :size 26)
      doom-big-font (font-spec :family "JetBrains Mono" :size 30))

;; neotree
(after! neotree
  (setq doom-themes-neotree-file-icons 'icons)
  (setq doom-themes-neotree-enable-file-icons 'icons)
  (setq neo-theme 'icons))

(after! doom-themes (setq doom-neotree-file-icons t))

(setq truncate-partial-width-windows t)

;; power ranger file manager
(use-package ranger
  :config
  (setq ranger-show-hidden t
        ranger-width-preview 0.40
        ranger-parent-depth 2
        ranger-width-parents 0.40
        ranger-max-parent-width 0.40)
  )

;; company
;; (add-hook 'after-init-hook 'global-company-mode)
(after! company
  (setq company-idle-delay 0.5
        company-echo-delay 0.5
        company-minimum-prefix-length 10
        company-frontends '(company-pseudo-tooltip-frontend)
        company-selection-wrap-around t
        company-dabbrev-other-buffers   t
        company-preview-overlay t
        ;; tool-tip
        company-tooltip-limit           10
        company-tooltip-margin 1
        company-tooltip-align-annotations t
        ;;company-tooltip-minimum-width 30
        company-tooltip-idle-delay 0.5
        )

  (set-company-backend! '(text-mode)
    '(:separate
      company-capf
      company-dabbrev-code
      company-semantic
      company-yasnippet
      company-files
      ))

  (add-to-list 'company-backends'(
                                  company-capf
                                  company-dabbrev-code
                                  company-yasnippet
                                  ;;company-semantic
                                  company-files
                                  ))

  (company-posframe-mode 1)
  )

;; word wrap
(visual-line-mode t)
(global-visual-line-mode t)
(setq visual-line-fringe-indicators '(left-curly-arrow right-curly-arrow))

;; doom-modeline
;; (setq doom-modeline-buffer-file-name-style 'file-name)
(setq doom-modeline-icon (display-graphic-p)
      doom-modeline-major-mode-icon t
      doom-modeline-major-mode-color-icon t
      doom-modeline-buffer-state-icon t
      doom-modeline-buffer-modification-icon t
      doom-modeline-enable-word-count nil
      )


;; Disable confirm
(setq confirm-kill-emacs nil
      confirm-kill-processes nil
      confirm-nonexistent-file-or-buffer nil
      )
(set-buffer-modified-p nil)

;;(setq indent-line-function t)

;; Start fullscreen
(add-to-list 'initial-frame-alist '(fullscreen . maximized))

;;(add-hook 'text-mode-hook 'turn-on-visual-line-mode)

(setq ivy-height-alist
      '((t
         lambda (_caller)
         (/ (frame-height) 4))))

(setq multi-term-buffer-name "term")

;; cursor
;; (setq evil-insert-state-cursor '((hbar . 4) "white" )
;;       ;;evil-normal-state-cursor '(box "purple")
;;       )

;; (setq evil-insert-state-cursor '((hbar . 4)))
;; (setq evil-insert-state-cursor '((box . 4)))
(setq evil-insert-state-cursor '((bar . 3)))


;; tab width
(setq-default indent-tab-mode nil)
(setq-default tab-width 4) ; or any other preferred value
(defvaralias 'c-basic-offset 'tab-width)
(defvaralias 'cperl-indent-level 'tab-width)

;; tab
(setq centaur-tabs-height 10)
(setq centaur-tabs-set-bar 'under)
(setq x-underline-at-descent-line t)

;; lsp
(after! lsp-mode
  (setq +lsp-company-backends
        '(:separate
          ;;company-semantic
          company-capf
          company-dabbrev
          company-yasnippet
          company-files))

  (setq lsp-eldoc-enable-hover t
        lsp-eldoc-render-all nil
        lsp-signature-doc-lines 0
        lsp-signature-render-documentation nil
        lsp-idle-delay 0
        lsp-modeline-diagnostics-enable nil
        )

  (setq flycheck-posframe-border-width 1
        flycheck-posframe-warning-prefix "W: "
        flycheck-posframe-info-prefix "I: "
        flycheck-posframe-error-prefix "E: "
        flycheck-idle-change-delay 0.0
        flycheck-idle-buffer-switch-delay 0.0
        flycheck-display-errors-delay 0.0
        )

  )

(after! lsp-ui
  (setq
   lsp-ui-sideline-enable nil  ; no more useful than flycheck
   ;; lsp-ui-doc-enable t ; redundant with K
   ;;lsp-signature-auto-activate nil
   ;; lsp-signature-function 'lsp-signature-posframe)
   lsp-enable-symbol-highlighting nil
   ;;lsp-ui-doc-max-width 120
   lsp-ui-doc-max-height 22
   lsp-ui-doc-delay 0.0
   lsp-ui-doc-position 'bottom
   lsp-ui-imenu-window-width 25
   )
  )



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Compilation mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Convert shell escapes to  color
(add-hook 'compilation-filter-hook
          (lambda () (ansi-color-apply-on-region (point-min) (point-max))))


(add-to-list 'display-buffer-alist '("*Async Shell Command*" . (display-buffer-no-window . nil)) )

;;(ido-mode t)

;; auto display color
;; (define-globalized-minor-mode my-global-rainbow-mode rainbow-mode
;;   (lambda () (rainbow-mode 1)))
;; (my-global-rainbow-mode 1)

;; keymaps
(map! :nv
      "C-d" #'evil-multiedit-match-symbol-and-next
      "C-D" #'evil-multiedit-match-symbol-and-prev
      ;; "<f1>" #'+vterm/toggle
      "<f2>" #'neotree
      "<f4>" #'helm-lsp--workspace-symbol
      "<f6>" #'ranger
      "C-;" #'smex
      ;; "C-;" #'counsel-M-x
      ;; "C-h" #'evil-window-left
      ;; "C-j" #'evil-window-down
      ;; "C-k" #'evil-window-up
      ;; "C-l" #'evil-window-right
      "M-q" #'centaur-tabs--kill-this-buffer-dont-ask
      "C-SPC"#'company-mode
      "C-n"#'company-dabbrev-code
      )

(with-eval-after-load 'evil-maps
  (define-key evil-normal-state-map (kbd "/")         'swiper)
  (define-key evil-normal-state-map (kbd"<tab>")      'centaur-tabs-forward)
  (define-key evil-normal-state-map (kbd"<backtab>")  'centaur-tabs-backward)
  (define-key evil-normal-state-map (kbd"R")          'recompile)
  (define-key evil-normal-state-map (kbd"K")          'lsp-ui-doc-show)
  (define-key evil-normal-state-map (kbd"<f1>")       '+vterm/toggle)

  (define-key evil-normal-state-map (kbd"C-h") 'evil-window-left)
  (define-key evil-normal-state-map (kbd"C-j") 'evil-window-down)
  (define-key evil-normal-state-map (kbd"C-k") 'evil-window-up)
  (define-key evil-normal-state-map (kbd"C-l") 'evil-window-right)
  )

(setq evil-escape-delay 0.0
      evil-auto-indent nil
      evil-flash-delay 0)

(setq swiper-isearch-highlight-delay 0)

;; Enable tree-sitter
;;(global-tree-sitter-mode)
;;(add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode)
;;(load "~/.doom.d/tree-sitter.el")

(setq helm-input-idle-delay 0
      helm-exit-idle-delay 0
      helm-cycle-resume-delay 0
      )

(remove-hook '+doom-dashboard-functions #'doom-dashboard-widget-shortmenu)
(add-hook! '+doom-dashboard-functions :append
  (setq-hook! '+doom-dashboard-mode-hook evil-normal-state-cursor (list nil))
  (setq fancy-splash-image "~/.doom.d/emacs-e.svg"))

(setq vterm-module-cmake-args "-DUSE_SYSTEM_LIBVTERM=yes")

(setq vterm-timer-delay 0
      vterm-kill-buffer-on-exit nil
      )


;; https://github.com/elken/doom
;; (custom-theme-set-faces! '(doom-one doom-gruvbox doom-monokai-classic gruber-darker atom-one-dark zenburn)

;;   `(tree-sitter-hl-face:number :inherit highlight-numbers)
;;   `(tree-sitter-hl-face:attribute :inherit font-lock-keyword-face)

;;   ;;const
;;   `(tree-sitter-hl-face:constant.builtin :inherit font-lock-builtin-face)
;;   `(tree-sitter-hl-face:constant :inherit font-lock-constant-face)

;;   ;; `(tree-sitter-hl-face:label )
;;   `(tree-sitter-hl-face:operator :inherit default)

;;   `(tree-sitter-hl-face:variable.parameter :inherit font-lock-variable-name-face)
;;   `(tree-sitter-hl-face:variable.special :inherit font-lock-variable-name-face)

;;   `(tree-sitter-hl-face:type :inherit font-lock-type-face)
;;   `(tree-sitter-hl-face:type.builtin :inherit font-lock-builtin-face)

;;   `(tree-sitter-hl-face:string :inherit font-lock-string-face)

;;   `(tree-sitter-hl-face:property :inherit font-lock-variable-name-face)

;;   `(tree-sitter-hl-face:keyword :inherit font-lock-keyword-face)

;;   ;;`(tree-sitter-hl-face:tag :foreground, (doom-color 'blue))

;;   ;; function
;;   `(tree-sitter-hl-face:constructor :inherit font-lock-function-name-face :weight normal)
;;   `(tree-sitter-hl-face:method :inherit font-lock-function-name-face :weight normal)
;;   `(tree-sitter-hl-face:function :inherit font-lock-function-name-face :weight normal)
;;   `(tree-sitter-hl-face:function.builtin :inherit font-lock-function-name-face :weight normal)
;;   `(tree-sitter-hl-face:function.call :inherit font-lock-function-name-face :weight normal)
;;   `(tree-sitter-hl-face:function.macro :inherit font-lock-function-name-face :weight normal)
;;   `(tree-sitter-hl-face:function.special :inherit font-lock-function-name-face :weight normal)

;;   )

;;(setq  +doom-dashboard-banner-file "~/.doom.d/emacs-e.svg"
;;       +doom-dashboard-banner-padding '(0 . 2)
;;)

(set-frame-parameter nil 'background-mode 'dark)
