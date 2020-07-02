accessing
allSubclasses
  | allSubclasses index nextSubclasses |
  index := 1.
  allSubclasses := self subclasses asOrderedCollection.
  [ index <= allSubclasses size ]
    whileTrue: [ 
      nextSubclasses := (allSubclasses at: index) subclasses.
      allSubclasses addAll: nextSubclasses.
      index := index + 1 ].
  ^ allSubclasses