tests
testNumberRadixParsing
	2 to: 32 do: [ :radix | 
		| radixString |
		radixString := radix printString, 'r'.
		0 to: 72 do: [ :i | 
			self  assert: (RBParser parseExpression: (radixString, (i radix: radix)))
				value = i ] ]