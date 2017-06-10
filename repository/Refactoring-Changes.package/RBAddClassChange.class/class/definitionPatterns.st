private
definitionPatterns
  ^ {'`@superclass subclass: `#className instanceVariableNames: `#instanceVariableNames classVariableNames: `#classVarNames  poolDictionaries: `#poolDictionaries category: `#category'.
  '`@superclass subclass: `#className instVarNames: `#instanceVariableNames classVars: `#classVarNames  classInstVars: `#classInstVarNames poolDictionaries: `#poolDictionaries category: `#category'.
  '`@superclass subclass: `#className instVarNames: `#instanceVariableNames classVars: `#classVarNames  classInstVars: `#classInstVarNames poolDictionaries: `#poolDictionaries category: `#category inDictionary: `#inDictionary'.
  '`@superclass subclass: `#className instVarNames: `#instanceVariableNames classVars: `#classVarNames  classInstVars: `#classInstVarNames poolDictionaries: `#poolDictionaries category: `#category inDictionary: `#inDictionary options: `#options'.
  '`@superclass subclass: `#className instVarNames: `#instanceVariableNames classVars: `#classVarNames  classInstVars: `#classInstVarNames poolDictionaries: `#poolDictionaries inDictionary: `#inDictionary'.
  '`@superclass subclass: `#className instVarNames: `#instanceVariableNames classVars: `#classVarNames  classInstVars: `#classInstVarNames poolDictionaries: `#poolDictionaries inDictionary: `#inDictionary category: `#category'.
  '`@superclass subclass: `#className instVarNames: `#instanceVariableNames classVars: `#classVarNames  classInstVars: `#classInstVarNames poolDictionaries: `#poolDictionaries inDictionary: `#inDictionary category: `#category options: `#options'.
  '`@superclass subclass: `#className instVarNames: `#instanceVariableNames classVars: `#classVarNames  classInstVars: `#classInstVarNames poolDictionaries: `#poolDictionaries inDictionary: `#inDictionary newVersionOf: `@oldClass description: `#aDescription options: `#options'.
  '`@superclass subclass: `#className instVarNames: `#instanceVariableNames classVars: `#classVarNames  classInstVars: `#classInstVarNames poolDictionaries: `#poolDictionaries inDictionary: `#inDictionary options: `#options'.
  '`@superclass subclass: `#className instVarNames: `#instanceVariableNames inDictionary: `#inDictionary'.
  '`@superclass subclass: `#className instVarNames: `#instanceVariableNames inDictionary: `#inDictionary options: `#options'.
  '`@superclass transientSubclass: `#className instanceVariableNames: `#instanceVariableNames classVariableNames: `#classVarNames  poolDictionaries: `#poolDictionaries category: `#category'.
  '`@superclass variableByteSubclass: `#className instanceVariableNames: `#instanceVariableNames classVariableNames: `#classVariableNames poolDictionaries: `#poolDictionaries category: `#category'.
  '`@superclass variableSubclass: `#className instanceVariableNames: `#instanceVariableNames classVariableNames: `#classVariableNames poolDictionaries: `#poolDictionaries category: `#category'.
  '`@superclass indexableSubclass: `#className instVarNames: `#instanceVariableNames classVars: `#classVarNames  classInstVars: `#classInstVarNames poolDictionaries: `#poolDictionaries category: `#category'.
  '`@superclass indexableSubclass: `#className instVarNames: `#instanceVariableNames classVars: `#classVarNames  classInstVars: `#classInstVarNames poolDictionaries: `#poolDictionaries category: `#category inDictionary: `#inDictionary options: `#options'.
  '`@superclass indexableSubclass: `#className instVarNames: `#instanceVariableNames classVars: `#classVarNames  classInstVars: `#classInstVarNames poolDictionaries: `#poolDictionaries inDictionary: `#inDictionary'.
  '`@superclass indexableSubclass: `#className instVarNames: `#instanceVariableNames classVars: `#classVarNames  classInstVars: `#classInstVarNames poolDictionaries: `#poolDictionaries inDictionary: `#inDictionary category: `#category'.
  '`@superclass indexableSubclass: `#className instVarNames: `#instanceVariableNames classVars: `#classVarNames  classInstVars: `#classInstVarNames poolDictionaries: `#poolDictionaries inDictionary: `#inDictionary category: `#category options: `#options'.
  '`@superclass indexableSubclass: `#className instVarNames: `#instanceVariableNames classVars: `#classVarNames  classInstVars: `#classInstVarNames poolDictionaries: `#poolDictionaries inDictionary: `#inDictionary newVersionOf: `@oldClass description: `#aDescription options: `#options'.
  '`@superclass indexableSubclass: `#className instVarNames: `#instanceVariableNames classVars: `#classVarNames  classInstVars: `#classInstVarNames poolDictionaries: `#poolDictionaries inDictionary: `#inDictionary options: `#options'.
  '`@superclass byteSubclass: `#className classVars: `#classVarNames  classInstVars: `#classInstVarNames poolDictionaries: `#poolDictionaries category: `#category'.
  '`@superclass byteSubclass: `#className classVars: `#classVarNames  classInstVars: `#classInstVarNames poolDictionaries: `#poolDictionaries category: `#category inDictionary: `#inDictionary options: `#options'.
  '`@superclass byteSubclass: `#className classVars: `#classVarNames  classInstVars: `#classInstVarNames poolDictionaries: `#poolDictionaries inDictionary: `#inDictionary'.
  '`@superclass byteSubclass: `#className classVars: `#classVarNames  classInstVars: `#classInstVarNames poolDictionaries: `#poolDictionaries inDictionary: `#inDictionary category: `#category'.
  '`@superclass byteSubclass: `#className classVars: `#classVarNames  classInstVars: `#classInstVarNames poolDictionaries: `#poolDictionaries inDictionary: `#inDictionary category: `#category options: `#options'.
  '`@superclass byteSubclass: `#className classVars: `#classVarNames  classInstVars: `#classInstVarNames poolDictionaries: `#poolDictionaries inDictionary: `#inDictionary newVersionOf: `@oldClass description: `#aDescription options: `#options'.
  '`@superclass byteSubclass: `#className classVars: `#classVarNames  classInstVars: `#classInstVarNames poolDictionaries: `#poolDictionaries inDictionary: `#inDictionary options: `#options'}
    gather: [ :each | 
      Array
        with: each
        with:
          (each copyReplaceAll: '`@superclass' with: 'ProtoObject')
            , '. `className superclass: `@superclass' ]	"Available, non-deprecated variations"	"Available, non-deprecated variations"