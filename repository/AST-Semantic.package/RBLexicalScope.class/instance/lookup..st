querying
lookup: aStringOrSymbol
  "Lookup the variable aString in the receiving scope, throw an error if not found."

  | aString |
  aString := aStringOrSymbol asString.
  ^ self
    lookup: aString
    ifAbsent: [ self error: 'No binding for ' , aString printString , ' found.' ]