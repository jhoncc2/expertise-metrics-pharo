as yet unclassified
processCompiledMethod: method

	| author date coll cls mth key |
	method timeStamp ifNotEmpty: [:ts |
		author := method author.
		self ifEligible: author do: [
			date := ((ts splitOn: ' ') last: 2) first.
			cls := method className asSymbol.
			mth := method selector.
			key := cls -> mth.
			coll := methods at: key ifAbsentPut: OrderedCollection new.
			coll add: date -> author.
			coll := classes at: cls ifAbsentPut: OrderedCollection new.
			coll add: date -> author.
			 ] ]