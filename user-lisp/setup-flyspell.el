;; In Ubuntu remember to add these fucking shits to the directory where .dic and .aff are stored in the output of the hunspell -D
;; in my case it's in /usr/share/hunspell

(setq ispell-program-name "hunspell")
(setq ispell-dictionary "english")

(let ((langs '( "castellano" "english")))
  (setq lang-ring (make-ring (length langs)))
  (dolist (elem langs) (ring-insert lang-ring elem)))

(defun cycle-ispell-languages ()
  (interactive)
  (let ((lang (ring-ref lang-ring -1)))
    (ring-insert lang-ring lang)
    (ispell-change-dictionary lang)))

(dolist (hook '(text-mode-hook))
  (add-hook hook (lambda () (flyspell-mode 1))))
(dolist (hook '(change-log-mode-hook log-edit-mode-hook))
  (add-hook hook (lambda () (flyspell-mode -1))))

(setq speck-hunspell-library-directory (concat user-emacs-directory "dict"))

(add-hook 'prog-mode-hook 
          (lambda ()
            (flyspell-prog-mode)))

(provide 'setup-flyspell)
