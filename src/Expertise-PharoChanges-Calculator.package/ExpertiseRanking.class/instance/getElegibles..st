building
getElegibles: elms
	^ elms select: [ :e | 
		| a|
		a := false.
		self ifEligible: e first key do: [ a := true ] .
		a
	]
	
	