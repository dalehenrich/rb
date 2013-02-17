private
primitiveExecute
	self changeClass 
		classComment: comment
		stamp: RBPlatform current changeStamp.
	comment isEmptyOrNil
		ifTrue: [ self changeClass organization classComment: nil ].
	SystemChangeNotifier uniqueInstance 
		classCommented: self changeClass