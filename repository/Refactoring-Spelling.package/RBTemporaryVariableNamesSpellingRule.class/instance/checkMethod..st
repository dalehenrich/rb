running
checkMethod: aContext
	aContext parseTree allTemporaryVariables do: [ :name | 
		(self checkIdentifier: name) do: [ :each |
			result
				addSearchString: each;
				addClass: aContext selectedClass selector: aContext selector ] ]