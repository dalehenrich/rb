*refactoring-core-fixes
whichSelectorsAssign: aString
  "Answer a Set of selectors whose methods store into the argument, 
	instVarName, as a named instance variable."

  | instVarName |
  instVarName := aString asSymbol.
  ^ self selectors
    select: [ :each | 
      | meth |
      meth := self compiledMethodAt: each.
      meth instVarsWritten includes: instVarName ]