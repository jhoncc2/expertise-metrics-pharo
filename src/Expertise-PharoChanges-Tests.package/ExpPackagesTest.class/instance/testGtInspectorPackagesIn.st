tests-gt-inspector-extension
testGtInspectorPackagesIn
	packages := self newInstanceToBeTested.
	packages add: (ExpPackage new).
	packages add: (ExpPackage new).
	window := GTInspector openOn: packages.
	self assert: window notNil.