;;Un bug en Helm ya no permite ingresar la contraseña para
;;leer un archivo gpg utilizando el mini-buffer

;; Do not use gpg agent when runing in terminal
;;(defadvice epg--start (around advice-epg-disable-agent activate)
;;  (let ((agent (getenv "GPG_AGENT_INFO")))
;;    (setenv "GPG_AGENT_INFO" nil)
;;    ad-do-it
;;    (setenv "GPG_AGENT_INFO" agent)))

;;(provide 'setup-pgp)
