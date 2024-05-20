;;; init.el --- init                                 -*- lexical-binding: t; -*-

;;; Commentary:

;; My init file.

;;; Code:

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; Set up and load customize file
(setq custom-file "/home/jolamb/.emacs.d/lisp/init/i-custom.el")
(load custom-file)

;; Suppress GUI & startup.
(setq inhibit-startup-screen t)
(if (functionp 'tool-bar-mode)
    (tool-bar-mode -1))
(if (functionp 'menu-bar-mode)
    (menu-bar-mode -1))
(if (functionp 'scroll-bar-mode)
    (scroll-bar-mode -1))
(column-number-mode t)

;; For chromebook
;;(if (equal system-configuration "armv7l-unknown-linux-gnueabihf")
;; (set-face-attribute 'default nil :height 160)

;; Set frame title to something searchable
(setq frame-title-format
  '("emacs: "(:eval (if (buffer-file-name)
                (abbreviate-file-name (buffer-file-name))
                  "%b"))))

;; Frrom githujb.com/lewang/flx
(setq gc-cons-threshold 20000000)

;; Add Lisp dir to loadpath.
(defvar my-lisp-dir (expand-file-name "lisp" user-emacs-directory)
  "The directory with all of my custom Lisp files.")

(add-to-list 'load-path my-lisp-dir)
(let ((default-directory my-lisp-dir))
  (normal-top-level-add-subdirs-to-load-path))

;; Call my Emacs init functions. The "i" prefix means both init and
;; "I" in the Rastafari sense.
;; (require 'i-package-setup)
(require 'i-utils)
(require 'i-mode-config)
(require 'i-keys)
;;(require 'i-custom)

;;; init.el ends here
