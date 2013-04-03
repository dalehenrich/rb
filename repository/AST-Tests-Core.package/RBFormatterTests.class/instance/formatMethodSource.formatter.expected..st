private
formatMethodSource: source formatter: aFormatterClass expected: expected
  | tree1 tree2 x |
  tree1 := RBParser parseMethod: source.
  tree2 := RBParser
    parseMethod: (aFormatterClass new format: tree1)
    onError: [ :err :pos | self assert: false ].
  x := tree2 source.
  self assert: x = expected.
  self assert: tree1 = tree2