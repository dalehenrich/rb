testing
testIndexingSystem
  #(#'IXCompoundQueryPredicateTests' #'IXGsClassicQueryBlockOptimizerTests' #'IXQueryBlockPredicateTests' #'IXQueryExpressionPrintStringTests' #'IXQueryExpressionTests' #'IXQueryPredicateTests')
    do: [ :each | 
      Smalltalk
        at: each
        ifPresent: [ :class | 
          class ifNotNilself
            formatClass: class;
            formatClass: class class ] ]