private-scanning
scanPathName
  [ 
  (characterType = #'alphabetic' or: [ characterType = #'digit' ])
    or: [ 
      currentCharacter = $.
        and: [ 'abcdefghijklmnopqrstuvwxyz' includes: stream peek ] ] ]
    whileTrue: [ 
      buffer nextPut: currentCharacter.
      self step ]