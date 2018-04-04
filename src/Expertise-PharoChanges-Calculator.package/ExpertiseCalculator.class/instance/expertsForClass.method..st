as yet unclassified
expertsForClass: c method: m
	| experts |
	experts := methods at: c asSymbol -> m asSymbol.
	^ self expertiseForItems: experts