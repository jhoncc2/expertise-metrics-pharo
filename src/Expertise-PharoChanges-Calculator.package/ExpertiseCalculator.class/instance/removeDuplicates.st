removing
removeDuplicates

	methods := methods collect: [ :changes | changes asSet asArray].
	classes := classes collect: [ :changes | changes asSet asArray].
	