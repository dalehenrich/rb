instance creation
on: anEnvironment referencesToInstanceVariable: aString in: aClass
  | newEnv aSymbol |
  newEnv := (self onEnvironment: anEnvironment)
    label: 'References to ''' , aString , ''' in ' , aClass name;
    yourself.
  aSymbol := aString asSymbol.
  (aClass whichClassDefinesInstVar: aSymbol)
    withAllSubclassesDo: [ :cls | 
      ((cls whichSelectorsReallyRead: aSymbol) isEmpty not
        or: [ (cls whichSelectorsAssign: aSymbol) isEmpty not ])
        ifTrue: [ newEnv addClass: cls instanceVariable: aString ] ].
  ^ newEnv