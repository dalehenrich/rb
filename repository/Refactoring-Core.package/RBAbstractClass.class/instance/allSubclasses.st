accessing
allSubclasses
  | allSubclasses index nextSubclasses |
  index := 1.
  allSubclasses := self subclasses asOrderedCollection.
  [ index <= allSubclasses size ]
    whileTrue: [ 
      nextSubclasses := (allSubclasses at: index) subclasses.
      nextSubclasses := nextSubclasses reject: [ :each | each isMeta ].	"This is stupid, but apparently necessary."
      allSubclasses addAll: nextSubclasses.
      index := index + 1 ].
  ^ allSubclasses