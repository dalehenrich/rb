transforming
poolVariableNamesIn: poolName 
	^(Smalltalk globals at: poolName ifAbsent: [Dictionary new]) keys 
		collect: [:name | name asString]