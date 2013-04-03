running
checkMethod: aContext
	(self isSeasideClass: aContext selectedClass) ifFalse: [
		result 
			addClass: aContext selectedClass
			selector: aContext ]