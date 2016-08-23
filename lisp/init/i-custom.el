;;; i-custom.el --- custom vars -*- lexical-binding: t; -*-

;;; Commentary:

;; Custom stuff gets dumped here.

;;; Code:

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ac-delay 0.3)
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(ansi-term-color-vector
   [unspecified "#0c0d0e" "#e31a1c" "#31a354" "#dca060" "#3182bd" "#756bb1" "#3182bd" "#b7b8b9"])
 '(custom-enabled-themes (quote (ample)))
 '(custom-safe-themes
   (quote
    ("4f5bb895d88b6fe6a983e63429f154b8d939b4a8c581956493783b2515e22d6d" "101a10b15bbbd0d5a0e56e4773e614962197886780afb2d62523a63a144ad96c" "e254f8e18ba82e55572c5e18f3ac9c2bd6728a7e500f6cc216e0c6f6f8ea7003" "03e3e79fb2b344e41a7df897818b7969ca51a15a67dc0c30ebbdeb9ea2cd4492" "2162da67ce86c514aff010de1b040fb26663ca42afebc2de26515d741121c435" "d5aac94c0051c3acec2b274347b343372b4e64c3e226be7b7c56725ea26b1ba8" "a7b47876e5da7cac6f5e61cca7a040a365ca2c498823654bd4076add8edf34c5" "b6db49cec08652adf1ff2341ce32c7303be313b0de38c621676122f255ee46db" "91fba9a99f7b64390e1f56319c3dbbaed22de1b9676b3c73d935bf62277b799c" "930227e22122d1881db7c2c1ae712dcf715697a1c4d9864f8107a2c3c2da9f8b" "603a9c7f3ca3253cb68584cb26c408afcf4e674d7db86badcfe649dd3c538656" "40bc0ac47a9bd5b8db7304f8ef628d71e2798135935eb450483db0dbbfff8b11" "e033c4abd259afac2475abd9545f2099a567eb0e5ec4d1ed13567a77c1919f8f" "f21caace402180ab3dc5157d2bb843c4daafbe64aadc362c9f4558ac17ce43a2" "a93f214aac52d55f7f53dc95ba2ebd87814dbc812ad0750960ee4229da5c9321" "3fb38c0c32f0b8ea93170be4d33631c607c60c709a546cb6199659e6308aedf7" "db9feb330fd7cb170b01b8c3c6ecdc5179fc321f1a4824da6c53609b033b2810" "8e3f020f1ce69cfa0c1ebee4e198feb28dd7eb31b7d77927e9c790819210c654" default)))
 '(fci-rule-color "#161616")
 '(markdown-command "redcarpet")
 '(org-agenda-files (quote ("~/Org/agenda.org")))
 '(org-bullets-bullet-list (quote ("»" "®" "¤" "ø")))
 '(org-todo-keyword-faces
   (quote
    (("TODO" :foreground "red" :weight bold)
     ("NEXT" :foreground "DeepSkyBlue" :weight bold)
     ("DONE" :foreground "forest green" :weight bold)
     ("WAITING" :foreground "orange" :weight bold)
     ("SOMEDAY" :foreground "magenta" :weight bold))))
 '(package-selected-packages
   (quote
    (ample-theme smartparens ruby-block robe tao-theme helm-projectile wgrep iedit go-autocomplete git-link gotest go-rename git-gutter w3m markdown-toc markdown-mode gist org-bullets-mode web-mode smex projectile php-mode org-bullets nm magit helm guide-key go-eldoc flycheck flx-ido exec-path-from-shell elpy deft ctags company-go ag ace-window ace-jump-mode)))
 '(tab-always-indent (quote complete))
 '(tab-width 4)
 '(vc-annotate-background "#0E0E0E")
 '(vc-annotate-color-map
   (quote
    ((20 . "#616161")
     (40 . "#9D9D9D")
     (60 . "#9D9D9D")
     (80 . "#C2C2C2")
     (100 . "#C2C2C2")
     (120 . "#D9D9D9")
     (140 . "#D9D9D9")
     (160 . "#E8E8E8")
     (180 . "#E8E8E8")
     (200 . "#E8E8E8")
     (220 . "#F0F0F0")
     (240 . "#F0F0F0")
     (260 . "#F0F0F0")
     (280 . "#F6F6F6")
     (300 . "#F6F6F6")
     (320 . "#F6F6F6")
     (340 . "#F9F9F9")
     (360 . "#F9F9F9"))))
 '(vc-annotate-very-old-color "#D9D9D9"))
;; (custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;; '(default ((t (:inherit nil :stipple nil :background "white" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 80 :width normal :foundry "PARA" :family "PT Mono"))))
 ;; '(font-lock-comment-face ((t (:foreground "dim gray")))))
(put 'upcase-region 'disabled nil)

;; (provide 'i-custom)
;;; i-custom.el ends here
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 80 :width normal :foundry "PARA" :family "PT Mono")))))
