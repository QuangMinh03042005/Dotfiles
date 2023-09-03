;; Load package manager

(setq package-archives
	  '(("melpa" . "https://raw.githubusercontent.com/d12frosted/elpa-mirror/master/melpa/")
		("org"   . "https://raw.githubusercontent.com/d12frosted/elpa-mirror/master/org/")
		("gnu"   . "https://raw.githubusercontent.com/d12frosted/elpa-mirror/master/gnu/")
		("nongnu"   . "https://raw.githubusercontent.com/d12frosted/elpa-mirror/master/nongnu/")
		))

(condition-case nil
    (require 'use-package)
  (file-error
   (require 'package)
   (package-initialize)
   (package-refresh-contents)))

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-and-compile
  (setq use-package-always-ensure t
        use-package-expand-minimally t))

;; straight.el
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; Status line
;; (use-package doom-modeline
;;   :ensure t
;;   :init (doom-modeline-mode 1)
;;   :config
;;   (setq doom-modeline-icon (display-graphic-p)
;;  		doom-modeline-major-mode-icon t
;;  		doom-modeline-major-mode-color-icon t
;;  		doom-modeline-buffer-state-icon t
;;  		doom-modeline-buffer-modification-icon t)
;;   )

;;(use-package spaceline
;;  :ensure t
;;  :config
;;  (spaceline-spacemacs-theme))

;; Code autocomplete
;; (package! company-posframe :recipe (:host github :repo "tumashu/company-posframe"))
(straight-use-package '(company-posframe :host github
										 :repo "tumashu/company-posframe"
										 ))
(require 'company-posframe)
(company-posframe-mode 1)
(use-package company
  :bind (:map company-active-map
			  ("C-n" . company-select-next)
			  ("C-p" . company-select-previous))
  :config
  ;; (setq company-idle-delay 0.0
  ;; 		company-echo-delay 0.0
  ;; 		company-minimum-prefix-length 5
  ;; 		company-tooltip-align-annotations t
  ;; 		company-tooltip-minimum-width 10
  ;; 		company-tooltip-maximum-width 40
  ;; 		company-tooltip-current-width 20
  ;; 		company-tooltip-limit         15
  ;; 		company-frontends '(company-pseudo-tooltip-frontend)
  ;; 		company-backends '((
  ;; 							company-dabbrev-code
  ;; 							company-capf
  ;; 							company-files
  ;; 							company-semantic
  ;; 							))
  ;; 		company-selection-wrap-around t
  ;; 		company-transformers '(company-sort-by-occurrence)
  ;; 		company-dabbrev-other-buffers   t
  ;; 		company-preview-overlay t
  ;; 		company-tooltip-align-annotations t
  ;; 		company-dabbrev-other-buffers t
  ;; 		company-tooltip-margin 1
  ;; 		)
  (setq company-idle-delay 0.0
        company-echo-delay 0.0
        company-minimum-prefix-length 5
        company-frontends '(company-pseudo-tooltip-frontend)
        company-selection-wrap-around t
        company-dabbrev-other-buffers   t
        company-preview-overlay t
        ;; tool-tip
        company-tooltip-limit           10
        company-tooltip-margin 1
        company-tooltip-align-annotations t
        ;;company-tooltip-minimum-width 30
        company-tooltip-idle-delay 0.0
        )

  company-backends '((

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


  (global-company-mode t)
  )

(use-package yasnippet
  :init
  (yas-global-mode 1))

;;(use-package corfu
;;  :init
;;  (setq corfu-auto t
;;        corfu-quit-no-match t
;;		corfu-auto-prefix 5
;;		corfu-auto-delay 0.0
;;        corfu-quit-at-boundary 'separator)
;;  (global-corfu-mode))
;;(setq lsp-completion-provider :none)

;;(use-package cape
;;  :init
;;  (add-to-list 'completion-at-point-functions #'cape-dabbrev)
;;  (add-to-list 'completion-at-point-functions #'cape-file)
;;  :config
;;  (defun my-cape-dabbrev-accept-all ()
;;	(cape-wrap-accept-all #'cape-dabbrev))
;;  (add-to-list 'completion-at-point-functions #'my-cape-dabbrev-accept-all)
;;  )

(use-package smex
  :bind(("C-;" . smex))
  )

;; undo for evil mode
(use-package undo-fu
  :ensure t)

;;; Vim Bindings
(use-package evil
  :ensure t
  :init
  (setq evil-want-integration t) ;; This is optional since it's already set to t by default.
  (setq evil-want-keybinding nil)

  (setq evil-escape-delay 0.0
		evil-auto-indent nil
		evil-flash-delay 0
		evil-echo-state nil
		)
  :config
  ;; (setq evil-insert-state-cursor '((hbar . 4)))
  (setq evil-insert-state-cursor '((box . 4)))
  ;; (setq evil-insert-state-cursor '((bar . 4)))
  (evil-mode 1)
  ;; Evil key bindings
  (with-eval-after-load 'evil-maps
	;; normal mode
	(define-key evil-normal-state-map (kbd "/")         'swiper)
	(define-key evil-normal-state-map (kbd"<tab>")      'centaur-tabs-forward-tab)
	(define-key evil-normal-state-map (kbd"<backtab>")  'centaur-tabs-backward-tab)
	(define-key evil-normal-state-map (kbd"R")          'recompile)
	(define-key evil-normal-state-map (kbd"M-q")		'centaur-tabs--kill-this-buffer-dont-ask)
	(define-key evil-normal-state-map (kbd"C-h")		'evil-window-left)
	(define-key evil-normal-state-map (kbd"C-j") 		'evil-window-down)
	(define-key evil-normal-state-map (kbd"C-k")		'evil-window-up)
	(define-key evil-normal-state-map (kbd"C-l")		'evil-window-right)
	(define-key evil-normal-state-map (kbd"C--")        'text-scale-decrease)
	(define-key evil-normal-state-map (kbd"C-=")        'text-scale-increase)
	(define-key evil-normal-state-map (kbd"C-n")        'evil-multiedit-match-and-next)
	(define-key evil-normal-state-map (kbd"C-D")        'evil-multiedit-match-and-prev)
	;; visual mode
	(define-key evil-visual-state-map (kbd"gc")          'xah-comment-dwim)
	(define-key evil-visual-state-map (kbd"C-n")          'evil-multiedit-match-and-next)
	(define-key evil-visual-state-map (kbd"C-D")          'evil-multiedit-match-and-prev)
	;; insert mode
	(define-key evil-insert-state-map (kbd"C-SPC")       'company-dabbrev-code)
	;; (define-key evil-insert-state-map (kbd"C-SPC")         'completion-at-point)

	(define-key evil-normal-state-map (kbd"fm")           'format-all-buffer)
	(define-key evil-normal-state-map (kbd"C-h") 'evil-window-left)
	(define-key evil-normal-state-map (kbd"C-j") 'evil-window-down)
	(define-key evil-normal-state-map (kbd"C-k") 'evil-window-up)
	(define-key evil-normal-state-map (kbd"C-l") 'evil-window-right)
	))

(defmacro evil-map (state key seq)
  "Map for a given STATE a KEY to a sequence SEQ of keys.
Can handle recursive definition only if KEY is the first key of SEQ.
Example: (evil-map visual \"<\" \"<gv\")"
  (let ((map (intern (format "evil-%S-state-map" state))))
    `(define-key ,map ,key
				 (lambda ()
				   (interactive)
				   ,(if (string-equal key (substring seq 0 1))
						`(progn
						   (call-interactively ',(lookup-key evil-normal-state-map key))
						   (execute-kbd-macro ,(substring seq 1)))
					  (execute-kbd-macro ,seq))))))

;; Keep the region active when shifting
(evil-map visual "<" "<gv")
(evil-map visual ">" ">gv")

(use-package evil-collection
  :after evil
  :ensure t
  :config
  (evil-collection-init))

(use-package evil-multiedit
  :after evil
  :ensure t
  :config
  (setq evil-multiedit-dwim-motion-keys nil))

(use-package format-all
  :config
  (add-hook 'format-all-mode-hook 'format-all-ensure-formatter)
  )

(use-package all-the-icons
  :if (display-graphic-p))

;; File explorer
(use-package neotree
  :ensure t
  :bind ("<f2>" . 'neotree-toggle)
  :init
  ;; slow rendering
  (setq inhibit-compacting-font-caches t)

  ;; set icons theme
  (setq neo-theme (if (display-graphic-p) 'icons 'arrow))

  ;; Every time when the neotree window is opened, let it find current file and jump to node
  (setq neo-smart-open t)

  ;; When running ‘projectile-switch-project’ (C-c p p), ‘neotree’ will change root automatically
  (setq projectile-switch-project-action 'neotree-projectile-action)

  ;; show hidden files
  (setq-default neo-show-hidden-files t)
  )

;; Tab bar
;; (use-package centaur-tabs
;;   :ensure t
;;   :init (centaur-tabs-mode t)
;;   :config
;;   (setq   centaur-tabs-set-icons t
;; 		  centaur-tabs-height 10
;; 		  centaur-tabs-set-bar 'under)
;;   :hook
;;   (dired-mode . centaur-tabs-local-mode)
;;   )

(setq x-underline-at-descent-line t)

;; Search
(use-package swiper
  :ensure t
  :config
  (ivy-mode)

  (setq swiper-isearch-highlight-delay 0)
  (setq ivy-use-virtual-buffers t)
  (setq enable-recursive-minibuffers t)
  (setq ivy-height-alist
		'((t
		   lambda (_caller)
		   (/ (frame-height) 4))))
  )

(use-package rust-mode
  :ensure t)
