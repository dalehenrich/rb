private
definitionPatterns
  ^ {'`@superclass subclass: `#className instVarNames: `#instanceVariableNames classVars: `#classVarNames classinstVars: `#classInstVarNames poolDictionaries: `#poolDictionaries inDictionary: `#inDictionary category: `#category options: `#options'}
    gather: [ :each | 
      Array
        with: each
        with:
          (each copyReplaceAll: '`@superclass' with: 'ProtoObject')
            , '. `className superclass: `@superclass' ]