instance creation
isImmediateSubclass: theSubclass of: theSuperClass
	^self new
		type: (Array with: #immediateSubclass with: theSuperClass with: theSubclass)
		block: [theSubclass superclass = theSuperClass]
		errorString: theSubclass printString , ' is <1?:not >an immediate subclass of ' , theSuperClass printString