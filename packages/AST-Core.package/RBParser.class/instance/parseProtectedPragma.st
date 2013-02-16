private-parsing
parseProtectedPragma
  "encoutered 'protected' as first token in pragma"

  self step.
  currentToken isKeyword
    ifFalse: [ ^ self pragmaNodeClass selectorParts: (Array with: 'protected') arguments: #() ].
  ^ self parseKeywordPragma
    isProtected: true;
    yourself