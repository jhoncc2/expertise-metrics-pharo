tests
testPrintOn
	| expertise |
	package := self newInstanceToBeTested.
	expertise := ExpExpert new.
	expertise
		developer: 'Alice';
		coeficient: 42.234434323.
	package 
		expertise: (Array with: expertise);
		package: 'Package-One'.
	self assert: package printString equals: 'Package: Package-One with 1 expert'.