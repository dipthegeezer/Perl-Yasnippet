;;;move function somewhere else
(defgroup perl-yasnippet nil
  "Yet Another Snippet extension for perl stuff"
  :group 'editing)

(defun perl-guess-package (&optional file)
  ( let* ( (file (or file buffer-file-name) )
         ( file (replace-regexp-in-string ".*/\\(?:lib\\|t\\)/" "" file) )
         (file (replace-regexp-in-string "\\.pm$" "" file) )
         (file (replace-regexp-in-string "/" "::" file) ) )
    file ) )

(defun find-attribute-name()
  ( save-excursion 
    ( re-search-backward "has .+ =>" )
     (let* ( (data (match-string-no-properties 0 ))
             (data (replace-regexp-in-string "^has " "" data) )
             (data (replace-regexp-in-string " =>$" "" data) )
             )
           data ) ) )

(provide 'perl-yasnippet)

