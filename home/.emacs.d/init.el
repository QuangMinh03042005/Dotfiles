(load "~/.emacs.d/pkg.el")
(load "~/.emacs.d/theme.el")

;; Improve the performance of rendering long lines.
(setq-default bidi-display-reordering nil)

(setq-default shell-file-name "/bin/zsh")
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

(setq use-file-dialog nil)
(setq use-dialog-box nil)


;; Display startup message
(setq initial-scratch-message "Hello world!")

;; Disable splash screen and startup message
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)

;; start up fullscreen
;; (add-to-list 'initial-frame-alist '(fullscreen . maximized))

(edt-set-scroll-margins "1%" "1%")

;; Stop creating ~ files
(setq make-backup-files nil)

;; Set font
;; (set-face-attribute 'default nil
;; 					:family "Source Code Pro"
;; 					:weight 'regular
;; 					:height 210)

;; ;; Set the fixed pitch face
;; (set-face-attribute 'fixed-pitch nil
;;                     :font "Source Code Pro"
;;                     :weight 'regular
;;                     :height 180)

;; ;; Set the variable pitch face
;; (set-face-attribute 'variable-pitch nil
;;                     :font "Source Code Pro"
;;                     :weight 'regular
;;                     :height 160)

(let ((faces '(mode-line
               mode-line-buffer-id
               mode-line-emphasis
               mode-line-highlight
               mode-line-inactive)))
  (mapc
   (lambda (face) (set-face-attribute face nil  :font "Monaco-21"))
   faces))

(set-face-attribute 'default nil :font "Monaco-21")
(set-face-attribute 'mode-line nil  :height 150)
;; (set-face-attribute 'mode-line nil :font "Source Code Pro-10")
;; (set-face-attribute 'mode-line-buffer-id nil :font "Source Code Pro-10")
;; (set-face-attribute 'mode-line-buffer-id nil :font "Source Code Pro-10")

;; Scroll
										; (setq scroll-step 1
										;       scroll-preserve-screen-position t
										;       scroll-margin 10
										;       scroll-conservatively 10
										;       maximum-scroll-margin 0.0
										;       scroll-up-aggressively 0.0
										;       scroll-down-aggressively 0.0)

;;; Fix scrolling
(setq mouse-wheel-progressive-speed nil)
(setq scroll-margin 4)
(setq scroll-conservatively 100000)
(setq scroll-preserve-screen-position 'always)


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

 make-backup-files nil
 backup-inhibited nil
 create-lockfiles nil
 native-comp-async-report-warnings-errors 'silent
 compile-command ""

 )

;; Don't Lock Files
(setq-default create-lockfiles nil)

;; Better Compilation
(setq-default compilation-always-kill t) ; kill compilation process before starting another

(setq-default compilation-ask-about-save nil) ; save all buffers on `compile'

(setq-default compilation-scroll-output t)

;; display line number
(setq display-line-numbers-type 'relative)

(setq ;;scroll-margin 4
 evil-vsplit-window-right t
 evil-split-window-below t
 yas-triggers-in-field t
 )

;; Disable annoying ring-bell when backspace key is pressed in certain situations
(setq ring-bell-function 'ignore)
;; (setq-default cursor-type '(hbar . 6))

;; Set language environment to UTF-8
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)

;; Display line number when programming
(global-display-line-numbers-mode 1)
(setq display-line-numbers-type 'relative)

;; Disable confirm
(setq confirm-kill-emacs nil
      confirm-kill-processes nil
      confirm-nonexistent-file-or-buffer nil
      )
(set-buffer-modified-p nil)


;; Word wrap
(global-visual-line-mode t)

;; Display paren (highlight matching brackets)
(show-paren-mode 1)
(column-number-mode 1)
(setq show-paren-delay 0)

;; Turn off menubar, toolbar, scollbar
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

(set-fringe-style -1)
(tooltip-mode -1)

;; Set tab-width
(setq-default indent-tab-mode nil)
(setq-default tab-width 4) ; or any other preferred value
(setq indent-line-function 'insert-tab)
(defvaralias 'c-basic-offset 'tab-width)
(defvaralias 'cperl-indent-level 'tab-width)

;;disable cursor blinking
(blink-cursor-mode 0)
(setq visible-cursor nil)

;; Autopair
(add-to-list 'load-path "~/.emacs.d/settings/")
(require 'autopair)
(autopair-global-mode) ;; enable autopair in all buffers

;; GCMH - the Garbage Collector Magic Hack
(require 'gcmh)
(gcmh-mode 1)
(setq gc-cons-threshold (* 100 1024 1024)
      read-process-output-max (* 1024 1024))

;;comment code
(defun xah-comment-dwim ()
  "Like `comment-dwim', but toggle comment if cursor is not at end of line."
  (interactive)
  (if (region-active-p)
      (comment-dwim nil)
    (let ((-lbp (line-beginning-position))
          (-lep (line-end-position)))
      (if (eq -lbp -lep)
          (progn
            (comment-dwim nil))
        (if (eq (point) -lep)
            (progn
              (comment-dwim nil))
          (progn
            (comment-or-uncomment-region -lbp -lep)
            (forward-line )))))))

;; compilation mode
;; Convert shell escapes to  color
(add-hook 'compilation-filter-hook
          (lambda () (ansi-color-apply-on-region (point-min) (point-max))))


(add-to-list 'display-buffer-alist '("*Async Shell Command*" . (display-buffer-no-window . nil)) )
(defun run-shell ()
  (interactive)
  (let ((shell-file-name "cmd.exe"))
	(shell "*cmd.exe*")))



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(eglot swiper centaur-tabs neotree all-the-icons format-all evil-multiedit evil-collection evil undo-fu smex cape corfu company use-package))
 '(warning-suppress-log-types '((iedit) (comp) (iedit) (iedit)))
 '(warning-suppress-types '((comp) (iedit) (iedit))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
