as yet unclassified
expertiseForDate: date
	| d days |
	date first isDigit ifFalse: [ ^0 ].
	d := Date fromString: date.
	days := Date today - d.
	^ 1 / days days ln