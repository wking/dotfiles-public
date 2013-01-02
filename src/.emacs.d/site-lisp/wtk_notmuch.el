(require 'notmuch)

(define-key notmuch-search-mode-map "S"
	(lambda ()
		"mark messages in thread as spam"
		(interactive)
		(notmuch-search-tag '("+spam" "-inbox"))))
