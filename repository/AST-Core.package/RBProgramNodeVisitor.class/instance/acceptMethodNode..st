visitor-double dispatching
acceptMethodNode: aMethodNode 
	self visitArguments: aMethodNode arguments.
	aMethodNode pragmas
		do: [ :each | self visitNode: each ].
	self visitNode: aMethodNode body