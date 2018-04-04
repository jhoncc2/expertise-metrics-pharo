as yet unclassified
unifyNames
	| authors names matches|
	authors := Bag new.
	methods do: [ :changes |
		changes do: [ :c | | author |
			author := c value. 
			authors add: author
			]].
	names := authors asSet.
	matches := Dictionary new.
	names copy do: [ :name | | closeNames rightName |
		((names includes: name) and: [name size > 4]) ifTrue: [ 
			closeNames := (name correctAgainst: names) select: [:e | ((name alike: e) / (name size + e size)) > 0.4].
			(closeNames size > 1) ifTrue: [ 
				rightName := closeNames detectMax: [ :n | authors occurrencesOf: n ].
				closeNames remove: rightName.
				closeNames do: [ :n  |
					matches at: n put: rightName.
				names remove: n].
			]]].
	matches inspect.
	self correctNamesWith: matches.
	