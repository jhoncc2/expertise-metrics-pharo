parsing
parseExpertiseOn: content
	^ (NeoJSONReader on: content readStream)
		mapInstVarsFor: ExpExpert;
		for: #CollectionOfExperts
			customDo: [ :mapping | mapping listOfType: Array andElementSchema: ExpExpert ];
		for: ExpPackage
			do: [ :mapping | 
			(mapping mapInstVar: #expertise) valueSchema: #CollectionOfExperts.
			mapping mapInstVar: #package ];
		for: ExpPackages
			customDo:
				[ :mapping | mapping listOfType: ExpPackages andElementSchema: ExpPackage ];
		nextAs: ExpPackages