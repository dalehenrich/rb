running
checkClass: aContext
	aContext selectedClass instVarNames do: [ :name |
		(self checkIdentifier: name) do: [ :each | 
			result
				addSearchString: each;
				addClass: aContext selectedClass ] ]