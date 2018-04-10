as yet unclassified
processCompiledMethod2: method

	| author date coll cls mth key |
	
	author := method author.
	self ifEligible: author do: [
		date := ''.
		date := method timeStamp ifNotEmpty: [ :ts | ((ts splitOn: ' ') last: 2) first. ].

		cls := method methodClass name.
		mth := method selector.
		key := cls -> mth.
		coll := methods at: key ifAbsentPut: OrderedCollection new.
		coll add: author -> date.
		coll := classes at: cls ifAbsentPut: OrderedCollection new.
		coll add: author -> date.
	]