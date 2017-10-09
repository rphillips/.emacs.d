;;; private/hlissner/init.el -*- lexical-binding: t; -*-

;; I've swapped these keys on my keyboard
(setq x-super-keysym 'alt
      x-alt-keysym   'meta

      user-mail-address "ryan@trolocsis.com"
      user-full-name    "Ryan Phillips")

;; An extra measure to prevent the flash of unstyled mode-line while Emacs is
;; booting up (when Doom is byte-compiled).
(setq-default mode-line-format nil)

(setq doom-theme 'doom-molokai)

;; host-specific settings
(pcase (system-name)
  ("Ryans-MBP" (set! :font "Source Code Pro" :size 12)
               (set! :variable-font "Source Code Pro" :size 12)
               (set! :unicode-font "Source Code Pro" :size 12)))
