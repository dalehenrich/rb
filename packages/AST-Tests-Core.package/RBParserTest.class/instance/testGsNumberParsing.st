tests
testGsNumberParsing
  | numbers node |
  numbers := #(#('16#11' 16#11)).
  numbers
    do: [ :spec | 
      node := RBParser parseExpression: spec first.
      self assert: node token source = spec first.
      self assert: node value = spec second ]