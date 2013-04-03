instance creation
on: anEnvironment writersOfInstanceVariable: aString in: aClass
  | newEnv aSymbol |
  newEnv := (self onEnvironment: anEnvironment)
    label: 'Writers of ''' , aString , ''' in ' , aClass name;
    yourself.
  aSymbol := aString asSymbol.
  (aClass whichClassDefinesInstVar: aSymbol)
    withAllSubclassesDo: [ :cls | 
      (cls whichSelectorsAssign: aSymbol) isEmpty
        ifFalse: [ newEnv addClass: cls instanceVariableWriter: aString ] ].
  ^ newEnv