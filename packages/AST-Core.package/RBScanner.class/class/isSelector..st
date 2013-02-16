testing
isSelector: aSymbol 
	| scanner token |
	scanner := self basicNew.
	scanner on: aSymbol asString readStream.
	scanner step.
	token := scanner scanAnySymbol.
	token isLiteralToken ifFalse: [^false].
	token value isEmpty ifTrue: [^false].
	^scanner atEnd