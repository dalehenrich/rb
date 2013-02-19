*refactoring-core-fixes
whichClassDefinesInstVar: aString
  ^ self
    whichSuperclassSatisfies: [ :aClass | aClass instVarNames includes: aString ]