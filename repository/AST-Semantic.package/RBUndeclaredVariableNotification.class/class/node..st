signalling
node: aVariableNode
	^ self new
		node: aVariableNode;
		signal: aVariableNode name , ' is undeclared'