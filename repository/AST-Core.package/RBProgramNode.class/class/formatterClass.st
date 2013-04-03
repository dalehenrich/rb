accessing
formatterClass
  ^ FormatterClass isNil
    ifTrue: [ RBConfigurableFormatter ]
    ifFalse: [ ^ Smalltalk classNamed: FormatterClass name ]