;;; private/hlissner/init.el -*- lexical-binding: t; -*-

;; An extra measure to prevent the flash of unstyled mode-line while Emacs is
;; booting up (when Doom is byte-compiled).
(setq-default mode-line-format nil)

;; I've swapped these keys on my keyboard
(setq x-super-keysym 'alt
      x-alt-keysym   'meta)

(setq user-mail-address "ryan@trolocsis.com"
      user-full-name    "Ryan Phillips")

(setq doom-big-font (font-spec :family "Fira Mono" :size 19))

(setq doom-font (font-spec :family "Fira Mono" :size 12)
      doom-variable-pitch-font (font-spec :family "Fira Sans")
      doom-unicode-font (font-spec :family "DejaVu Sans Mono"))

;; Since Fira Mono doesn't have an italicized variant, highlight it instead
(add-hook! doom-post-init
           (set-face-attribute 'italic nil
                               :weight 'ultra-light
                               :foreground "#ffffff"
                               :background (doom-color 'current-line)))

(add-hook! doom-big-font-mode
           (setq +doom-modeline-height (if doom-big-font-mode 37 29)))
