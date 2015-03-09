;; This file Contains the macros to perform dev-analysis templates and log parsing etc 



;; global configuration for the the template 
(setq new-buffer-name "dev_analysis")
(setq name-seperator "_")
(setq buffer-ext  ".org")
(setq buffer-counter 0)
;; function to generate the documentation template in org-mode 
(defun dev-analysis-template()
  "sets the buffer name and then inserts the template."
  (interactive)
  (setq buffer-counter (+ buffer-counter 1))
  ; Main logic to determine the buffer 
  (let (buffer-name case-number)
    (setq case-number 
	  (read-string "Case Number:"))
    
    (when (string= case-number "") (+ buffer-counter 1) 
	  (setq case-number 
		(number-to-string buffer-counter)))

    (setq buffer-name 
	  (read-string "new file name (optional):" new-buffer-name))
    
    (setq buffer-name 
	  (concat buffer-name 
		  name-seperator  
		  case-number 
		  name-seperator 
		  buffer-ext))

    (switch-to-buffer buffer-name)
  )
  
  (insert-dev-template)
)


(defun insert-dev-template ()
  "Inserts the dev-analysis template"
  (interactive)
  (org-mode)
  (org-insert-export-options-template)
  (insert "* SUMMARY\n\n")
  (org-clock-in)
  (setq summary-pos (point))
  (insert "\n\n")
  (insert "* DEV-ANALYSIS RECOMMENDATIONS\n\n")
  (insert "* DETAILED ANALYSIS\n\n")
  (insert "#+BEGIN_VERSE\n\n")
  (insert "<INTERNAL>\n\n")
  (insert "</INTERNAL>\n\n")
  (insert "#+END_VERSE")
  (goto-char summary-pos)
)

















