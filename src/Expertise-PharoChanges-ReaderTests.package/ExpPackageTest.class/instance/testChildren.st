tests-accessing
testChildren
	| expertise |
	package := self newInstanceToBeTested.
	expertise := Array with: ExpExpert new.
	package expertise: expertise.
	self assert: package children equals: expertise