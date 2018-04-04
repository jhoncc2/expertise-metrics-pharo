as yet unclassified
correctNamesWith: matches

	methods := methods collect: [ :changes | 
		changes collect: [ :as | | name |
			name := as value.
			name := matches at: name  ifAbsent: [ name ].
			as key -> name.
			 ]].
	classes := classes collect: [ :changes | 
		changes collect: [ :as | | name |
			name := as value.
			name := matches at: name  ifAbsent: [ name ].
			as key -> name.
			 ]]