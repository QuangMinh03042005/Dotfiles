(unpin! t)
; (unpin! :completion :lang :tools :ui)


(package! builtin-package :disable t)
(package! hl-line :disable t)
;; (package! rainbow-delimiters :disable t)

(package! smex :recipe (:host github :repo "nonsequitur/smex"))

(package! zenburn-theme)
(package! gruber-darker-theme)
(package! atom-one-dark-theme)
(package! standard-themes)
(package! jetbrains-darcula-theme)
;; (package! solarized-theme :recipe (:host github :repo "sellout/emacs-color-theme-solarized"))
(package! solarized-theme)
(package! wildcharm-theme)

(package! hybrid-emacs :recipe (:host github :repo "evanbergeron/hybrid-emacs"))

(package! all-the-icons-ibuffer)

;;(package! rust-mode)

;; (package! corfu)
;; (package! orderless)
;; (package! cape)

(package! company-posframe :recipe (:host github :repo "tumashu/company-posframe"))

;;(package! eldoc-box)
