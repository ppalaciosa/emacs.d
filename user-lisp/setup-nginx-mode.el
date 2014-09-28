(require 'nginx-mode)

(add-to-list 'auto-mode-alist '("/etc/nginx/.*" . nginx-mode))

(provide 'nginx-mode)
