! Compute Expertise from Pharo Changes and Current Image

Very likely it can be used like this
[[[
ExpertiseChangesCalculator new
	build;
	addImageInfo;
	inspect
]]]

A former code snippet was this: 

[[[
| chunks methods d |
chunks := CodeImporter chunksFromStream: (FileStream readOnlyFileNamed: '/Users/rrobbes/Desktop/pharoChanges/Pharo-30840.changes').
methods := chunks select: [ :e | e isMethodDeclaration ].
d := Dictionary new.
methods do: [ :method | | author date key coll |
	method stamp ifNotEmptyDo: [
		author := (method stamp splitOn: ' ') first.
		author ifNotEmptyDo: [ 
		date := (method stamp splitOn: ' ') second.
		key := method behaviorName -> method methodSelector.
		coll := d at: key ifAbsentPut: (OrderedCollection new).
		coll add: date -> author.]]].
d inspect.
]]]