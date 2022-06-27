;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
(setq user-full-name "John Doe"
      user-mail-address "john@doe.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-unicode-font' -- for unicode glyphs
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;;(setq doom-font (font-spec :family "Fira Code" :size 12 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:

;;(setq doom-theme 'doom-one)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type 'relative)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")


;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

;; font
(setq doom-theme 'doom-one
      doom-font (font-spec :family "JetBrains Mono" :size 25 :weight 'regular)
      doom-variable-pitch-font (font-spec :family "JetBrains Mono" :size 20))

;; neotree
(after! neotree
  (setq doom-themes-neotree-file-icons 'icons)
  (setq doom-themes-neotree-enable-file-icons 'icons)
  (setq neo-theme 'icons))

;; company
;; (add-hook 'after-init-hook 'global-company-mode)
(after! company
  (setq company-idle-delay 0.0
        company-tooltip-minimum-width 1
        ;; company-tooltip-maximum-width 40
        company-frontends '(company-pseudo-tooltip-frontend)
        company-backends '((
                            company-dabbrev-code
                            company-capf
                            company-files
                            ;;company-keywords
                            company-semantic
                            ))
        company-minimum-prefix-length 1
        gc-cons-threshold (* 100 1024 1024)
        read-process-output-max (* 1024 1024)
        company-selection-wrap-around t
        company-tooltip-limit           14
        company-transformers '(company-sort-by-occurrence)
        company-dabbrev-other-buffers   t
        company-preview-overlay t
        company-tooltip-align-annotations t
        company-dabbrev-other-buffers t
))

(after! doom-themes
  (setq doom-neotree-file-icons t))

;; word wrap
(visual-line-mode t)
(global-visual-line-mode t)
(setq visual-line-fringe-indicators '(left-curly-arrow right-curly-arrow))

;; doom-modeline
(setq doom-modeline-buffer-file-name-style 'file-name)
(setq doom-modeline-icon (display-graphic-p))
(setq doom-modeline-major-mode-icon t)
(setq doom-modeline-major-mode-color-icon t)
(setq doom-modeline-buffer-state-icon t)
(setq doom-modeline-buffer-modification-icon t)

;; ranger
(setq ranger-show-hidden t)
(setq ranger-width-preview 0.40)
(setq ranger-parent-depth 2)
(setq ranger-width-parents 0.40)
(setq ranger-max-parent-width 0.40)

(setq confirm-kill-emacs nil)
(setq indent-line-function t)
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

(setq evil-insert-state-cursor '((hbar . 4)))
;; (setq evil-insert-state-cursor '((box . 4)))

;; tab width
(setq-default indent-tab-mode nil)
(setq-default tab-width 4) ; or any other preferred value
(defvaralias 'c-basic-offset 'tab-width)
(defvaralias 'cperl-indent-level 'tab-width)

(setq centaur-tabs-height 10)
(setq centaur-tabs-set-bar 'under)
(setq x-underline-at-descent-line t)

;; keymaps
(map! :nv
      "C-d" #'evil-multiedit-match-symbol-and-next
      "C-D" #'evil-multiedit-match-symbol-and-prev
      "<f1>" #'vterm
      "<f2>" #'neotree
      "<f4>" #'helm-lsp--workspace-symbol
      "<f6>" #'ranger
      "C-'" #'swiper
      "C-;" #'smex
      "C-h" #'evil-window-left
      "C-j" #'evil-window-down
      "C-k" #'evil-window-up
      "C-l" #'evil-window-right
      "M-q" #'centaur-tabs--kill-this-buffer-dont-ask
      "C-SPC"#'company-mode
      "C-n"#'company-dabbrev-code
)

(define-key evil-normal-state-map (kbd "<tab>") 'centaur-tabs-forward)
(define-key evil-normal-state-map (kbd "<backtab>") 'centaur-tabs-backward)
(define-key evil-normal-state-map (kbd "R") 'recompile)

(setq lsp-eldoc-hook nil)
(setq lsp-prefer-flymake nil)
(setq lsp-signature-auto-activate nil)

(after! lsp-ui
  (setq lsp-ui-sideline-enable nil  ; no more useful than flycheck
        lsp-ui-doc-enable nil))     ; redundant with K



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Compilation mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Convert shell escapes to  color
(add-hook 'compilation-filter-hook
          (lambda () (ansi-color-apply-on-region (point-min) (point-max))))


(add-to-list 'display-buffer-alist '("*Async Shell Command*" . (display-buffer-no-window . nil)) )

;; (ido-mode t)

(set-company-backend! '(c-mode c++-mode java-mode python-mode rust-mode text-mode)
'(:separate
        company-capf
        company-dabbrev-code
        company-files
        company-semantic
))
