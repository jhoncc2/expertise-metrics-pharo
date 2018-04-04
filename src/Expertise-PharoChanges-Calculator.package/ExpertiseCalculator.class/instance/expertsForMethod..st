as yet unclassified
expertsForMethod: m
	| experts |
	experts := methods at: m methodClass name -> m selector.
	^ self expertiseForItems: experts