running
checkMethod: aContext 
	aContext compiledMethod timeStamp isEmpty ifTrue: 
		[ result 
			addClass: aContext selectedClass
			selector: aContext selector ]