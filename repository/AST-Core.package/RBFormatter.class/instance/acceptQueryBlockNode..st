visitor-double dispatching
acceptQueryBlockNode: aBlockNode
  [ 
  inQueryBlock := true.
  self
    acceptQueryBlockNode: aBlockNode
    startBlockString: '{'
    endBlockString: '}' ]
    ensure: [ inQueryBlock := false ]