;;; i-custom.el --- custom vars -*- lexical-binding: t; -*-

;;; Commentary:

;; Custom stuff gets dumped here.

;;; Code:

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(sanityinc-tomorrow-bright))
 '(custom-safe-themes
   '("b11edd2e0f97a0a7d5e66a9b82091b44431401ac394478beb44389cf54e6db28"
     "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" default))
 '(fill-column 120)
 '(jiralib-url "https://issues.redhat.com/")
 '(markdown-asymmetric-header t)
 '(org-agenda-custom-commands
   '(("d" "DONE items" tags "+TODO=\"DONE\"" nil)
     ("3" "DONE in past 3 weeks" tags "+TODO=\"DONE\"+CLOSED>\"<-3w>\""
      ((org-agenda-cmp-user-defined (cmp-date-property "CLOSED")) (org-agenda-sorting-strategy '(user-defined-up))))
     ("n" "Agenda and all TODOs" ((agenda "" nil) (alltodo "" nil)) nil)))
 '(org-agenda-files '("~/.org-jira/DPP.org" "~/org/agenda-files.org"))
 '(org-bullets-bullet-list '("»" "®" "¤" "ø"))
 '(org-capture-templates
   '(("s" "DPP Standup/Scrum entry" entry (file+headline "~/Org/DPP-scrum.org" "Standup entries")
      "** %<%0m/%d/%Y>\12*** *%<%A> Plan (%<%0m/%d/%Y>):*\12*** *%<%A> Actual:*\12*** *Plan for %(format-time-string \"\\%A\" (org-time-string-to-time (org-read-date nil nil \"+1\"))):*\12\12")))
 '(org-default-notes-file "~/org/notes.org")
 '(org-directory "~/org/")
 '(org-export-backends '(ascii html icalendar latex md odt))
 '(org-jira-custom-jqls
   '((:jql "project = DPP AND issuetype = Request AND status = 'To Do' AND assignee = currentUser() ORDER BY created DESC"
           :limit 100 :filename "my-dpp-requests")))
 '(org-log-done 'time)
 '(org-refile-targets
   '((org-agenda-files :maxlevel . 3) ("~/org/notes.org" :maxlevel . 3)))
 '(org-src-fontify-natively t)
 '(org-todo-keyword-faces
   '(("TODO" :foreground "red" :weight bold) ("NEXT" :foreground "blue" :weight bold)
     ("DONE" :foreground "forest green" :weight bold) ("WAITING" :foreground "orange" :weight bold)
     ("SOMEDAY" :foreground "magenta" :weight bold)))
 '(org-todo-keywords '("TODO(t)" "NEXT(n)" "SOMEDAY(s)" "WAITING(w)" "DONE(d)"))
 '(package-archives
   '(("gnu" . "https://elpa.gnu.org/packages/") ("melpa" . "https://melpa.org/packages/")))
 '(package-selected-packages
   '(poly-ansible git-commit helm helm-core projectile wgrep terraform-mode iedit git-link powershell neotree request
                  org-jira color-theme-sanityinc-tomorrow yaml-mode which-key ruby-block org-bullets nyan-mode
                  markdown-toc magit htmlize helm-projectile git-gutter flycheck-pycheckers eruby-mode elpy ctags csv
                  ample-theme))
 '(sh-basic-offset 2))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :background "#000000" :foreground "#eaeaea" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight regular :height 110 :width normal :family "Cascadia Mono")))))
