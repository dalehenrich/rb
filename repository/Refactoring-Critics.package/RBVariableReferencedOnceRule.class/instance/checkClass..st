running
checkClass: aContext 
	| allSubclasses |
	allSubclasses := aContext selectedClass withAllSubclasses.
	aContext selectedClass instVarNames do: 
		[ :each | 
		| defClass selector |
		(allSubclasses 
			inject: 0
			into: 
				[ :sum :class | 
				| sels |
				sels := class whichSelectorsAccess: each.
				sels size == 1 ifTrue: 
					[ selector := sels asArray first.
					defClass := class ].
				sum + sels size ]) == 1 ifTrue: 
			[ | tree |
			tree := defClass parseTreeFor: selector.
			tree notNil ifTrue: 
				[ (RBReadBeforeWrittenTester 
					isVariable: each
					writtenBeforeReadIn: tree) ifTrue: 
					[ result 
						addClass: defClass
						selector: selector.
					result addSearchString: each ] ] ] ]