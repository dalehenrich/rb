visitor-dispatching
acceptMethodNode: aNode 
	self scope: aNode with: RBMethodScope during: [ super acceptMethodNode: aNode  ]