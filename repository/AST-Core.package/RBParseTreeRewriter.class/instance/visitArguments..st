visiting
visitArguments: aNodeCollection 
	^aNodeCollection collect: [:each | self visitArgument: each]