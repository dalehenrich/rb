private-scanning
scanIdentifierOrKeyword
  | name |
  self scanName.
  [ 
  currentCharacter = $.
    and: [ 'abcdefghijklmnopqrstuvwxyz' includes: stream peek ] ]
    whileTrue: [ 
      buffer nextPut: currentCharacter.
      self step.
      self scanPathName.
      name := buffer contents.
      ^ RBPathToken value: name start: tokenStart ].
  (currentCharacter = $: and: [ stream peek ~= $= ])
    ifTrue: [ ^ self scanKeyword ].
  name := buffer contents.
  name = '_'
    ifTrue: [ ^ RBShortAssignmentToken start: tokenStart ].
  name = 'true'
    ifTrue: [ ^ RBLiteralToken value: true start: tokenStart stop: self previousStepPosition ].
  name = 'false'
    ifTrue: [ ^ RBLiteralToken value: false start: tokenStart stop: self previousStepPosition ].
  name = 'nil'
    ifTrue: [ ^ RBLiteralToken value: nil start: tokenStart stop: self previousStepPosition ].
  ^ RBIdentifierToken value: name start: tokenStart