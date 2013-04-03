accessing
initializeParserWith: aString 
	source := aString.
	self scanner: (self scannerClass on: aString readStream
				errorBlock: self errorBlock)