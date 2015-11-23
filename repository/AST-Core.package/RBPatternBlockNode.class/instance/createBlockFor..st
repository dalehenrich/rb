matching
createBlockFor: aRBBlockNode
  | source |
  self replacePatternNodesIn: aRBBlockNode.
  source := aRBBlockNode formattedCode.
  ^ (source
    _compileInContext: self
    symbolList: GsSession currentSession symbolList
    oldLitVars: nil
    environmentId: 0) _executeInContext: self