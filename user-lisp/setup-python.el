;;Para utilizar Jedi (o cualquier de las alternativas de
;; autocompletado) es necesario instalar un ambiente virtual
;; de python (virtualnv) en .python-environments y ejecutar
;; M-x jedi:install-server

(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)
(setq jedi:environment-root
      (expand-file-name ".python-environments" user-emacs-directory))

(provide 'setup-python)

