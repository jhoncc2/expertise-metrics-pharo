tests-accessing
testNumberOfExperts
	| expertise |
	package := self newInstanceToBeTested.
	expertise := Array with: ExpExpert new.
	package expertise: expertise.
	self assert: package numberOfExperts equals: 1.