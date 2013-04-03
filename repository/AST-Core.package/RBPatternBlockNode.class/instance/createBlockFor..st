matching
createBlockFor: aRBBlockNode 
	| source |
	self replacePatternNodesIn: aRBBlockNode.
	source := aRBBlockNode formattedCode.
	^source evaluate