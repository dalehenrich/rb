*refactoring-core-fixes
thoroughWhichSelectorsReferTo: literal special: specialFlag byte: specialByte
  "Answer a set of selectors whose methods access the argument as a 
	literal. Dives into the compact literal notation, making it slow but 
	thorough "

  ^ ((self methodsReferingToLiteral: literal) collect: [ :meth | meth selector ])
    asIdentitySet