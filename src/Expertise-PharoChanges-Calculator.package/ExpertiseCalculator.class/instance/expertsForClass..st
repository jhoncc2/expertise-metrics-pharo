as yet unclassified
expertsForClass: c
	| experts |
	experts := classes at: c asSymbol.
	^ self expertiseForItems: experts