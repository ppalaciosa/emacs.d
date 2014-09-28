;; to view HTML content
;; You need install the command line brower 'w3m' and Emacs plugin 'w3m'
(setq mm-text-html-renderer 'w3m)

;; Tree view for groups.  I like the organisational feel this has.
(add-hook 'gnus-group-mode-hook 'gnus-topic-mode)

(setq user-mail-address "pedro_gpa@hotmail.com")
(setq user-full-name "Pedro Palacios")

(setq gnus-select-method
      '(nnimap "outlook"
               (nnimap-address "imap-mail.outlook.com")
               (nnimap-server-port 993)
               (nnimap-stream ssl)))

(setq message-send-mail-function 'smtpmail-send-it
      smtpmail-starttls-credentials '(("smtp-mail.outlook.com" 587 nil nil))
      smtpmail-auth-credentials '(("smtp-mail.outlook.com" 587
                                   "pedro_gpa@hotmail.com" nil))
      smtpmail-default-smtp-server "smtp-mail.outlook.com"
      smtpmail-smtp-server "smtp-mail.outlook.com"
      smtpmail-smtp-service 587
      nnheader-file-name-translation-alist '((?[ . ?_) (?] . ?_))
      gnus-ignored-newsgroups "^to\\.\\|^[0-9. ]+\\( \\|$\\)\\|^[\"]\"[#'()]")

(provide 'setup-gnus)
