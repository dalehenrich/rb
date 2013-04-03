testing
testIndexingSystem
  #(#'IXCompoundQueryPredicateTests' #'IXGsClassicQueryBlockOptimizerTests' #'IXQueryBlockPredicateTests' #'IXQueryExpressionPrintStringTests' #'IXQueryExpressionTests' #'IXQueryPredicateTests')
    do: [ :each | 
      | class |
      class := Smalltalk globals classNamed: each.
      self
        formatClass: class;
        formatClass: class class ]