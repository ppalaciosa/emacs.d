(setq rtmv:lang 'ruby)
;; Set path to dependencies
(setq realtime-markdown-viewer-dir
      (expand-file-name "emacs-realtime-markdown-viewer" site-lisp-dir))
      
;; Set up load path
(add-to-list 'load-path realtime-markdown-viewer-dir)

(require 'realtime-markdown-viewer)
(provide 'setup-realtime-markdown-viewer)
