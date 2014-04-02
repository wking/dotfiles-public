(require 'notmuch)

(define-key notmuch-search-mode-map "S"
	(lambda ()
		"mark messages in thread as spam"
		(interactive)
		(notmuch-search-tag '("+spam" "-inbox"))))

(setq notmuch-saved-searches
	'(
		("inbox" . "tag:inbox")
		("unread" . "tag:unread")
		("mentions" . "tag:inbox AND tag:mention")
		)
	)
