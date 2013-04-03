*refactoring-core-fixes
whichSelectorsReallyRead: aString
  "This is a modified version of #whichSelectorsRead: that does exclude the writers."

  | instVarName |
  instVarName := aString asSymbol.
  ^ self selectors
    select: [ :each | 
      | meth |
      meth := self compiledMethodAt: each.
      meth instVarsRead includes: instVarName ]