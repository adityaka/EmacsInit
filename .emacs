 (defun maximize-frame ()
  "Maximizes the active frame in Windows"
  (interactive)
  ;; Send a `WM_SYSCOMMAND' message to the active frame with the
  ;; `SC_MAXIMIZE' parameter.
  (when (eq system-type 'windows-nt)
    (w32-send-sys-command 61488)))
(add-hook 'window-setup-hook 'maximize-frame t)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

;; Disable Toolbar mode 
(tool-bar-mode -1)

;;setup package manager 
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)


;;Load the modules 
;(load "csharp-mode.el")
;(load "subdirs.el")
;(load "color-theme.el")
;;Set the color theme
(when (require 'color-theme nil 'noerror)
  (color-theme-initialize)
  (color-theme-clarity)
)

;;change default directory 
(defun change-default-directory ()
 "This function changes the default directory to the user's profile"
 (interactive)
 (if (eq system-type 'windows-nt)
   (cd '"c:/users/addy")
   (cd '"~/")
 )

)

(change-default-directory)



