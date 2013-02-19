*refactoring-core-fixes
whichSelectorsReferTo: literal special: specialFlag byte: specialByte
  "Answer a set of selectors whose methods access the argument as a literal."

  | who |
  who := IdentitySet new.
  self
    selectorsAndMethodsDo: [ :sel :method | 
      (method _literalsIncludesSymbol: literal value: nil)
        ifTrue: [ who add: sel ] ].
  ^ who