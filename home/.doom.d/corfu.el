;;; corfu.el -*- lexical-binding: t; -*-

;; https://kristofferbalintona.me/posts/202202270056/#kind-icon
(use-package corfu
  :config
  (map! (:map corfu-map
              "TAB"           #'corfu-next
              "S-TAB"         #'corfu-previous
              [ tab ]         #'corfu-next
              [ backtab ]     #'corfu-previous
              ))
  :init
  (setq corfu-auto t
        corfu-cycle t
        tab-always-indent 'complete
        completion-cycle-threshold nil      ; Always show candidates in menu
        corfu-quit-no-match t
        corfu-auto-prefix 1
        corfu-auto-delay 0.0
        corfu-min-width 80
        corfu-max-width  80    ; Always have the same width
        corfu-count 14
        corfu-scroll-margin 1
        corfu-quit-at-boundary 'separator)
  (global-corfu-mode)
  )

(use-package cape
  :init
  (add-to-list 'completion-at-point-functions #'cape-dabbrev)
  (add-to-list 'completion-at-point-functions #'cape-file)
  :config
  (defun my-cape-dabbrev-accept-all ()
    (cape-wrap-accept-all #'cape-dabbrev))
  (add-to-list 'completion-at-point-functions #'my-cape-dabbrev-accept-all)
  )

(after! lsp
  ;; Optionally use the `orderless' completion style.
  (use-package orderless
    :init
    ;; Configure a custom style dispatcher (see the Consult wiki)
    ;; (setq orderless-style-dispatchers '(+orderless-dispatch)
    ;;       orderless-component-separator #'orderless-escapable-split-on-space)
    (setq completion-styles '(orderless basic)
          completion-category-defaults nil
          completion-category-overrides '((file (styles . (partial-completion))))))

  (setq lsp-completion-provider :none)
  (defun corfu-lsp-setup ()
    (setq-local completion-styles '(orderless)
                completion-category-defaults nil))
  (add-hook 'lsp-mode-hook #'corfu-lsp-setup)
  )

(use-package pdf-tools)
