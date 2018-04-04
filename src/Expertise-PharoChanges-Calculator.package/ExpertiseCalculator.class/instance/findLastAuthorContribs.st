as yet unclassified
findLastAuthorContribs
	| origin |
	lastcontrib := Dictionary new.
	origin := Date today - 100 years.
	methods do: [ :changes |
		changes do: [ :c | | date author ct contrib count|
			c key first isDigit ifTrue: [  
			date := Date fromString: c key.
			author := c value.
			ct := lastcontrib at: author ifAbsentPut: [ origin -> 0].
			contrib := ct key.
			count := ct value.
			(contrib < date) ifTrue: [ lastcontrib at: author put: date -> (count + 1)]
									ifFalse: [lastcontrib at: author put: contrib -> (count + 1)]
		
		 ]]]