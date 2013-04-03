private-scanning
scanPathName
  [ 
  (characterType = #'alphabetic' or: [ characterType = #'digit' ])
    or: [ 
      ((currentCharacter = $. or: [ currentCharacter = $| ])
        and: [ 'abcdefghijklmnopqrstuvwxyz' includes: stream peek ])
        or: [ 
          (currentCharacter = $. and: [ stream peek = $* ])
            or: [ currentCharacter = $* and: [ stream peek = $. ] ] ] ] ]
    whileTrue: [ 
      buffer nextPut: currentCharacter.
      self step ]