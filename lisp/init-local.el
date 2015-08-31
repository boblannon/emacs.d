;; Disable the splash screen (to enable, replace replace the t with 0)
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)

(setq split-height-threshold nil)
(setq split-width-threshold 160)

;; disable backup files
(setq make-backup-files nil) 

(global-set-key (kbd "C-x <up>") 'windmove-up)
(global-set-key (kbd "C-x <down>") 'windmove-down)
(global-set-key (kbd "C-x <right>") 'windmove-right)
(global-set-key (kbd "C-x <left>") 'windmove-left)

(global-visual-line-mode t)

(setq gnus-use-cache t)
   
; (transient-mark-mode 1)  ; Now on by default: makes the region act quite like the text "highlight" in many apps.
; (setq shift-select-mode t) ; Now on by default: allows shifted cursor-keys to control the region.
(setq mouse-drag-copy-region nil)  ; stops selection with a mouse being immediately injected to the kill ring
(setq x-select-enable-primary nil)  ; stops killing/yanking interacting with primary X11 selection
(setq x-select-enable-clipboard t)  ; makes killing/yanking interact with clipboard X11 selection
 
(global-hl-line-mode nil)
(global-linum-mode nil)

(custom-set-variables

  '(org-agenda-prefix-format
     (quote
      ((agenda . "  %?-12t% s")
       (timeline . "  % s")
       (todo . "%-20.20b")
       (tags . " %i %-12:c")
       (search . " %i %-12:c"))))
   
  '(org-agenda-show-all-dates t)
  '(org-agenda-skip-scheduled-if-done t)
  '(org-agenda-span 6)
  '(org-agenda-todo-list-sublevels nil)
  '(org-enforce-todo-dependencies t)
  '(org-export-with-section-numbers nil)
  '(org-hierarchical-todo-statistics nil)
  '(org-log-into-drawer t)
  '(org-loop-over-headlines-in-active-region t)
   
  '(org-stuck-projects
     (quote
      ("+PROJECT/-DONE-ICEBOX-CANCELED"
       ("TODO" "NEXT" "ACTIVE")
       nil "")))
  '(org-tags-match-list-sublevels nil)
  '(org-use-tag-inheritance nil)
  )

(provide 'init-local)
