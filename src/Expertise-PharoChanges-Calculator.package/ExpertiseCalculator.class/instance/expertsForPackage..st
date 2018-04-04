as yet unclassified
expertsForPackage: p
	| experts |
	
	experts := p methods flatCollect: [ :e |  methods at: e methodClass name -> e selector ifAbsent: [#()]].
	^ self expertiseForItems: experts