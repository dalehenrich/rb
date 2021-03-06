testing
testReadWriter
	| tree binding |
	tree := self parseExpression: '| var | ^ var := 1'.
	binding := tree lexicalScope bindingOf: 'var'.
	self assert: binding node = tree temporaries first.
	self assert: binding accessors size = 1.
	self assert: binding accessors first = tree statements first value variable.
	self assert: binding readers size = 1.
	self assert: binding readers first = tree statements first value variable.
	self assert: binding writers size = 1.
	self assert: binding writers first = tree statements first value variable.