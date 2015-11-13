(require 'dired-details)
(setq-default dired-details-hidden-string "")
(dired-details-install)
(setq dired-listing-switches "-alGh")

;; Extend dired.
(require 'dired-x)
(setq-default dired-omit-files-p t)

(provide 'setup-dired)
