building
build
	methods := Dictionary new.
	classes := Dictionary new.
	self on: #('Pharo-30840.changes' 'Pharo-40606.changes' 'Pharo-50749.changes' 'Pharo64-60493.changes') in: '/Users/rrobbes/Desktop/pharoChanges/'.
	self addImageInfo.
	self removeDuplicates.
	self unifyNames.
	self findLastAuthorContribs.