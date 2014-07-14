;;Para utilizar Jedi (o cualquier de las alternativas de
;; autocompletado) es necesario instalar un ambiente virtual
;; de python (virtualnv) en .python-environments y ejecutar
;; M-x jedi:install-server

(add-hook 'python-mode-hook 'auto-complete-mode)
(add-hook 'python-mode-hook 'jedi:ac-setup)

(provide 'setup-python)
