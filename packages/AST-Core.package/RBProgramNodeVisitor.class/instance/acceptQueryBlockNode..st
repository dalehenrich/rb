visitor-double dispatching
acceptQueryBlockNode: aBlockNode
  self visitArguments: aBlockNode arguments.
  self visitNode: aBlockNode body