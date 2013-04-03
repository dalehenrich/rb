instance creation
on: anEnvironment readersOfInstanceVariable: aString in: aClass
  | newEnv aSymbol |
  newEnv := (self onEnvironment: anEnvironment)
    label: 'Readers of ''' , aString , ''' in ' , aClass name;
    yourself.
  aSymbol := aString asSymbol.
  (aClass whichClassDefinesInstVar: aSymbol)
    withAllSubclassesDo: [ :cls | 
      (cls whichSelectorsReallyRead: aSymbol) isEmpty
        ifFalse: [ newEnv addClass: cls instanceVariableReader: aString ] ].
  ^ newEnv