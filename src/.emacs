;;;; Trevor's sysadmin .emacs file
; started Sept 13, 2006
; The goal is to set up emacs for personal usage.
; See .emacs-admin for a more general setup

; Lisp comments begin with a ";"

; Emacs Load Path
(add-to-list 'load-path "~/.emacs.d/site-lisp/")

; Load useful customizations
(load "wtk_common")
(load "wtk_centralized_backups")
(load "wtk_utf-8")
(load "wtk_layout")
(load "wtk_linux")
(load "wtk_aspell")
(load "wtk_epa")
(load "wtk_org")
(load "wtk_no-vc")
(load "wtk_ansi-color")

(require 'cython-mode)

(autoload 'notmuch "wtk_notmuch" "notmuch mail" t)

; Play GNU Go in an emacs buffer
;(require 'gnugo)

; Load querty, for switching keyboard mappings.
;(load "querty")
