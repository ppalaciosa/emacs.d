;;Para utilizar Jedi (o cualquier de las alternativas de
;; autocompletado) es necesario instalar un ambiente virtual
;; de python (virtualnv) en .python-environments y ejecutar
;; M-x jedi:install-server
;; jedi mostrara documentacion de los modulos instalados en el
;; ambiente virtual .python-enviroments

(add-hook 'python-mode-hook (lambda ()
                              (jedi:setup)
                              ;; Para evitar que  C-tab sea asignado a otra funcion
                              (define-key jedi-mode-map (kbd "<C-tab>") nil)
                              ))
(setq jedi:complete-on-dot t)
(setq jedi:environment-root
      (expand-file-name ".python-environments" user-emacs-directory))

(provide 'setup-python)

