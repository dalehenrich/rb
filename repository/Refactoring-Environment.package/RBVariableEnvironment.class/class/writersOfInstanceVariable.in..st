instance creation
writersOfInstanceVariable: aString in: aClass 
	^ self 
		on: RBBrowserEnvironment new
		writersOfInstanceVariable: aString
		in: aClass