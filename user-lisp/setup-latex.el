(require 'tex)
(require 'ac-math)

;; We are only using LaTeX and not TeX, Remember that if in the future you want to use TeX
;; you have to change this setting
(setq TeX-default-mode 'LaTeX-mode) ; Default mode for .tex files
(setq TeX-force-default-mode t) ; Force This mode Always, it is MANDATORY for my sake

(add-hook 'LaTeX-mode-hook 'turn-on-reftex ) ; Activar reftex con AucTeX
(setq reftex-plug-into-AUCTeX t) ; COnectar a AUC TeX con RefTeX

;; (setq LaTeX-command-style '(("" "%(PDF)%(latex) -file-line-error %S%(PDFout)")))

;; Set Up flyspell-babel and ispell-multi
    (autoload 'flyspell-babel-setup "flyspell-babel")
    (add-hook 'latex-mode-hook 'flyspell-babel-setup)

;; AutoSaving and parsing for some other Tex Packages
(setq TeX-auto-save t)
(setq TeX-parse-self t)

;; This Makes using include or input easier
(setq-default TeX-master nil)

(setq TeX-PDF-mode t)

;; Enabling Autocomplete by ac-math, uses auto-complete default by emacs
(add-to-list 'ac-modes 'LaTeX-mode) ; make auto-complete aware of `latex-mode`

(defun ac-latex-mode-setup () ; add ac-sources to default ac-sources
  (setq ac-sources
     (append '(ac-source-math-unicode ac-source-math-latex ac-source-latex-commands)
               ac-sources)))

(add-hook 'LaTeX-mode-hook 'ac-latex-mode-setup)
(add-hook 'LaTeX-mode-hook (lambda () (set-input-method "latin-1-prefix")))
(add-hook 'LaTeX-mode-hook (lambda () (flyspell-mode 1)))
(add-hook 'LaTeX-mode-hook (lambda () (ispell-change-dictionary "castellano")  ))
(add-hook 'LaTeX-mode-hook (lambda () (TeX-PDF-mode t)))
(provide 'setup-latex)
