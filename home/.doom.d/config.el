;; display line number
(setq display-line-numbers-type 'relative)

(setq org-directory "~/org/")

;; theme and font
(add-to-list 'custom-theme-load-path
             "~/.doom.d/themes/gruber-darker-theme.el")

(setq doom-theme 'gruber-darker
      doom-font (font-spec :family "Iosevka" :size 25 :weight 'regular)
      doom-variable-pitch-font (font-spec :family "Iosevka" :size 20))

;; neotree
(after! neotree
  (setq doom-themes-neotree-file-icons 'icons)
  (setq doom-themes-neotree-enable-file-icons 'icons)
  (setq neo-theme 'icons))

;; company
;; (add-hook 'after-init-hook 'global-company-mode)
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
                            ;;company-keywords
                            company-semantic
                            ))
        company-minimum-prefix-length 1
        gc-cons-threshold (* 100 1024 1024)
        read-process-output-max (* 1024 1024)
        company-selection-wrap-around t
        company-tooltip-limit           10
        company-transformers '(company-sort-by-occurrence)
        company-dabbrev-other-buffers   t
        company-preview-overlay t
        company-tooltip-align-annotations t
        company-dabbrev-other-buffers t
        company-tooltip-margin 0
))

(set-company-backend! '(c-mode c++-mode java-mode python-mode rust-mode text-mode)
'(:separate
        company-capf
        company-dabbrev-code
        company-files
        company-semantic
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

;; buffer
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
(define-key evil-normal-state-map (kbd "/") 'swiper)

;; lsp
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

(ido-mode t)

;; auto display color
(define-globalized-minor-mode my-global-rainbow-mode rainbow-mode
  (lambda () (rainbow-mode 1)))

(my-global-rainbow-mode 1)
