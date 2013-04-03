class initialization
initializeUnderscore
  self classificationTable
    at: $_ asInteger
    put:
      ((Scanner isLiteralSymbol: '_')
        ifTrue: [ #'alphabetic' ]
        ifFalse: [ #'special' ])