testing
includesSelector: aSelector in: aClass
	^ (environment includesSelector: aSelector in: aClass) and: [ self packages anySatisfy: [ :package | package includesMethod: aSelector ofClass: aClass ] ]