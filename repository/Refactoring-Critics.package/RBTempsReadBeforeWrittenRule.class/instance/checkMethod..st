running
checkMethod: aContext 
	(RBReadBeforeWrittenTester variablesReadBeforeWrittenIn: aContext parseTree) do: 
		[ :each | 
		result 
			addClass: aContext selectedClass
			selector: aContext selector.
		result addSearchString: each ]