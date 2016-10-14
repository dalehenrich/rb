*Refactoring-Core-Model
subclasses
  "Modified to answer metaclasses rather than classes. RJS 2016-10-13"

  ^ self theNonMetaClass subclasses collect: [ :aSubclass | aSubclass class ]