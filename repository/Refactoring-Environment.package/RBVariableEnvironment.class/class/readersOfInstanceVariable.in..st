instance creation
readersOfInstanceVariable: aString in: aClass 
	^ self 
		on: RBBrowserEnvironment new
		readersOfInstanceVariable: aString
		in: aClass