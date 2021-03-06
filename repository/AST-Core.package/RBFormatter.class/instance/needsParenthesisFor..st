private
needsParenthesisFor: aNode
  | parent grandparent |
  aNode isValue
    ifFalse: [ ^ false ].
  parent := aNode parent ifNil: [ ^ false ].
  (aNode isMessage and: [ parent isMessage and: [ parent receiver == aNode ] ])
    ifTrue: [ 
      grandparent := parent parent.
      (grandparent notNil and: [ grandparent isCascade ])
        ifTrue: [ ^ true ] ].
  inQueryBlock
    ifTrue: [ 
      aNode isLiteralNode
        ifTrue: [ 
          (parent isMessage
            and: [ parent receiver == aNode and: [ aNode parent selector == #'&' ] ])
            ifTrue: [ ^ true ] ].
      aNode isVariable
        ifTrue: [ 
          (aNode token isPath
            and: [ 
              parent isMessage
                and: [ parent receiver == aNode and: [ aNode parent selector == #'&' ] ] ])
            ifTrue: [ ^ true ] ] ].
  aNode precedence < parent precedence
    ifTrue: [ ^ false ].
  (aNode isAssignment and: [ parent isAssignment ])
    ifTrue: [ ^ false ].
  (aNode isAssignment and: [ aNode isCascade ])
    ifTrue: [ ^ true ].
  aNode precedence = 0
    ifTrue: [ ^ false ].
  aNode isMessage
    ifFalse: [ ^ true ].
  aNode precedence = parent precedence
    ifFalse: [ ^ true ].
  aNode isUnary
    ifTrue: [ ^ false ].
  aNode isKeyword
    ifTrue: [ ^ true ].
  parent receiver == aNode
    ifFalse: [ ^ true ].
  inQueryBlock
    ifTrue: [ ^ aNode receiver isMessage not and: [ aNode selector ~~ #'&' ] ].
  ^ self precedenceOf: parent selector greaterThan: aNode selector