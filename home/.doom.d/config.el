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
        compilation-read-command nil
        ;; scroll to first error
        compilation-scroll-output 'first-error
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
 )

;; display line number
(setq display-line-numbers-type 'relative)

(setq org-directory "~/org/")

(setq user-full-name "Dinh Quang Minh"
      user-mail-address "quangminh736.2020@gmail.com")

;; theme and font
(add-to-list 'custom-theme-load-path
             "~/.doom.d/theme/")

(setq doom-theme 'gruber-darker
      doom-font (font-spec :family "Iosevka" :size 25 :weight 'regular)
      doom-variable-pitch-font (font-spec :family "Iosevka" :size 20))

;; neotree
(after! neotree
  (setq doom-themes-neotree-file-icons 'icons)
  (setq doom-themes-neotree-enable-file-icons 'icons)
  (setq neo-theme 'icons))

;; company
(add-hook 'after-init-hook 'global-company-mode)
(after! company
  (setq company-idle-delay 0.0
        company-echo-delay 0.0
        company-tooltip-align-annotations t
        company-tooltip-minimum-width 1
        company-tooltip-maximum-width 40
        company-frontends '(company-pseudo-tooltip-frontend)
        company-backends '((
                            company-dabbrev-code
                            company-capf
                            company-files
                            company-semantic
                            ))
        company-minimum-prefix-length 10
        ;; gc-cons-threshold (* 100 1024 1024)
        ;; gc-cons-threshold 100000000
        ; read-process-output-max (* 1024 1024)
        company-selection-wrap-around t
        company-tooltip-limit           10
        company-transformers '(company-sort-by-occurrence)
        company-dabbrev-other-buffers   t
        company-preview-overlay t
        company-tooltip-align-annotations t
        company-dabbrev-other-buffers t
        company-tooltip-margin 1
))

(set-company-backend! '(c-mode c++-mode java-mode python-mode rust-mode text-mode)
'(:separate
        company-capf
        company-dabbrev-code
        company-files
        company-semantic
        company-yasnippet
))
(after! doom-themes (setq doom-neotree-file-icons t))

;; word wrap
(visual-line-mode t)
(global-visual-line-mode t)
(setq visual-line-fringe-indicators '(left-curly-arrow right-curly-arrow))

;; doom-modeline
; (setq doom-modeline-buffer-file-name-style 'file-name)
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

;; (setq evil-insert-state-cursor '((hbar . 4)))
;; (setq evil-insert-state-cursor '((box . 4)))
(setq evil-insert-state-cursor '((bar . 3)))

;; tab width
(setq-default indent-tab-mode nil)
(setq-default tab-width 4) ; or any other preferred value
(defvaralias 'c-basic-offset 'tab-width)
(defvaralias 'cperl-indent-level 'tab-width)

;; buffer
(setq centaur-tabs-height 10)
(setq centaur-tabs-set-bar 'under)
(setq x-underline-at-descent-line t)

;; lsp
(setq   lsp-eldoc-hook nil
        lsp-prefer-flymake nil
        lsp-signature-auto-activate nil)

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

(ido-mode t)

;; auto display color
(define-globalized-minor-mode my-global-rainbow-mode rainbow-mode
  (lambda () (rainbow-mode 1)))

(my-global-rainbow-mode 1)

;;; Whitespace mode
(setq whitespace-style '(
    face
    trailing
    tabs
    spaces
    empty
    space-mark
    tab-mark))

(defun rc/set-up-whitespace-handling ()
  (interactive)
  (whitespace-mode 1)
  (add-to-list 'write-file-functions 'delete-trailing-whitespace))

(add-hook 'tuareg-mode-hook 'rc/set-up-whitespace-handling)
(add-hook 'c++-mode-hook 'rc/set-up-whitespace-handling)
(add-hook 'c-mode-hook 'rc/set-up-whitespace-handling)
(add-hook 'emacs-lisp-mode-hook 'rc/set-up-whitespace-handling)
(add-hook 'java-mode-hook 'rc/set-up-whitespace-handling)
(add-hook 'lua-mode-hook 'rc/set-up-whitespace-handling)
(add-hook 'rust-mode-hook 'rc/set-up-whitespace-handling)
(add-hook 'scala-mode-hook 'rc/set-up-whitespace-handling)
(add-hook 'markdown-mode-hook 'rc/set-up-whitespace-handling)
(add-hook 'haskell-mode-hook 'rc/set-up-whitespace-handling)
(add-hook 'python-mode-hook 'rc/set-up-whitespace-handling)
(add-hook 'erlang-mode-hook 'rc/set-up-whitespace-handling)
(add-hook 'asm-mode-hook 'rc/set-up-whitespace-handling)
(add-hook 'nasm-mode-hook 'rc/set-up-whitespace-handling)
(add-hook 'go-mode-hook 'rc/set-up-whitespace-handling)
(add-hook 'nim-mode-hook 'rc/set-up-whitespace-handling)
(add-hook 'yaml-mode-hook 'rc/set-up-whitespace-handling)
(add-hook 'porth-mode-hook 'rc/set-up-whitespace-handling)

;; GCMH - the Garbage Collector Magic Hack
(gcmh-mode 1)
(setq gcmh-high-cons-threshold most-positive-fixnum)

;; keymaps
(map! :nv
      "C-d" #'evil-multiedit-match-symbol-and-next
      "C-D" #'evil-multiedit-match-symbol-and-prev
      "<f1>" #'vterm
      "<f2>" #'neotree
      "<f4>" #'helm-lsp--workspace-symbol
      "<f6>" #'ranger
      "C-;" #'smex
      "C-h" #'evil-window-left
      "C-j" #'evil-window-down
      "C-k" #'evil-window-up
      "C-l" #'evil-window-right
      "M-q" #'centaur-tabs--kill-this-buffer-dont-ask
      ;; "C-SPC"#'company-mode
      "C-n"#'company-dabbrev-code
)

(with-eval-after-load 'evil-maps
    (define-key evil-normal-state-map (kbd "/")         'swiper)
    (define-key evil-normal-state-map (kbd"<tab>")      'centaur-tabs-forward)
    (define-key evil-normal-state-map (kbd"<backtab>")  'centaur-tabs-backward)
    (define-key evil-normal-state-map (kbd"R")          'recompile)
    (define-key evil-normal-state-map (kbd"K")          'lsp-ui-doc-show)
)
