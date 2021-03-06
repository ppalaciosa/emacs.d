;;Odio el yank con la rueda del mouse
(global-unset-key [mouse-2])

;;Navegacion con lineas logicas (visual-line mode)
;; (global-set-key (kbd "C-n") 'next-logical-line)
;; (global-set-key (kbd "C-p") 'previous-logical-line)
;; (global-set-key (kbd "C-a") 'beginning-of-visual-line)
;; (global-set-key (kbd "C-e") 'end-of-visual-line)

;;Caracteres latinos
;; NOTA: Debe activarse la tecla componer. <menu> -> <Multi_key>
(global-set-key (kbd "<Multi_key> ~ n")(kbd "ñ"))
(global-set-key (kbd "<Multi_key> ~ N") (kbd "Ñ"))
(global-set-key (kbd "<Multi_key> ' a") (kbd "á"))
(global-set-key (kbd "<Multi_key> ' A") (kbd "Á"))
(global-set-key (kbd "<Multi_key> ' e") (kbd "é"))
(global-set-key (kbd "<Multi_key> ' E") (kbd "É"))
(global-set-key (kbd "<Multi_key> ' i") (kbd "í"))
(global-set-key (kbd "<Multi_key> ' I") (kbd "Í")) 
(global-set-key (kbd "<Multi_key> ' o") (kbd "ó"))
(global-set-key (kbd "<Multi_key> ' O") (kbd "Ó"))
(global-set-key (kbd "<Multi_key> ' u") (kbd "ú"))
(global-set-key (kbd "<Multi_key> ' U") (kbd "Ú"))
(global-set-key (kbd "<Multi_key> ?") (kbd "¿"))
(global-set-key (kbd "<Multi_key> !") (kbd "¡"))

;; helm
(global-set-key (kbd "C-c o") 'helm-overlord)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "<menu>") 'helm-M-x)
;;(global-set-key (kbd "C-<SPC>") 'helm-M-x)
;;(global-set-key (kbd "C-§") 'helm-yas-complete)

;; Org
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

;; decent navigation like a good citizen
(global-set-key (kbd "<C-tab>") 'persp-cycle-next)
(global-set-key (kbd "<C-S-tab>") 'persp-cycle-prev)

;; dash
(global-set-key "\C-cd" 'dash-at-point)
(global-set-key "\C-ce" 'dash-at-point-with-docset)

;; other goodies
(global-set-key (kbd "C-x C-y") 'kill-ring-ido)
(global-set-key (kbd "C-'") 'multi-term-dedicated-toggle)
(global-set-key (kbd "C-c g") 'magit-status)
(global-set-key (kbd "C-c s") 'gist-region-or-buffer-private)
(global-set-key (kbd "C-\\") 'er/expand-region)

;; prevent madness
(global-set-key (kbd "C-x 2") (lambda () (interactive)(split-window-vertically) (other-window 1)))
(global-set-key (kbd "C-x 3") (lambda () (interactive)(split-window-horizontally) (other-window 1)))

;; smartparens
(define-key sp-keymap (kbd "C-M-f") 'sp-forward-sexp)
(define-key sp-keymap (kbd "C-M-b") 'sp-backward-sexp)

(define-key sp-keymap (kbd "C-M-d") 'sp-down-sexp)
(define-key sp-keymap (kbd "C-M-a") 'sp-backward-down-sexp)

(define-key sp-keymap (kbd "C-S-a") 'sp-beginning-of-sexp)
(define-key sp-keymap (kbd "C-S-d") 'sp-end-of-sexp)

(define-key sp-keymap (kbd "C-M-e") 'sp-up-sexp)
(define-key emacs-lisp-mode-map (kbd ")") 'sp-up-sexp)
(define-key sp-keymap (kbd "C-M-u") 'sp-backward-up-sexp)
(define-key sp-keymap (kbd "C-M-t") 'sp-transpose-sexp)

(define-key sp-keymap (kbd "C-M-n") 'sp-next-sexp)
(define-key sp-keymap (kbd "C-M-p") 'sp-previous-sexp)

(define-key sp-keymap (kbd "C-M-k") 'sp-kill-sexp)
(define-key sp-keymap (kbd "C-M-w") 'sp-copy-sexp)

(define-key sp-keymap (kbd "M-<delete>") 'sp-unwrap-sexp)
(define-key sp-keymap (kbd "M-<backspace>") 'sp-backward-unwrap-sexp)

(define-key sp-keymap (kbd "C-<right>") 'sp-forward-slurp-sexp)
(define-key sp-keymap (kbd "C-<left>") 'sp-forward-barf-sexp)
;;Conflict with unity change desktop
;;(define-key sp-keymap (kbd "C-M-<left>") 'sp-backward-slurp-sexp)
;;(define-key sp-keymap (kbd "C-M-<right>") 'sp-backward-barf-sexp)

(define-key sp-keymap (kbd "M-D") 'sp-splice-sexp)
(define-key sp-keymap (kbd "C-M-<delete>") 'sp-splice-sexp-killing-forward)
(define-key sp-keymap (kbd "C-M-<backspace>") 'sp-splice-sexp-killing-backward)
(define-key sp-keymap (kbd "C-S-<backspace>") 'sp-splice-sexp-killing-around)

(define-key sp-keymap (kbd "C-]") 'sp-select-next-thing-exchange)
(define-key sp-keymap (kbd "C-<left_bracket>") 'sp-select-previous-thing)
(define-key sp-keymap (kbd "C-M-]") 'sp-select-next-thing)

(define-key sp-keymap (kbd "M-F") 'sp-forward-symbol)
(define-key sp-keymap (kbd "M-B") 'sp-backward-symbol)

(define-key sp-keymap (kbd "H-t") 'sp-prefix-tag-object)
(define-key sp-keymap (kbd "H-p") 'sp-prefix-pair-object)
(define-key sp-keymap (kbd "H-s c") 'sp-convolute-sexp)
(define-key sp-keymap (kbd "H-s a") 'sp-absorb-sexp)
(define-key sp-keymap (kbd "H-s e") 'sp-emit-sexp)
(define-key sp-keymap (kbd "H-s p") 'sp-add-to-previous-sexp)
(define-key sp-keymap (kbd "H-s n") 'sp-add-to-next-sexp)
(define-key sp-keymap (kbd "H-s j") 'sp-join-sexp)
(define-key sp-keymap (kbd "H-s s") 'sp-split-sexp)

;; use windmove to navigate between windows easily
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

(provide 'key-bindings)
