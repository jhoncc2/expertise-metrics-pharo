as yet unclassified
expertiseForItems: experts
	| res sum expertises |
	expertises := Dictionary new.
	sum := 0.
	experts
		do: [ :assoc | 
			| date author xp |
			date := assoc key.
			author := assoc value.
			expertises at: author ifAbsentPut: [ 0.0 ].
			xp := self expertiseForDate: date.
			expertises at: author put: (expertises at: author) + xp.
			sum := sum + xp ].
	res := SortedCollection new.
	expertises
		keysAndValuesDo: [ :k :xp | res add: 100 * (xp / sum) -> k ].
	^ res asOrderedCollection reversed