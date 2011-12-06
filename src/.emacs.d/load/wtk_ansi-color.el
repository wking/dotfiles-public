; event_jr
; http://unix.stackexchange.com/questions/19494/how-to-colorize-text-in-emacs

(defun ansi-color-apply-on-region-int (beg end)
	"apply ANSI colors to the selected region (interactive version)"
	(interactive "r")
	(ansi-color-apply-on-region beg end))

(define-derived-mode fundamental-ansi-mode fundamental-mode "fundamental ansi"
	"Fundamental mode that understands ansi colors."
	(require 'ansi-color)
	(ansi-color-apply-on-region (point-min) (point-max)))

; associate fundamental-ansi-mode with *.col files
(setq auto-mode-alist
	(cons '("\\.col\\'" . fundamental-ansi-mode) auto-mode-alist))
