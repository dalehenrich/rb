testing
testIndexingSystem
  #(#'IXCompoundQueryPredicateTests' #'IXGsClassicQueryBlockOptimizerTests' #'IXQueryBlockPredicateTests' #'IXQueryExpressionPrintStringTests' #'IXQueryExpressionTests' #'IXQueryPredicateTests')
    do: [ :each | 
      Smalltalk
        at: each
        ifPresent: [ :class | 
          class
            ifNotNil: [ 
              self
                formatClass: class;
                formatClass: class class ] ] ]