replacing
replaceWith: aNode 
	parent isNil ifTrue: [self error: 'This node doesn''t have a parent'].
	self replaceMethodSource: aNode.
	parent replaceNode: self withNode: aNode