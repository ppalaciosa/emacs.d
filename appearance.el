(setq visible-bell t
      font-lock-maximum-decoration t
      color-theme-is-global t
      truncate-partial-width-windows nil)

;; Highlight current line
(global-hl-line-mode 1)

;; Hide menu bar
(menu-bar-mode 1)

;; Hide scroll bar
(scroll-bar-mode -1)

;; Set custom theme path
(setq custom-theme-directory (concat user-emacs-directory "themes"))

(dolist
    (path (directory-files custom-theme-directory t "\\w+"))
  (when (file-directory-p path)
    (add-to-list 'custom-theme-load-path path)))

;; (when (window-system)
;;   (set-frame-font "Monaco")
;;   (set-face-attribute 'default nil :family "Monaco" :height 110 :weight 'bold)
 
;; (set-face-font 'default "Monaco"))
 (load-theme 'zenburn)

;; Don't defer screen updates when performing operations
(setq redisplay-dont-pause t)

(when window-system
  (setq frame-title-format '(buffer-file-name "%f" ("%b")))
  (tooltip-mode 1)
  (blink-cursor-mode -1))

;; epic red
;;(set-cursor-color "firebrick")
(setq initial-scratch-message "")

(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)



;;Resaltar parentesis y que ocurra inmediatamente
;;(setq show-paren-delay 0)
;;(show-paren-mode 1)

;;Tamano de fuente
(set-face-attribute 'default nil :height 120)

;;Mostrar numero de linea a la izquierda
(global-linum-mode 1)
;;El tamaño de los numeros de linea no varie al cambiar el tamaño
(set-face-attribute 'linum nil :height 110)

(provide 'appearance)
