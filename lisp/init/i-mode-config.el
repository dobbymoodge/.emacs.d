;;; i-mode-config.el --- mode configs -*- lexical-binding: t; -*-

;;; Commentary:

;; Configs for modes and hooks.

;;; Code:

;; set up modes
;; major modes
(add-to-list 'auto-mode-alist '("\\.qml\\'" . javascript-mode))
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . javascript-mode))
(setq-default indent-tabs-mode nil
              major-mode 'text-mode)

;; Enable which-key-mode https://github.com/justbur/emacs-which-key
(require 'which-key)
(which-key-mode)

;; elpy
;; (elpy-enable)

;; --__--__--__--__   ________
;; --__--__--__--__  |     |\_L/|
;; --__--__--__--__"\     ( =^_^=)
;;                   `m-.---m-  m
(require 'nyan-mode)
(nyan-mode 1)

;; helm
(require 'helm)
;; (require 'helm-config)
(helm-mode 1)
;; (when (executable-find "curl")
;;   (setq helm-google-suggest-use-curl-p t))

(setq helm-split-window-in-side-p t
      helm-move-to-line-cycle-in-source t
      helm-ff-file-name-history-use-recentf t
      helm-buffers-fuzzy-matching t
      helm-recentf-fuzzy-matching t
      helm-M-x-fuzzy-match t)

;; coffee-mode
(setq coffee-tab-width 2)

;; make directories on save
(add-hook 'before-save-hook
          (lambda ()
            (when buffer-file-name
              (let ((dir (file-name-directory buffer-file-name)))
                (when (and (not (file-exists-p dir))
                           (y-or-n-p (format "Directory %s does not exist. Create it?" dir)))
                  (make-directory dir t))))))

;; web-mode
;; SAMER: Lazy load web-mode?
;; (require 'web-mode)
;; (add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
;; (add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
;; (add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
;; (add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
;; (add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
;; (add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
;; (add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
;; (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
;; (add-to-list 'auto-mode-alist '("\\.jinja?\\'" . web-mode))
;; (add-to-list 'web-mode-engine-file-regexps '("django" . "\\.jinja.html?\\'"))
;; (defun my-web-mode-hook ()
;;   "Hooks for web-mode"
;;   (setq web-mode-markup-indent-offset 2)
;;   (setq web-mode-css-indent-offset 2)
;;   (setq web-mode-code-indent-offset 2)
;; )
;; mail

;; not working
;; (setq send-mail-function    'smtpmail-send-it
;;       smtpmail-smtp-server  "smtp.mailbox.org"
;;       smtpmail-stream-type  'starttls
;;       smtpmail-smtp-service 587)

;; nm (nevermore email client)
;; (require 'nm-company)

;; fill
;;(setq fill-column 80)
;; The original value is "\f\\|[ \t]*$", so we add the bullets (-), (+), and (*).
;; There is no need for "^" as the regexp is matched at the beginning of line.
;; TODO: get this to work for comments.
;;(setq paragraph-start "\f\\|[ \t]*$\\|[ \t]*[-+*] ")

;; tasklist


;; TODO: enable this & make it global.
;; (use-hard-newlines 1 'never)

;; shell-mode
;; TODO: ask emacs-devel about this.
(add-to-list 'display-buffer-alist '(".*shell.*" . ((display-buffer-same-window) . nil)))

;; whitespace
(setq-default indicate-empty-lines t)
(set-face-attribute 'trailing-whitespace nil
                      :foreground 'unspecified
                      :inverse-video 'unspecified
                      :slant 'unspecified
                      :weight 'unspecified
                      :background "grey")

;; god-mode
;; (require 'god-mode)
;; (defun my-update-cursor ()
;;   (setq cursor-type (if (or god-local-mode buffer-read-only)
;;                         'box
;;                       'bar)))

;; (add-hook 'god-mode-enabled-hook 'my-update-cursor)
;; (add-hook 'god-mode-disabled-hook 'my-update-cursor)

;; eshell
;; (add-to-list 'god-exempt-major-modes 'eshell-mode)
(setq eshell-cmpl-cycle-completions nil)

;; erc
(setq erc-track-enable-keybindings nil)
(add-hook 'erc-insert-post-hook 'erc-save-buffer-in-logs)
(setq erc-save-buffer-on-part t)

;; overwrite-mode
(fmakunbound 'overwrite-mode)

;; scroll
(setq scroll-preserve-screen-position t)

;; git-gutter
;;(global-git-gutter-mode +1)

;; projectile-mode
(require 'projectile)
(projectile-mode +1)
;; (defun projectile-symbol-at-point () "") ;; turn off this anti-feature.
;; (setq projectile-find-dir-includes-top-level t)
;; (setq projectile-switch-project-action (lambda () (dired (projectile-project-root))))

;; turn off bell
(setq visible-bell nil)
(setq ring-bell-function 'ignore)

;; save-place
(require 'saveplace)
(setq-default save-place t)

;; org-mode
;; (require 'org-bullets)
;; (setq org-log-done 'time)
;; (setq org-directory "~/org/")
;; (setq org-agenda-files '("~/org/planner.org"))
;; (setq org-default-notes-file "~/org/refile.org")
;;(setq initial-buffer-choice "~/org/notes.org")
;; (setq org-todo-keywords '("TODO(t)" "NEXT(n)" "SOMEDAY(s)" "WAITING(w)" "DONE(d)"))
;; (setq org-todo-keyword-faces
;;       '(("TODO" :foreground "red" :weight bold)
;;         ("NEXT" :foreground "blue" :weight bold)
;;         ("DONE" :foreground "forest green" :weight bold)
;;         ("WAITING" :foreground "orange" :weight bold)
;;         ("SOMEDAY" :foreground "magenta" :weight bold)))
;; (setq org-refile-targets '((org-agenda-files . (:maxlevel . 3))
;;                            ("~/org/notes.org" . (:maxlevel . 3))))

;; tasklist
;; (require 'tasklist nil t) ;; no error
;; (setq tasklist-directory-name (expand-file-name "tasks" org-directory))
;; (setq tasklist-auto-insert"* tasks
;; ** do
;; ** small
;; ** sessions")

;; magit
(setq magit-last-seen-setup-instructions "1.4.0")

;; show-paren-mode
(setq show-paren-delay 0)
(show-paren-mode 1)

;; uniquify
;; (require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

;; set electric-indent-mode in <= emacs 24.3
; (electric-indent-mode 1)

;; ctags
(require 'ctags)
(setq tags-revert-without-query t)

;; iedit
(require 'iedit)
(require 'wgrep)

;; misc config
(fmakunbound 'suspend-frame)
(defalias 'yes-or-no-p 'y-or-n-p)
(setq apropos-do-all t
      sentence-end-double-space nil
      ;; scroll
      scroll-margin 4
      scroll-conservatively 1

      create-lockfiles nil

      mouse-yank-at-point t
      ;; saving
      auto-save-default nil
      save-place-file (concat user-emacs-directory "places")
      backup-directory-alist `(("." . ,(concat user-emacs-directory
					       "backups"))))

;; js-mode
(setq js-indent-level 4)

;; ruby-mode
(eval-after-load 'company
  '(push 'company-robe company-backends))
;; (when (require 'smartparens nil 'noerror)
;;   (require 'smartparens-ruby))
;; (add-hook 'ruby-mode-hook #'smartparens-mode)
(eval-after-load "ruby-mode"
  '(progn
     (defun ruby-imenu-create-index-in-block (prefix beg end)
       "Create an imenu index of methods inside a block."
       (let ((index-alist '()) (case-fold-search nil)
             name next pos decl sing)
         (goto-char beg)
         (while (re-search-forward "^\\s *\\(\\(class\\s +\\|\\(class\\s *<<\\s *\\)\\|module\\s +\\)\\([^\(<\n ]+\\)\\|\\(def\\|alias\\|command\\)\\s +\\([^\(\n ]+\\)\\)" end t)
           (setq sing (match-beginning 3))
           (setq decl (match-string 5))
           (setq next (match-end 0))
           (setq name (or (match-string 4) (match-string 6)))
           (setq pos (match-beginning 0))
           (cond
            ((string= "command" decl)
             (setq name (concat decl name))
             (if prefix (setq name (concat prefix name)))
             (push (cons name pos) index-alist))
            ((string= "alias" decl)
             (if prefix (setq name (concat prefix name)))
             (push (cons name pos) index-alist))
            ((string= "def" decl)
             (if prefix
                 (setq name
                       (cond
                        ((string-match "^self\." name)
                         (concat (substring prefix 0 -1) (substring name 4)))
                        (t (concat prefix name)))))
             (push (cons name pos) index-alist)
             (ruby-accurate-end-of-block end))
            (t
             (if (string= "self" name)
                 (if prefix (setq name (substring prefix 0 -1)))
               (if prefix (setq name (concat (substring prefix 0 -1) "::" name)))
               (push (cons name pos) index-alist))
             (ruby-accurate-end-of-block end)
             (setq beg (point))
             (setq index-alist
                   (nconc (ruby-imenu-create-index-in-block
                           (concat name (if sing "." "#"))
                           next beg) index-alist))
             (goto-char beg))))
         index-alist))))

;; Set up hooks.

(defun my-prog-mode-hook ()
  (setq-default indent-tabs-mode nil)
  ;(sourcegraph-mode 1)
  (local-set-key (kbd "C-a") 'back-to-indentation)
  (local-set-key (kbd "M-m") 'move-beginning-of-line)
  (setq show-trailing-whitespace t))

(defun my-c-mode-hook ()
  (c-set-style "linux")
  (setq-default c-basic-offset 2))

(defun my-c++-mode-hook ()
  (c-set-style "linux")
  (setq c-basic-offset 4))

(defun my-java-mode-hook ()
  (c-set-style "java")
  (setq-default c-basic-offset 4))

(defun my-org-mode-hook ()
  ;;(org-indent-mode 1)
  (org-bullets-mode 1)
  )

(defun my-python-mode-hook ()
  (local-set-key (kbd "<RET>") 'newline-and-indent)
  (local-set-key (kbd "C-j") 'newline))

(defun my-scheme-mode-hook ()
  ;(enable-paredit-mode))
  )

(defun my-emacs-lisp-mode-hook ()
  ;(enable-paredit-mode))
  )

;; (defun my-go-mode-hook ()
;;   (local-set-key (kbd "M-.") 'godef-jump)
;;   ;;(auto-complete-mode 1))
;;   (set (make-local-variable 'company-backends) '(company-go))
;;   (company-mode 1)
;;   )

(defun my-ruby-mode-hook ()
  (set (make-local-variable 'company-backends) '(company-robe))
  (robe-mode 1)
  (company-mode 1)
  )

(defun my-php-mode-hook ()
  (setq c-basic-offset 4)
  (php-enable-pear-coding-style))

(defun my-markdown-mode-hook ()
       (auto-fill-mode t)
       (set-fill-column 120))

(defun my-sh-mode-hook ()
  (set-fill-column 120))

(add-hook 'prog-mode-hook 'my-prog-mode-hook)
(add-hook 'c-mode-hook 'my-c-mode-hook)
(add-hook 'c++-mode-hook 'my-c++-mode-hook)
(add-hook 'java-mode-hook 'my-java-mode-hook)
(add-hook 'org-mode-hook 'my-org-mode-hook)
(add-hook 'python-mode-hook 'my-python-mode-hook)
(add-hook 'scheme-mode-hook 'my-scheme-mode-hook)
(add-hook 'emacs-lisp-mode-hook 'my-emacs-lisp-mode-hook)
;; (add-hook 'go-mode-hook 'my-go-mode-hook)
;; (add-hook 'go-mode-hook 'go-eldoc-setup)
(add-hook 'javascript-mode-hook 'my-javascript-mode-hook)
(add-hook 'text-mode-hook 'visual-line-mode)
(add-hook 'php-mode-hook 'my-php-mode-hook)
(add-hook 'ruby-mode-hook 'my-ruby-mode-hook)
(add-hook 'web-mode-hook 'my-web-mode-hook)
(add-hook 'markdown-mode-hook 'my-markdown-mode-hook)
(add-hook 'sh-mode-hook 'my-sh-mode-hook)
(provide 'i-mode-config)
;;; i-mode-config.el ends here
