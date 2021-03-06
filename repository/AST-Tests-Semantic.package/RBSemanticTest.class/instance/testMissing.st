testing
testMissing
	| tree |
	tree := self parseExpression: 'a'.

	self 
		should: [ RBVariableNode new lexicalScope ]
		raise: RBSemanticAnnotationMissing.
	self
		shouldnt: [ tree lexicalScope ]
		raise: RBSemanticAnnotationMissing.
		
	self
		should: [ RBVariableNode new variableBinding ]
		raise: RBSemanticAnnotationMissing.
	self
		shouldnt: [ tree variableBinding ]
		raise: RBSemanticAnnotationMissing.
		
	self deny: RBVariableNode new hasVariableBinding.
	self assert: tree hasVariableBinding