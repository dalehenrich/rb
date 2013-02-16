visitor-double dispatching
acceptPragmaNode: aPragmaNode
  codeStream nextPut: $<.
  aPragmaNode isProtected
    ifTrue: [ codeStream nextPutAll: 'protected ' ].
  aPragmaNode selector isInfix
    ifTrue: [ codeStream nextPut: $  ].
  self formatMessage: aPragmaNode cascade: false.
  codeStream nextPut: $>