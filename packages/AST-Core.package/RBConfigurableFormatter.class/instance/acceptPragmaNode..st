visitor-double dispatching
acceptPragmaNode: aPragmaNode
  codeStream nextPut: $<.
  aPragmaNode isProtected
    ifTrue: [ codeStream nextPutAll: 'protected ' ].
  self
    formatSelectorAndArguments: aPragmaNode
    firstSeparator: [ 
      aPragmaNode selector isInfix
        ifTrue: [ self space ] ]
    restSeparator: [ self space ].
  codeStream nextPut: $>