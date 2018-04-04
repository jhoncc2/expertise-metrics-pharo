as yet unclassified
processMethod: method

	| author date coll cls mth key |
	method stamp ifNotEmpty: [
		author := (method stamp splitOn: ' ') first.
		self ifEligible: author do: [
			date := ((method stamp splitOn: ' ') last: 2) first.
			cls := method behaviorName.
			mth := method methodSelector.
			key := cls -> mth.
			coll := methods at: key ifAbsentPut: OrderedCollection new.
			coll add: date -> author.
			coll := classes at: cls ifAbsentPut: OrderedCollection new.
			coll add: date -> author.
			 ] ]