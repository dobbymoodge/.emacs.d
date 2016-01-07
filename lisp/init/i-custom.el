;;; i-custom.el --- custom vars -*- lexical-binding: t; -*-

;;; Commentary:

;; Custom stuff gets dumped here.

;;; Code:

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-bullets-bullet-list (quote ("»" "®" "¤" "ø")))
 '(package-selected-packages
   (quote
    (markdown-toc markdown-mode gist org-bullets-mode web-mode smex projectile php-mode org-bullets nm magit helm guide-key go-eldoc flycheck flx-ido exec-path-from-shell elpy deft ctags company-go ag ace-window ace-jump-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "white" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 80 :width normal :foundry "PARA" :family "PT Mono")))))
(put 'upcase-region 'disabled nil)

;; (provide 'i-custom)
;;; i-custom.el ends here
