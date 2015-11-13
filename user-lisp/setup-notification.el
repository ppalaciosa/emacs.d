;; http://emacs-fu.blogspot.com/2009/11/showing-pop-ups.html
;; https://xdev.me/article/System_notifications_from_Emacs,_Ubuntu


;; Set emacs.png path
(setq emacs-icon-path (expand-file-name "etc/images/emacs.png" user-emacs-directory) )

(defun djcb-popup (title msg &optional sound icon)
  "Show a popup if we're on X, or echo it otherwise; TITLE is the title
of the message, MSG is the context. Optionally, you can provide an ICON and
a sound to be played"

  (interactive)
  (when sound (shell-command
               (concat "canberra-gtk-play --file=" sound " 2> /dev/null")))
  (if (eq window-system 'x)
      (shell-command (concat "notify-send " "-i "
                             (if icon icon emacs-icon-path)
                             " '" title "' '" msg "'"))
    ;; text only version

    (message (concat title ": " msg))))


;; Example, ubuntu 14.04
;; (djcb-popup "Warning" "The end is near"
;;             "/usr/share/sounds/freedesktop/stereo/bell.oga"
;;             emacs-icon-path)


(provide 'setup-notification)
