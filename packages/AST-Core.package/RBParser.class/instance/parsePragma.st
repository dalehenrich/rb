private-parsing
parsePragma
  ^ currentToken isIdentifier
    ifTrue: [ 
      currentToken value = 'protected'
        ifTrue: [ self parseProtectedPragma ]
        ifFalse: [ self parseUnaryPragma ] ]
    ifFalse: [ 
      currentToken isKeyword
        ifTrue: [ self parseKeywordPragma ]
        ifFalse: [ self parseBinaryPragma ] ]