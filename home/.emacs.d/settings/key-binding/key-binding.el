;;copy, cut, and undo
(global-set-key (kbd "C-c c") 'kill-ring-save) 	;;copy
(global-set-key (kbd "C-c x") 'kill-region) 	;;cut
(global-set-key (kbd "C-z") 'undo)
;;neotree
(global-set-key [f2] 'neotree-toggle)

				;;------------windows------------
;; Move between windows
(global-set-key (kbd "C-c <left>")  'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <up>")    'windmove-up)
(global-set-key (kbd "C-c <down>")  'windmove-down)

;; Resize windows
(global-set-key (kbd "C-s-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "C-s-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "C-s-<down>") 'shrink-window)
(global-set-key (kbd "C-s-<up>") 'enlarge-window)

;;delete windows
(global-set-key (kbd "C-q") 'delete-windows-on)
(global-set-key (kbd "C-Q") 'delete-other-windows)
;;----------------------------------------------------

;;comment code
(global-set-key (kbd "C-c /") 'xah-comment-dwim)

;;multiple cursors
(global-set-key (kbd "C-n") 'mc/mark-next-like-this)
(global-set-key (kbd "C-d") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
(global-set-key (kbd "C-`") 'multiple-cursors-mode)

;;company
(with-eval-after-load 'company
  (define-key company-active-map
              (kbd "<tab>")
              #'company-complete-common-or-cycle)
  (define-key company-active-map
              (kbd "<backtab>")
              (lambda ()
                (interactive)
                (company-complete-common-or-cycle +1))))

(with-eval-after-load 'company
  (define-key company-active-map
              (kbd "TAB")
              #'company-complete-common-or-cycle)
  (define-key company-active-map
              (kbd "<backtab>")
              (lambda ()
                (interactive)
                (company-complete-common-or-cycle -1))))

(global-set-key (kbd "C-,") #'company-indent-or-complete-common)

;;counsel
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> o") 'counsel-describe-symbol)
(global-set-key (kbd "<f1> l") 'counsel-find-library)
(global-set-key (kbd "<f5> i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "<f5> u") 'counsel-unicode-char)
(global-set-key (kbd "C-c g") 'counsel-git)
(global-set-key (kbd "C-c j") 'counsel-git-grep)
(global-set-key (kbd "C-c k") 'counsel-ag)
(global-set-key (kbd "C-x l") 'counsel-locate)
(global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
(define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)

;;new line
(global-set-key (kbd "C-o") 'end-of-line-and-indented-new-line)

(provide 'key-binding)
