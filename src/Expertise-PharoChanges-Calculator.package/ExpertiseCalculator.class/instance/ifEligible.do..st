as yet unclassified
ifEligible: author do: aBlock
	
	author ifEmpty: [ ^self ].
	author = 'Anonymous' ifTrue: [ ^ self ].
	author = 'TheIntegrator' ifTrue: [ ^ self ].
	aBlock value