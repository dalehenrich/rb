instance creation
isSubclass: theSubclass of: theSuperClass
	^self new
		type: (Array with: #subclass with: theSuperClass with: theSubclass)
		block: [theSubclass includesClass: theSuperClass]
		errorString: theSubclass printString , ' is <1?:not >a subclass of ' , theSuperClass printString