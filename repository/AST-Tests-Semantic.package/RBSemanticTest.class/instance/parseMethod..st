utilities
parseMethod: aString
	^ (RBParser parseMethod: aString)
		annotateInClass: self class;
		yourself