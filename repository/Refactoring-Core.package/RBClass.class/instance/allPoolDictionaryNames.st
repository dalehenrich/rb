accessing
allPoolDictionaryNames
	| sprClass |
	sprClass := self superclass.
	^sprClass isNil 
		ifTrue: [self poolDictionaryNames]
		ifFalse: [sprClass allPoolDictionaryNames , self poolDictionaryNames]