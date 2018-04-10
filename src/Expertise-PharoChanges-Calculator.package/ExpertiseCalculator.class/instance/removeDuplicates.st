removing
removeDuplicates
	methods := methods collect: [ :changes | changes asSet asOrderedCollection].
	classes := classes collect: [ :changes | changes asSet asOrderedCollection].
	