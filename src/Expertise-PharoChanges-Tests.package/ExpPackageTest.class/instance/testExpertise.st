tests-accessing
testExpertise
	| expertise |
	package := self newInstanceToBeTested.
	expertise := Array with: ExpExpert new.
	package expertise: expertise.
	self assert: package expertise equals: expertise.