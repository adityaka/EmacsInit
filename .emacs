
;; Got from web for usring emas on W32 systes
;; alternatively we can use
;; 1. M-x w32-Menu-bar-open command
;; 2. hit a <- (back arrow)
;; 3. press space and then x 
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

;;setup package manager with melpa archives
;;refresh packages 
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

;;setup theme manager
(require 'color-theme)
(color-theme-initialize)
(color-theme-clarity)

;; TODO : need to perform if - else checks 

