*ast-semantic-actions
annotateInClass: aBehavior
	self annotateInScope: (RBVariableScope 
		owner: (RBLiteralScope 
			owner: RBRootScope new 
			class: aBehavior)
		class: aBehavior)