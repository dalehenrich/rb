accessing
rootsOfTheWorld
  "return all classes that have a nil superclass"

  ^ (Smalltalk allClasses select: [ :each | each superclass isNil ])
    asOrderedCollection