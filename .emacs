;; Disable Toolbar mode 
(tool-bar-mode -1)

;;setup package manager 
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

;;setup theme manager
(require 'color-theme)
(color-theme-initialize)
(color-theme-clarity)


